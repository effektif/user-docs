import java.io.File;
import java.io.IOException;
import java.nio.file.*;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;

import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;

/**
 * Generates screenshots.
 */
public class Screenshots {

  private static final Path DESTINATION = Paths.get("/Users/pedro/Public/Drop Box");
  public static final int WINDOW_WIDTH_PIXELS = 1024;
  public static final int CHROME_HEIGHT_PIXELS = 74;
  public static final int WINDOW_HEIGHT_PIXELS = 768 + CHROME_HEIGHT_PIXELS;

  public static void main(String[] args) {
    WebDriver driver = buildDriver();
    try {
      LoginPage login = new LoginPage(driver);
      login.go();
      screenshot(driver, "login.png");
      Page tasks = login.loginAs("alice@example.org", "x");
      screenshot(driver, "tasks.png");
      ProfilePage page = tasks.openProfile();
      screenshot(driver, "profile.png");
    } finally {
      driver.quit();
    }
  }

  private static WebDriver buildDriver() {
    WebDriver driver = new ChromeDriver();
    driver.manage().window().setSize(new Dimension(WINDOW_WIDTH_PIXELS, WINDOW_HEIGHT_PIXELS));
    return driver;
  }

  private static void screenshot(WebDriver driver, String destination) {
    try {
      File source = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
      Files.copy(source.toPath(), DESTINATION.resolve(destination), REPLACE_EXISTING);
    } catch (IOException e) {
      System.err.println("Failed to copy screenshot to destination: " + e.getMessage());
      e.printStackTrace(System.err);
    }
  }
}
