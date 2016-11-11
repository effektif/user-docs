import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.*;

import static java.util.concurrent.TimeUnit.*;

/**
 * The user profile.
 */
class ProfilePage extends Page {

  ProfilePage(Session session) {
    super(session);
  }

  ProfilePage go() {
    driver.get(APP_URL + "profile");
    waitUntilLoaded();
    return this;
  }

  /**
   * Selects a value from the ‘Language’ select list.
   */
  void setLanguage(String newLanguage) {
    driver.findElement(By.xpath("//*[@class='preferences']//*[@class='select']")).click();
    By langaugeElement = By.xpath(String.format("//*[contains(text(), '%s')]", capitalise(newLanguage)));
    driver.findElement(langaugeElement).click();

    Wait<WebDriver> clickWait = new FluentWait<>(driver).withTimeout(10, SECONDS).pollingEvery(100, MILLISECONDS);
    clickWait.until(ExpectedConditions.invisibilityOfElementLocated(
        langaugeElement));
    clickWait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//*[@class='loading-indicator']")));
  }

  @Override
  public String toString() {
    return "profile";
  }

  private String capitalise(String name) {
    assert name != null && name.length() > 1;
    StringBuilder result = new StringBuilder();
    result.append(name.substring(0, 1).toUpperCase());
    result.append(name.substring(1));
    return result.toString();
  }
}
