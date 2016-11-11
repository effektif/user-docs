import java.io.File;
import java.io.IOException;
import java.nio.file.*;

import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.*;

import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static java.util.concurrent.TimeUnit.*;

/**
 * Represents a page in the application, with support for taking a screenshot.
 * Subclasses define page-specific interaction and navigation.
 */
class Page {

  private static final Path SCREENSHOT_DESTINATION = Paths.get("/Users/pedro/Public/Drop Box");
  static final String APP_URL = "http://localhost:8080/";

  final WebDriver driver;
  private final Wait<WebDriver> loadWait;

  Page(WebDriver driver) {
    assert driver != null;
    System.out.println(toString());
    this.driver = driver;
    loadWait = new FluentWait<>(driver).withTimeout(20, SECONDS).pollingEvery(500, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
  }

  void waitUntilLoaded() {
    loadWait.until(ExpectedConditions.visibilityOfElementLocated(By.className("view")));
  }

  ProfilePage openProfile() {
    Wait<WebDriver> clickWait = new FluentWait<>(driver).withTimeout(2, SECONDS).pollingEvery(50, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
    driver.findElement(By.xpath("//*[contains(text(), 'Alice Allgood')]")).click();
    clickWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(), 'My Profile')]")));
    driver.findElement(By.xpath("//*[contains(text(), 'My Profile')]")).click();
    return new ProfilePage(driver);
  }

  /**
   * Saves a screenshot of the page.
   */
  Page grab() {
    try {
      File source = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
      Files.copy(source.toPath(), SCREENSHOT_DESTINATION.resolve(toString() + ".png"), REPLACE_EXISTING);
    } catch (IOException e) {
      System.err.println("Failed to copy screenshot to destination: " + e.getMessage());
      e.printStackTrace(System.err);
    }
    return this;
  }

  @Override
  public String toString() {
    return getClass().getSimpleName();
  }
}
