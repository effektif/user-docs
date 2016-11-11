import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.*;

import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static java.util.concurrent.TimeUnit.*;

/**
 * Represents a page in the application, with support for taking a screenshot.
 * Subclasses define page-specific interaction and navigation.
 */
abstract class Page {

  static final String APP_URL = "http://localhost:8080/";

  final WebDriver driver;
  protected final Session session;
  private final Wait<WebDriver> loadWait;

  Page(Session session) {
    this.session = session;
    this.driver = session.driver;
    assert driver != null;
    System.out.println(String.format("%s/%s", session.language.getLanguage(), toString()));
    loadWait = new FluentWait<>(driver).withTimeout(10, SECONDS).pollingEvery(100, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
  }

  /**
   * Wait until the current page has finished loading, which may need page-specific overrides.
   */
  void waitUntilLoaded() {
    loadWait.until(ExpectedConditions.visibilityOfElementLocated(By.className("view")));
  }

  /**
   * Select the user menu’s ‘My Profile’ item.
   */
  ProfilePage profile() {
    Wait<WebDriver> clickWait = new FluentWait<>(driver).withTimeout(2, SECONDS).pollingEvery(50, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
    driver.findElement(By.xpath("//*[contains(text(), 'Alice Allgood')]")).click();
    clickWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(), 'My Profile')]")));
    driver.findElement(By.xpath("//*[contains(text(), 'My Profile')]")).click();
    return new ProfilePage(session);
  }

  /**
   * Selects the ‘Tasks’ menu item.
   * TODO Remove the ‘DEVELOPMENT’ badge, which prevents this clicking the Signavio logo.
   */
  TasksPage tasks() {
    driver.findElement(By.xpath(String.format("//*[@href='/%s/tasks']", session.organisation))).click();
    waitUntilLoaded();
    return new TasksPage(session);
  }

  /**
   * Selects the ‘Processes’ menu item.
   */
  ProcessesPage processes() {
    driver.findElement(By.xpath(String.format("//*[@href='/%s/processes']", session.organisation))).click();
    waitUntilLoaded();
    return new ProcessesPage(session);
  }

  /**
   * Saves a screenshot of the page.
   */
  Page grab() {
    try {
      File source = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
      Files.copy(source.toPath(), session.createScreenshotDestination(this), REPLACE_EXISTING);
    } catch (IOException e) {
      System.err.println("Failed to copy screenshot to destination: " + e.getMessage());
      e.printStackTrace(System.err);
    }
    return this;
  }

  /**
   * Returns the page’s short name, for use in file names, for override.
   */
  @Override
  public String toString() {
    return getClass().getSimpleName();
  }
}
