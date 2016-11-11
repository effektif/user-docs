import org.openqa.selenium.By;

/**
 * The log in page, when logged out.
 */
class LoginPage extends Page {

  LoginPage(Session session) {
    super(session);
  }

  LoginPage go() {
    driver.get(APP_URL + "logout");
    waitUntilLoaded();
    return this;
  }

  /**
   * Submits the log in form.
   */
  Page loginAs(String username, String password) {
    driver.findElement(By.id("login-mail")).sendKeys(username);
    driver.findElement(By.id("login-password")).sendKeys(password);
    driver.findElement(By.tagName("button")).submit();
    waitUntilLoaded();
    return new TasksPage(session);
  }

  @Override
  public String toString() {
    return "login";
  }
}
