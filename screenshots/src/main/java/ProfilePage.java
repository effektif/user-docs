import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.*;

import static java.util.concurrent.TimeUnit.*;

class ProfilePage extends Page {

  ProfilePage(WebDriver driver) {
    super(driver);
  }

  void setLanguage(String newLanguage) {
    driver.findElement(By.xpath("//*[@class='preferences']//*[@class='select']")).click();
    driver.findElement(By.xpath(String.format("//*[contains(text(), '%s')]", newLanguage))).click();

    Wait<WebDriver> clickWait = new FluentWait<>(driver).withTimeout(10, SECONDS).pollingEvery(100, MILLISECONDS);
    clickWait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(String.format("//*[contains(text(), '%s')]", newLanguage))));
    clickWait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//*[@class='loading-indicator']")));
  }

  @Override
  public String toString() {
    return "profile";
  }
}
