import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.*;

import static java.util.concurrent.TimeUnit.SECONDS;

class LoginPage {

  private static final String APP_URL = "http://localhost:8080/";

  private final WebDriver driver;
  private final Wait<WebDriver> wait;

  LoginPage(WebDriver driver) {
    this.driver = driver;
    wait = new FluentWait<>(driver).withTimeout(10, SECONDS).pollingEvery(1, SECONDS);
  }

  void go() {
    driver.get(APP_URL + "logout");
    wait.until(driver -> driver.findElement(By.className("view-content")).isDisplayed());
  }

  void loginAs(String username, String password) {
    driver.findElement(By.id("login-mail")).sendKeys(username);
    driver.findElement(By.id("login-password")).sendKeys(password);
    driver.findElement(By.tagName("button")).submit();
    wait.until(driver -> driver.findElement(By.className("view-content")).isDisplayed());
  }
}
