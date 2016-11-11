import org.openqa.selenium.WebDriver;

public class TasksPage extends Page {

  TasksPage(WebDriver driver) {
    super(driver);
  }

  @Override
  public String toString() {
    return "tasks";
  }
}
