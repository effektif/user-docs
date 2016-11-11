import java.io.IOException;
import java.nio.file.*;
import java.util.Locale;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 * A screenshot session, which manages the Selenium driver and other state.
 */
class Session {

  private static final int WINDOW_WIDTH_PIXELS = 1024;
  private static final int CHROME_HEIGHT_PIXELS = 74;
  private static final int WINDOW_HEIGHT_PIXELS = 768 + CHROME_HEIGHT_PIXELS;
  private static final Path OUTPUT = Paths.get("target/images");

  final WebDriver driver;
  final String organisation;

  /**
   * The currently selected language, used for output paths.
   */
  Locale language = Locale.ENGLISH;

  Session(String organisation) {
    this.organisation = organisation;
    driver = new ChromeDriver();
    driver.manage().window().setSize(new Dimension(WINDOW_WIDTH_PIXELS, WINDOW_HEIGHT_PIXELS));
  }

  /**
   * Returns the file path to save a screenshot to, creating parent directories as needed.
   */
  Path createScreenshotDestination(Page page) {
    Path destination = createOutputDirectory();
    return destination.resolve(page.toString() + ".png");
  }

  /**
   * Returns the directory path to save a screenshot to, creating parent directories as needed.
   */
  Path createOutputDirectory() {
    try {
      Path languageDirectory = OUTPUT.resolve(language.getLanguage());
      Files.createDirectories(languageDirectory);
      return languageDirectory;
    } catch (IOException e) {
      System.err.println("Could not create screenshot directory" + ": " + e.getMessage());
      driver.quit();
      return null;
    }
  }

  /**
   * Sets the user interface language via the user-profile, and sets the current language.
   */
  ProfilePage setLanguage(Locale newLanguage) {
    ProfilePage profile = new ProfilePage(this).go();
    profile.setLanguage(newLanguage.getDisplayLanguage(language));
    language = newLanguage;
    return profile;
  }

  /**
   * Ends the session, closing the web browser.
   */
  void quit() {
    driver.quit();
  }
}
