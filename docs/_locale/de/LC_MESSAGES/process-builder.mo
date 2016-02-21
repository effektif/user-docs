��    g      T      �      �  X   �  �   �  �   �  �   �  Q  �	  �   �
  �   �  Q     �   o     -  �   5       7     =   P     �  }   �  �   $  �   �  �   �  K   �     �     �  7   �  .   1  R   `  V   �  ]   
  �   h  G   0     x  �   �  /   �  &  �     �  3   �  �   *  r   �     M     [  �   {     T  L   a  �   �  �   Q  Z  �  �   F  M   �  �   3     �  Z   �     .     =  4   M     �  G   �     �     �     �  P     ?   a  )   �    �  0   �   K   !  6   X!  [   �!  �   �!  �   �"  @   �#  �   �#  �   d$    �$  �   &  �   �&  s   �'  �   �'  N   �(  �   �(  p   �)     *     *  #   "*  H   F*  	   �*  n   �*     +  o  +  �   �,    -  `   ..  �   �.     /  H   </  �   �/  �   20  �   �0  �   �1    �2  �   �3  �   _4  6   5  8   U5  Y  �5  y   �6    b7  x   |8  !  �8  �   :  �   �:  �   �;  a   �<     W=     X>    a>     r?  =   �?  7   �?     @  �    @  �   �@  l   rA  O  �A  Q   /C     �C     �C  ;   �C  C   �C  i   D  n   �D  x   �D  3  kE  r   �F     G  �   )G  .   H  Y  NH     �I  8   �I  �   �I  �   �J     gK  $   mK  �   �K     \L  _   eL  �   �L  �   eM  r  8N  �   �O  [   FP  �   �P  !   BQ  V   dQ     �Q     �Q  A   �Q     R  B   1R     tR     �R  
   �R  T   �R  A   �R  +   8S  Y  dS  <   �T  d   �T  +   `U  �   �U  �   V    �V  :   �W  �    X  �   �X  6  �Y  �   �Z  �   q[  ~   _\  �   �\  v   �]  �   +^  �   �^     }_  	   �_  )   �_  M   �_  	   `  �   `  	   �`  �  �`  _   ab  .  �b  v   �c  �   gd  !   e  [   ?e  �   �e  �   �f  ;  :g    vh  B  �i  �   �j  �   �k  8   �l  S   �l   A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow. Before you can use a Salesforce trigger, configure :ref:`Salesforce Integration <salesforce-integration>`. A manual trigger is the simplest way to start a process. With a manual trigger, you start processes manually in Effektif, by selecting `Start new case` and then selecting the process to start. A process has variables that store workflow data when the process runs. All the information in forms and information required by the actions will be connected to these variables. Each case stores its own values for each workflow variable. A process in Effektif can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’). The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*. A role is a process-specific name for whoever performs one or more process tasks. You can optionally configure a role with a list of canidates. Roles are equivalent to swimlanes in BPMN. A trigger defines when a process is started. There is no relation between triggers and BPMN start events. See :ref:`Start event <start-event>`. A trigger form that populates a *Reference number* variable for use in a workflow A workflow variable can contain a single value, such as a reference number, or containing multiple fields, such as an email, which has fields like `from`, `to`, `subject` and `attachments`. Actions Actions are like steps in a process. An action might be a user task in Effektif, an operation on a file in a document management system or any other action that represents something to be done in a process. Adding a transition Adding the *Support engineer* role assignment to a form Adding the next user task and its transition at the same time Adding version comments After the first published version, you can add a comment to describe the changes when you publish a new version of a process. Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location, with a transition. Alternatively, you can first define the *Support engineer* role by adding a field with type *User* to the *Initial investigation* task’s form, and then select the *Support engineer* role on another user task’s *Assignment* configuration. An email trigger starts a new case for each email that you send to the trigger‘s Effektif email address. Note this is different from reading an existing email account, such as your own. After selecting the email trigger, you can see its email address: Assigning a task to a *Support engineer* role with candidates Alice and Ben BPMN export BPMN import BPMN swim lanes become :ref:`roles <roles>` in Effektif Be concise; 3-10 words is usually about right. Be specific about what you changed, instead of vaguely referring to ‘changes’. Capitalise the first word and don’t include a full-stop at the end, for consistency. Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas. Click the transition symbol |transition-symbol| and drag it to the destination element. When you drag the symbol over the destination element, it indicates that you can drop to create the transition: Consider making the comment longer to explain why you made this change. Control flow elements Control flow elements like events and gateways are also part of the diagram, but unlike actions, control flow elements don’t represent something that should happen. Instead, you use events and gateways to specify the flow between the actions. Creating a transition hovering over destination Creating the first task that has a role will notify all of the candidates for the role. When one of the candidates takes the task, the subsequent tasks with the same role will be assigned to the same person. That’s more efficient because this person has the context knowledge about that case. Creating the next user task Drag the rounded rectangle symbol to an empty place Drop the symbol where you want to create the next user task. Release the mouse button to create new user task where you dropped it, with a transition from the previous action. Effektif does not support all BPMN 2.0 elements, so the process may appear differently in Effektif. In particular: Email trigger Example of a Salesforce trigger For example, when you have a meeting, one person sometimes takes the role of chairperson. That person doesn’t have the job title *Meeting chair* - it’s just a role they’ve adopted for the length of the meeting. Form trigger Form trigger configuration - using the form builder to define a trigger form If you reassign a task that has a role assignment, Effektif will update the role variable, and assign all subsequent tasks with the same role to the new assignee. In Effektif, a process role is a kind of workflow variable that is used for assigning tasks. A role is a variable of type user that stores a single user. In each meeting (each :ref:`cases <cases>` in Effektif), one person is assigned as chair, and one as secretary. These assignments generally don’t change during a meeting. Similarly, Effektif role assignments don’t change during a case: each new task with a role assignment is automatically assigned to the person who the role was assigned to. In the process definition, you can use the Salesforce object fields that are included in the Salesforce message just like normal :ref:`variables <variables>`. In this example, each version has a short comment that describes the changes. Instead, assign the three tasks to a new role called ‘Support engineer’, and add the relevant people as candidates for the role. Mail trigger configuration Make the comment an imperative phrase that starts with a word like ‘Add’ or ‘Fix’. Manual trigger Process builder Published versions with descriptive version comments Publishing a process version Release the mouse button over the destination to create the transition. Role candidates Roles Salesforce trigger Start creating a transition by dragging the transition symbol to the destination Start creating the next user task by dragging the action symbol The *Process builder*’s actions palette The `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ diagram editor shows actions and control flow elements, such as events and gateways. Use the diagram editor to add sequential flows between actions, decisions and other control flow behaviour. The `Import BPMN` button on the `Processes` page The `Publish changes` prompt, where you can add an optional version comment The `Versions` list after publishing the first version The email trigger creates an email variable that stores the email that started the process. The process builder is used to create and configure executable processes. An executable process is similar to software, but it’s easier to build automations using processes. With Effektif, non-technical people can create useful processes. The process editor’s `Versions` tab shows a list of published versions. Until you publish the first version, this page shows a message that there are ‘no published versions’ of the process. The process editor’s `Versions` tab with no published versions The version comment is not required, but it helps collaboration between team members by making process modelling more transparent. There is an easy way to create the next User Task in a process, similar to creating transitions above. Start by selecting the previous action: These process roles are not the same as organization roles. For example, you can be a *Team lead* in your organization, which can be a position without an end date. A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case. This results in a file download that describes your process model in BPMN format. There’s only one kind of BPMN file, so there aren’t any options to configure. To add a role assignment to a form, first define the process role, such as the *Support engineer* role created above, then on the form, under the *Reuse field* heading, select the role variable to add it to the form. To add a transition, click to select the first action. Several symbols appear to the right of the selected element: To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side. To assign a role, use the menu to create a new role or select an existing role To export a process model, first open it in the Effektif process editor. Select the menu next to the `Publish changes` button, then select `Export BPMN 2.0 XML`. To import a process model, on the `Processes` page, click the `Import BPMN` button and select the BPMN XML file. Trigger mail in stream Triggers Using a form field to assign a role Using the `Export BPMN 2.0 XML` option to save a process model in a file Variables Version #1 always has the description `Initial version`. For later versions, you can add your own description. Versions When you execute a process, you normally assign a specific person to a role by using the assignee button to select someone. Sometimes, you want this assignment to an explicit part of the process, to make sure the assignment happens at the right time. For example, it may be important to assign the *Support engineer* before completing an *Initial investigation* task. When you have configured a Salesforce service, you can select it as a process trigger, so that messages from Salesforce will now trigger new cases. When you use the Effektif process editor to edit your process model, all of your changes are saved immediately. You can go back and edit the process again later, and it will be just as you left it. However, to execute a process by starting a new case you need a published version. When you write version comments, use the following tips to make them more consistent and useful. With a form trigger, you use a form to start a process. After selecting the form trigger, you can use the form builder to specify form fields. Writing good version comments You can also use the edit icon next to the role name to rename the role. You can create a transition in the `Advanced flows` view. A transition specifies sequential flow, which means the next action only starts when the previous one is complete. You can do this by adding the role assignment to a form, because a task assignment role is a process variable, just like any other *User* form field. You can export an Effektif process model as a BPMN 2.0 XML file. This is useful if you want to open the model in another tool that supports BPMN, or to make a backup that you can load using the :ref:`BPMN import <bpmn-import>` option. You can import an Effektif process model from a BPMN 2.0 XML file. You can use this to import a model that you created in another tool, or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option. You can only start a new case for a process that has a published version, which is why the light green button text is ‘Publish to run this process’. After you publish the first version, the list shows version #1 and you can start a new case using that version. You can use a role to assign multiple tasks a person from a group of candidates. For example, you might have a support process that includes three user tasks that are assigned to a support engineer. You may find it easier to publish a series of small changes, creating a number of intermediate versions instead of one big change. Fine-grained versions make the version history more useful. tasks become :ref:`user tasks <user-task>` in Effektif unsupported elements, such as timer events, are removed. Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-04-17 10:39+0200
PO-Revision-Date: 2016-01-05 17:28+0100
Last-Translator: Philipp Giese <philipp.giese@effektif.com>
Language-Team: 
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.6
 Ein *Meeting*-Prozess mit Aufgaben für die Rollen *Meetingsleitung* (obere Reihe) und *Meetingsassistenz* (untere Reihe) Prozesse können auch durch eine Nachricht von Salesforce gestartet werden nachdem dort eine bestimmte Aktion erfolgt ist. Bevor Sie den Salesforce-Auslöser nutzen können, müssen Sie ihn wir hier beschrieben konfigurieren: :ref:`Salesforce Integration <salesforce-integration>`. Am einfachsten Starten Sie einen Prozess manuell. Dazu klicken Sie einfach auf `Neuen Fall starten` in der Prozessliste. In einem Prozess werden alle Daten in Variablen gespeichert. Informationen, wie zum Beispiel Formulare oder Konfigurationen, die für verschiedene Aktivitäten benötigt werden, sind mit diesen Variablen verbunden. Jeder einzelne Fall kennt die für ihn relevanten Werte dieser Variablen.  Dementsprechend werden Rollen in Effektifprozessen verwendet. Das folgende Meeting-Prozessmodell ordnet die Aufgaben in der oberen Reihe der **Meetingsleitung** zu und die Aufgaben in der unteren Reihe der Meetingsassistenz. Eine Rolle ist ein prozessspezifischer Bezeichner für eine Person oder Organisationseinheit, die eine oder mehrere Prozessaufgaben ausführt. An einer Rolle kann eine Liste möglicher Kandidaten hinterlegt werden. Rollen entsprechen Swimlanes in BPMN. Auslöser definieren wie ein Prozess gestartet wird. Bei Effektif gibt es keinen Zusammenhang zwischen Auslösern und Start Events, wie Sie sie vielleicht aus BPMN kennen. Weitere Informationen hierzu finden Sie unter :ref:`Startereignisse <start-event>`. Ein Formular-Auslöser welcher die Variable *Referenznummer* zur Nutzung im Workflow bereitstellt Eine Workflow-Variable kann einen einzelnen Wert, wie zum Beispiel eine Referenz oder eine Nummer enthalten, oder kann aus mehreren Felder zusammengesetzt sein, wie zum Beispiel eine Email mit den Feldern `Absender`, `Empfänger`, `Betreff` und `Anhänge`. Aktionen Mit Aktionen beschreiben Sie die verschiedenen Aufgaben innerhalb eines Prozesses. Das können zum Beispiel Aufgaben sein, die von Ihren Mitarbeitern ausgeführt werden müssen, sowie automatische Aktionen, wie der Upload von einer Datei in ein Dokumentenmanagementsystem. Transitionen hinzufügen Die *Support Mitarbeiter* Rolle zu einem Formular hinzufügen Fügen Sie Folgeaufgaben inklusive der Transition hinzu Versionskommentare hinzufügen Nach der ersten veröffentlichten Version können Sie zu jeder weiteren Version eine Beschreibung hinzufügen, die die Änderungen beschreibt, die Sie vorgenommen haben.  Alternativ können Sie das Aufgaben-Symbol einfach klicken um eine Folgeaufgabe an der Standardposition etwas weiter rechts neben der bestehenden Aktion zu erstellen. Alternativ können Sie auch zuerst ein Nutzerfeld im Formular anlegen und dieses dann als Rolle auswählen.  Hierbei wird für jede Email, die an die entsprechende Emailadresse des Prozesses geschickt wird ein neuer Fall erstellt. Die Adresse, die Sie hierfür nutzen müssen wird in der Beschreibung des Auslösers angezeigt. Sie eignet sich perfekt dafür in bestehende Verteilerlisten wie zum Beispiel support@firma.de integriert zu werden.  Eine Aufgabe der Rolle `Kundenbetreuer` zuweisen mit den Kandidaten Alice und Ben BPMN Export BPMN Import BPMN Swim Lanes werden in Effektif zu :ref:`Rollen <roles>` Fassen Sie sich kurz; 3-10 Worte sind normalerweise mehr als genug. Seien Sie spezifisch bei dem was Sie geändert haben und sprechen Sie nicht nur vage über `Änderungen`. Schreiben Sie das erste Wort groß aber beenden Sie den Kommentar nich mit einem Punkt (der Konsistenz halber) Klicken Sie das Aufgaben-Symbol |task-symbol| and ziehen Sie es an die Stelle, wo die neue Aufgabe erstellt werden soll. Klicken Sie das Transitions-Symbol |transition-symbol| and ziehen Sie es auf das Zielelement. Wenn Sie sich mit dem Mauszeiger über dem Zielelement befinden und es mit der aktuellen Aktivität verbunden werden kann, leuchten die Ecken grün auf und ein grüner Haken erscheint neben dem Transitions-Symbol. Unter Umständen schreiben Sie einen längeren Kommentar um zu Beschreiben, warum die Änderungen notwendig waren. Kontrollfluss-Elemente Kontrollfluss-Elemente, wie Ereignisse oder Gateways sind zwar auch Teil des Prozessdiagramm, allerdings stehen sie nicht dafür, dass etwas ausgeführt werden muss. Mit diesen Elementen steuern Sie den Fluss zwischen den einzelnen Aktivitäten. Ziehen Sie die Transition auf das Zielelement. Sobald die erste Aufgabe erstellt wird, die einer bestimmten Rolle zugewiesen ist, werden alle Kandidaten für diese Rolle informiert. Wenn eine Person die Aufgabe übernimmt, werden auch alle weiteren Aufgaben der Rolle dieser Person zugewiesen. Dies ist effizienter, da die entsprechende Person schon das kontextspezifische Fallwissen besitzt. Folgeaufgaben erstellen Ziehen Sie das Aufgaben-Symbol an die gewünschte Stelle Lassen Sie das Symbol an der Stelle los, wo die neue Aufgabe erstellt werden soll. Zwischen der neuen Aktion und der bereits bestehenden wird automatisch eine Transition erstellt.  Effektif unterstützt nicht alle BPMN 2.0 Elemente. Ein importierter Prozess wird in Effektif unter Umständen also verändert dargestellt. Berücksichtigen Sie insbesondere Folgendes: Email Beispiel eines Salesforce-Auslösers Wenn Sie Beispielsweise ein Meeting durchführen, kann eine Person die Rolle der Meetingsleitung übernehmen - möglicherweise hat die Person die Rolle jedoch lediglich für die Zeit des Meetings inne. Formular Formular-Auslöser Konfiguration - Nutzen Sie den Formular-Editor um den Auslöser zu erstellen Wenn Sie die Zuweisung ändern, kümmert sich Effektif natürlich darum, dass alle Aufgaben die einer Rolle zugewiesen waren entsprechend aktualisiert werden.  Eine Prozessrolle in Effektif ist eine Art Workflowvariable, die für die Zuweisung von Aufgaben verwendet wird. Eine Rolle ist eine Variable des Typs *Nutzer* - sie referenziert pro Aufgabe genau einen Nutzer. Rollen können ad-hoc eingenommen werden. In jedem Meeting (jedem :ref:`Fall <cases>` in Effektif) wird einer Person die Aufgabe der Meetingsleitung übertragen und einer weiteren Person die Rolle der Meetingsassistenz. Während eines Falldurchlaufs ändern sich Rollenzuweisungen nicht: Jeder neue Task einer Rolle wird automatisch der entsprechenden Person zugewiesen. In der Prozessdefinition können Sie nun auch Felder die in der Nachricht von Salesforce beinhaltet sind wie normale :ref:`Variablen <variables>` nutzen.  In diesem Beispiel hat jede Version einen kurten Kommentar, der die Änderungen beschreibt. Weisen Sie die drei Aufgaben einer neuen Rolle zu. Nennen Sie die Rolle 'Kundenbetreuer' und fügen Sie relevante Personen als Kandidaten für die Rolle hinzu. Konfiguration des Emailauslösers Schreiben Sie im imperativen Stil wie `Aktivität hinzugefügt` oder `Fehler behoben`. Manuell Prozesseditor Veröffentlichte Versionen mit beschreibenden Versionskommentaren Eine Version veröffentlichen Um die Transition endgültig zu erzeugen lassen Sie die Maus los.  Kandidaten für eine Rolle Rollen Salesforce Um eine Transition zu erzeugen, ziehen Sie das Transitions-Symbol auf die Zielaktion Erstellen Sie Folgeaufgaben in dem Sie das Aktions-Symbol ziehen. Die Palette an Aktionen im *Prozess-Editor* Der `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ Diagrammeditor zeigt Ihnen die einzelnen Aktionen, sowie Kontrollflusselemente wie Events und Gateways an. Sie können mit dem Editor Sequenzflüsse zwischen den Aktivitäten erstellen, Entscheidungen hinzufügen oder auf andere Weise den Kontrollfluss beeinflussen. Die `BPMN importieren`-Schaltfläche der `Prozesse`-Ansicht. Der `Änderungen veröffentlichen` Dialog, indem Sie eine optionale Beschreibung hinzufügen können Die `Versions`-Liste mit dem ersten Eintrag Der Emailauslöser erstellt eine Prozessvariable mit der Sie auf die Informationen der Email (Absender, Inhalt, etc.) zugreifen können.  Mit dem Prozesseditor können Sie ausführbare Prozesse erstellen und bearbeiten. Ein Prozess ist ähnlich einer Software nur dass es wesentlich einfacher ist Abläufe mit einem Prozess zu automatisieren. Im Reiter `Versionen` des Prozesseditors finden Sie eine Liste von veröffentlichten Versionen. Bevor Sie die erste Version Ihres Prozesses veröffentlicht haben, wird diese Seite nur einen Hinweis anzeigen, dass noch keine Versionen veröffentlicht wurden. Der Reiter `Versionen` ohne eine veröffentlichte Version. Der Versionskommentar ist keine Pflicht, er hilft jedoch bei der Kollaboration von mehreren Team-Mitgliedern, da er die Prozessgestaltung transparenter macht.  Eine neue Aufgabe nach einer bereits bestehenden zu erstellen ist ganz einfach. Gehen Sie auf ähnliche Weise vor, wie schon bei den Transitionen. Zunächst markieren Sie die Aktion auf die die neue folgen soll. Diese Prozessrollen entsprechen nicht zwingend Organisationsrollen. Sie können zum Beispiel in Ihrer Organisation die Rolle des *Team Leads* einnehmen und diese Rolle für unbegrenzte Zeit innehaben. Eine Prozessrolle wie *Meetingsleitung* wird hingegen lediglich im Kontext eines einzelnen Falles zugewiesen. Als Ergebnis wird der Download der Datei im BPMN-Format gestartet. Da es nur eine Art von BPMN-Dateien gibt, müssen Sie auch keine weiteren Optionen konfigurieren.  Um eine Rolle in einem Formular zu verwenden erstellen Sie zuerst die gewünschte Rolle wie zum Beispiel den *Support Mitarbeiter*. Danach können Sie diesen unterhalb des Formulars bei *Ein Feld wiederverwenden* ganz einfach auswählen. Um eine Transition hinzuzufügen klicken Sie auf eine Aktionen im Prozess. Darauf erscheinen neben der Aktion einige Symbole.  Um eine Rolle einer Nutzeraufgabe zuzuweisen, öffnen Sie die Konfigurationsleiste der Aufgabe, wählen Sie das `Allgemein`-Tab aus und verwenden Sie das `Zuweisen mittels einer Rolle`-Menü auf der rechten Seite. Um eine Rolle zuzuweisen, verwenden Sie das Menü um eine neue Rolle zu erstellen oder eine Existierende auszuwählen. Um einen Prozess zu exportieren, öffnen Sie ihn zunächst in Effektif. Wählen Sie im Menü neben dem `Zum Ausführen veröffentlichen` Knopf den Punkt `BPMN 2.0 XML exportieren`. Um ein Prozessmodell zu importieren, wechseln Sie in die `Prozesse`-Ansicht, klicken Sie auf `BPMN importieren` und wählen Sie eine BPMN 2.0 XML Datei aus. Startemail im Stream Auslöser Wie man per Formularfeld eine Rolle setzt Benutzen Sie den BPMN 2.0 XML Export um einen Prozess als Datei zu speichern. Variablen Die Version mit der Nummer #1 hat immer die Beschriftung `Initiale Version`. Bei späteren Versionen können Sie selbst eine Beschreibung hinzufügen.  Versionen Wenn Sie einen Prozess ausführen, dann weisen Sie eine Person in der Regel einer Rolle hinzu indem Sie den Zuweisen Knopf benutzen. Manchmal soll allerdings genau diese Zuweisung Teil des Prozesses selbst sein um sicher zu stellen, dass die Zuweisung zur richtigen Zeit passiert. Zum Beispiel kann es wichtig sein den *Support Mitarbeiter* zuzuweisen bevor die Aufgabe *Initiale Nachforschungen* abgeschlossen wird. Nachdem Sie einen Salesforce Service konfiguriert haben, können Sie ihn als Auslöser nutzen.  Wenn Sie den Effektif Prozesseditor verwenden, werden alle Ihre Änderungen automatisch gespeichert. Das heißt Sie können einen Prozess verlassen und er wird genau so aussehen, wenn Sie ihn wieder öffnen. Um einen Prozess allerdings auszuführen müssen Sie zunächst eine Version veröffentlichen.  Wenn Sie Ihre Versionskommentare schreiben, folgen Sie den diesen Tipps um Sie konsistent und nützlich zu gestalten.  Wenn Sie die Option `Formular` wählen müssen Nutzer ein Formular ausfüllen um neue Prozesse zu starten. Das Formular selbst können Sie dann mit unserem Formulareditor erstellen. Gute Versionskommentare schreiben Sie können zudem das Editierungsicon neben der Rolle anwählen, um die Rolle umzubenennen. Transitionen können nur im `Prozessfluss-Editor` erzeugt werden. Sie beschreiben einen sequentiellen Fluss durch den Prozess. Dies bedeutet, dass Aktionen nur dann ausgeführt werden, wenn die vorangehenden Aktionen bearbeitet wurden. Sie können das ganz einfach tun indem Sie die Rolle zu einem Formular hinzufügen, denn Rollen sind in Effektif auch nur weitere Prozessvariablen wie jedes andere *Nutzer* Feld. Sie können ein Effektif Prozessmodel als BPMN 2.0 XML file exportieren. Anschließend können Sie das Diagramm in einem beliebigen Tool öffnen, das den offenen BPMN 2.0 Standard unterstützt. Die Exportfunktion ermöglich zudem das Erstellen von Backups: ein :ref:`Re-Import <bpmn-import>` ist jederzeit möglich. Sie können ein Effektif Prozessmodel als BPMN 2.0 XML Datei importieren. Hiermit können Sie Modelle, die Sie in anderen Tools erstellt haben, in Effektif verwenden oder Backups, die Sie vorher über die :ref:`BPMN Exportfunktion <bpmn-export>` gespeichert haben, wiederherstellen. Sie können nur Fälle von bereits veröffentlichten Prozessen anlegen, weshalb der grünliche Knopf auch die Beschriftung `Zum Ausführen veröffentlichen` trägt. Nachdem Sie die erste Version veröffentlicht haben, zeigt die Liste einen Eintrag mit der Version #1 und Sie können nun Fälle von diesem Prozess starten.  Über eine Rolle können Sie mehrere Aufgaben einer Person aus einer Gruppe von Kandidaten zuweisen. In einem Supportprozess kann es zum Beispiel drei Nutzertasks geben, die einem Kundenbetreuer zugewiesen sind. Es erleichtert die Arbeit, wenn Sie eine Reihe von kleinen Änderungen veröffentlichen und nicht alles in eine große Version schieben. Kleine Versionen machen es einfacher die Änderungen nachzuverfolgen und damit die Versionshistorie nützlicher.  Task werden in Effektif zu :ref:`User Tasks <user-task>` Nichtunterstützte Element, wie zum Beispiel Zeit-Startereignisse, werden entfernt. 