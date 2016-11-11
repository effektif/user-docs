import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 * Generates screenshots.
 */
public class Screenshots {

  public static final int WINDOW_WIDTH_PIXELS = 1024;
  public static final int CHROME_HEIGHT_PIXELS = 74;
  public static final int WINDOW_HEIGHT_PIXELS = 768 + CHROME_HEIGHT_PIXELS;

  public static void main(String[] args) {
    WebDriver driver = buildDriver();
    try {
      LoginPage login = new LoginPage(driver);
      login.go();
      login.grab();
      Page tasks = login.loginAs("alice@example.org", "x");
      tasks.grab();

      ProfilePage profile = tasks.openProfile();
      profile.grab();
      profile.setLanguage("French");
      profile.grab();
    } finally {
      driver.quit();
    }
  }

  private static WebDriver buildDriver() {
    WebDriver driver = new ChromeDriver();
    driver.manage().window().setSize(new Dimension(WINDOW_WIDTH_PIXELS, WINDOW_HEIGHT_PIXELS));
    return driver;
  }
}
