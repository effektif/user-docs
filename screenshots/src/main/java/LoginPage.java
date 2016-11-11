import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

class LoginPage extends Page {

  LoginPage(WebDriver driver) {
    super(driver);
  }

  void go() {
    driver.get(APP_URL + "logout");
    waitUntilLoaded();
  }

  Page loginAs(String username, String password) {
    driver.findElement(By.id("login-mail")).sendKeys(username);
    driver.findElement(By.id("login-password")).sendKeys(password);
    driver.findElement(By.tagName("button")).submit();
    waitUntilLoaded();
    return new TasksPage(driver);
  }

  @Override
  public String toString() {
    return "login";
  }
}
