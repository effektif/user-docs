import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;

import static java.util.concurrent.TimeUnit.MILLISECONDS;
import static java.util.concurrent.TimeUnit.SECONDS;

class Page {

  static final String APP_URL = "http://localhost:8080/";

  final WebDriver driver;
  private final Wait<WebDriver> loadWait;

  Page(WebDriver driver) {
    System.out.println(this.getClass().getSimpleName());
    this.driver = driver;
    loadWait = new FluentWait<>(driver).withTimeout(20, SECONDS).pollingEvery(500, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
  }

  ProfilePage openProfile() {
    Wait<WebDriver> clickWait = new FluentWait<>(driver).withTimeout(2, SECONDS).pollingEvery(50, MILLISECONDS)
        .ignoring(NoSuchElementException.class);
    driver.findElement(By.xpath("//*[contains(text(), 'Alice Allgood')]")).click();
    clickWait.until(driver -> driver.findElement(By.xpath("//*[contains(text(), 'My Profile')]")).isDisplayed());
    driver.findElement(By.xpath("//*[contains(text(), 'My Profile')]")).click();

    waitUntilLoaded();
    return new ProfilePage(driver);
  }

  void waitUntilLoaded() {
    loadWait.until(driver -> driver.findElement(By.className("view")).isDisplayed());
  }
}
