import java.util.Locale;

import static java.util.Locale.*;

/**
 * Generates screenshots. Before running for the first time, run Signavio Workflow’s <code>dev/demo.data.reset.sh</code>
 * script and run the application locally. Before re-running, set the user’s language back to English.
 *
 * TODO Create a separate test user for each language, to avoid the need to change languages.
 */
public class Screenshots {

  private static final String ORGANISATION_KEY = "example";
  private static final Locale SPANISH = Locale.forLanguageTag("es");

  public static void main(String[] args) {
    Session session = new Session(ORGANISATION_KEY);

    LoginPage login = new LoginPage(session).go();
    login.grab();
    Page tasks = login.loginAs("alice@example.org", "x");
    tasks.grab();

    ProfilePage french = session.setLanguage(FRENCH);
    script(french);

    ProfilePage german = session.setLanguage(GERMAN);
    script(german);

    ProfilePage spanish = session.setLanguage(SPANISH);
    script(spanish);

    ProfilePage english = session.setLanguage(ENGLISH);
    session.quit();
  }

  private static void script(Page start) {
    ProcessesPage processes = start.processes();
    processes.grab();
  }
}
