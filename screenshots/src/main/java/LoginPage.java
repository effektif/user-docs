import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.*;

import static java.util.concurrent.TimeUnit.MILLISECONDS;
import static java.util.concurrent.TimeUnit.SECONDS;

class LoginPage extends Page {

  private final Wait<WebDriver> wait;

  LoginPage(WebDriver driver) {
    super(driver);
    wait = new FluentWait<>(driver).withTimeout(10, SECONDS).pollingEvery(500, MILLISECONDS);
  }

  void go() {
    driver.get(APP_URL + "logout");
//    wait.until(driver -> driver.findElement(By.className("view")).isDisplayed());
    waitUntilLoaded();
  }

  Page loginAs(String username, String password) {
    driver.findElement(By.id("login-mail")).sendKeys(username);
    driver.findElement(By.id("login-password")).sendKeys(password);
    driver.findElement(By.tagName("button")).submit();
//    wait.until(driver -> driver.findElement(By.className("view-content")).isDisplayed());
    waitUntilLoaded();
    return new TasksPage(driver);
  }
}
