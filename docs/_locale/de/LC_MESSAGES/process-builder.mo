��    z      �      �      �  �   �  T   \  �   �  X   i	  �   �	  �   �
  �   t  �  P  Q    �   g     �  �  �     �  7   �  =   
     H  }   `  �   �  �   _  �   N  K   G     �     �  7   �  V   �  ]   :  �   �     `  G   |     �     �  �   �  /   �  9  �     0  B   L     �  3   �  �   �  r   {  <   �     +     9     Y  L   f  �   �  �   V  P  �  f  F  �   �   R   D!  �   �!  M   &"  �   t"  *   �"     $#  Z   ?#     �#  A   �#     �#     �#  4   $     @$  G   ]$     �$     �$     �$  P   �$  ?   %  )   _%    �%  ]  �&    �'  0   )  A   ?)  K   �)  6   �)  �   *  [   �*  �   R+  @   ,  %  T,  �   z-  �   ,.  s   /  �   y/  N   0  �   l0  p   1     1     �1  N   �1  ]   �1    L2  #   R3  H   v3  	   �3  n   �3     84  G   A4  u  �4  �   �5    �6  `   �7  �   8     �8  H   �8  e   �8  �   _9  �   :  �   �:  �   D;  �   �;  �   �<     �=    >  k   ?  �   �?  �  G@  �   B  6   �B  y  �B  �   sD  f   7E  �   �E  y   aF    �F  t   �G    jH    yI  �   �K  �   pL     pM  1  yM     �O  =   �O  7   P     :P  �   YP  �   Q    �Q  �   �R  Q   �S     �S     �S  ;   T  n   >T  x   �T  3  &U      ZV  r   {V     �V     W    $W  .   =X  Y  lX     �Y  i   �Y     HZ  8   PZ  �   �Z  �   >[  S   �[     K\  $   Q\     v\  _   \  �   �\  �   ]  /  R^  r  �_  (  �`  X   b  �   wb  [   c  �   oc  C   d  !   Sd  V   ud     �d  G   �d     e     *e  A   Be     �e  B   �e     �e      f  
   f  T   f  A   gf  +   �f  Y  �f    /h  Z  Dj  <   �k  K   �k  d   (l  +   �l  ,  �l  �   �m    pn  :   ro  6  �o  �   �p  �   �q  |   yr  �   �r  v   �s  �   Ct  �   �t     �u  	   �u  g   �u  b   v  h  v  )   �w  M   x  	   `x  �   jx  	   y  p   y  �  }y  _   ){    �{  v   �|  �   	}  !   �}  [   �}  H   >~  �   �~  �   o  �   �  �   ߀  <  ~�    ��  �   փ  ,  ��  �   ��  �   d�  �  8�  �     8   ��   *Case name template* - the name for new cases of this process, usually containing trigger :ref:`variables <variables>` so that each case has a different name. *Process description* - documents a process, usually by describing the process goal. *Process owner* - shown on the *Processes* page to indicate who has responsibility for a process model, and used as the default recipient of some :ref:`notifications <notifications>`. A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow. Before you can use a Salesforce trigger, configure :ref:`Salesforce Integration <salesforce-integration>`. A manual trigger gives you the simplest way to start a process. With a manual trigger, you start processes manually in Effektif, by selecting `Start new case` and then selecting the process to start. A process can include different :ref:`action-types`. A user task will create a task in a case. A ‘Send Email’ action will send an email. A ‘Google file upload’ action will upload a file to a Google Drive folder. A process defines a template for automating repetitive work, like a recipe that describes the actions that you perform to achieve a goal. For example, consider a :ref:`Hire employee <hire-employee>` process. Each time an organization hires someone, the recruitment team has to complete a number of tasks, including ‘Evaluate CV’, ‘Plan interview’ and ‘Interview candidate’. Each time someone starts the process, Effektif creates a new case. A process in Effektif can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’). The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*. A trigger in a process specifies how the process starts. Triggers do not have any relation to :ref:`start events <start-event>`. Actions Actions represent the steps in a process - things to do. Action include things like user tasks in Effektif, operations on a file in a document management system or any other actions that represent work that someone will perform as part of a process. When starting a process, Effektif will ‘execute’ the actions in a process in the proper order. The process :ref:`control flow <control-flow>` determines this ordering, using transitions, gateways and events. Adding a transition Adding the *Support engineer* role assignment to a form Adding the next user task and its transition at the same time Adding version comments After the first published version, you can add a comment to describe the changes when you publish a new version of a process. Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location, with a transition. Alternatively, you can first define the *Support engineer* role by adding a field with type *User* to the *Initial investigation* task’s form, and then select the *Support engineer* role on another user task’s *General* configuration. An email trigger starts a new case for each email that you send to the trigger’s Effektif email address. Note this differs from reading an existing email account, such as your own. After selecting the email trigger, you can see its email address: Assigning a task to a *Support engineer* role with candidates Alice and Ben BPMN export BPMN import BPMN swim lanes become :ref:`roles <roles>` in Effektif Capitalise the first word and don’t include a full-stop at the end, for consistency. Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas. Click the transition symbol |transition-symbol| and drag it to the destination element. When you drag the symbol over the destination element, it indicates that you can drop to create the transition: Configuring process details Consider making the comment longer to explain why you made this change. Control flow elements Copying & deleting processes Creating a role gives a process-specific name to whoever performs one or more process tasks. You can optionally configure a role with a list of candidates. Roles have the same function as swimlanes in BPMN. Creating a transition hovering over destination Creating the first task that has a role will notify all of the candidates for the role. When one of the candidates takes the task, Effektif will assign the subsequent tasks with the same role to the same person. That helps this person work more efficiently because they have the context knowledge about that case. Creating the next user task Describe specifics, instead of vaguely referring to ‘changes’. Details Drag the rounded rectangle symbol to an empty place Drop the symbol where you want to create the next user task. Release the mouse button to create new user task where you dropped it, with a transition from the previous action. Effektif does not support all BPMN 2.0 elements, so the process may appear differently in Effektif. In particular: Effektif removes unsupported elements, such as timer events. Email trigger Example of a Salesforce trigger Form trigger Form trigger configuration - using the form builder to define a trigger form If you reassign a task that has a role assignment, Effektif will update the role variable, and assign all subsequent tasks with the same role to the new assignee. In Effektif, a process role works like a workflow variable that you use to assigning tasks. A role variable has the :ref:`type-user` and stores a single user. In Effektif, you cannot currently delete cases, which you might want to do if you have created test cases while developing the process. However, you can use `Create a copy` and `Delete process` to duplicate a process and then delete the original. This deletes all of the cases with the original process, and leaves a copy with no cases. In each meeting (each :ref:`case <cases>` in Effektif), one person takes the role of chair, and one the role of secretary. These assignments generally don’t change during a meeting. Similarly, Effektif role assignments don’t change during a case. Effektif automatically assigns each new task with a role assignment to the person who already has the role. In the process builder, only one person can edit a process at a time. While someone continues to edit a process, the `Processes` list shows a message. In the process builder, select the *Details* tab to further configure the process. In the process definition, you can use the Salesforce object fields from the Salesforce message just like normal :ref:`variables <variables>`. In this example, each version has a short comment that describes the changes. Instead, assign the three tasks to a new role called ‘Support engineer’, and add the relevant people as candidates for the role. Keep it short; 3-10 words usually suffice. Mail trigger configuration Make the comment an imperative phrase that starts with a word like ‘Add’ or ‘Fix’. Manual trigger On the *General* tab, configure the following process properties. Process builder Process locking Published versions with descriptive version comments Publishing a process version Release the mouse button over the destination to create the transition. Role candidates Roles Salesforce trigger Start creating a transition by dragging the transition symbol to the destination Start creating the next user task by dragging the action symbol The *Process builder*’s actions palette The `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ diagram editor shows actions and control flow elements, such as events and gateways. Use the diagram editor to add sequential flows between actions, decisions and other control flow behaviour. The `Create a copy` option duplicates the process in the same organisation. You may find it useful to duplicate a process if you want to experiment with changes without publishing changes to a live process. You may also want to duplicate a process to model a special case of the process, instead of adding a conditional flow to the standard process. The `Delete process` option permanently deletes a process and all of its cases. You cannot undo this operation, so you must enter a confirmation. You might want to delete a process that you created by duplicating another process in order to experiment with changes in the model. The `Import BPMN` button on the `Processes` page The `Processes` list message while someone else edits the process The `Publish changes` prompt, where you can add an optional version comment The `Versions` list after publishing the first version The diagram also includes control flow elements, such as events and gateways. Unlike actions, control flow elements don’t represent something that should happen. Instead, you use events and gateways to specify the flow between the actions. The email trigger creates an email variable that stores the email that started the process. The process editor’s `Versions` tab shows a list of published versions. Until you publish the first version, this page shows a message that there the process has ‘no published versions’. The process editor’s `Versions` tab with no published versions These process roles differ from organization roles. For example, you can have the *Team lead* role in your organization, an assignment that does not necessarily have an end date. A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case. This results in a file download that describes your process model in BPMN format. Effektif only exports one kind of BPMN file, so it doesn’t give you any options to configure. To add a role assignment to a form, first define the process role, such as the *Support engineer* role created above, then on the form, under the *Reuse field* heading, select the role variable to add it to the form. To add a transition, click to select the first action. Several symbols appear to the right of the selected element: To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side. To assign a role, use the menu to create a new role or select an existing role To export a process model, first open it in the Effektif process editor. Select the menu next to the `Publish changes` button, then select `Export BPMN 2.0 XML`. To import a process model, on the `Processes` page, click the `Import BPMN` button and select the BPMN XML file. Trigger mail in stream Triggers Use the *Access control* tab to restrict access to this process and its cases. Use the *Field overview* tab to view and rename this process’ :ref:`variables <variables>`. Use the process builder to create and configure executable processes. You can think of an executable process as a kind of software, but you will find it easier to build automation using processes. With Effektif, non-technical people can create useful processes. Using a form field to assign a role Using the `Export BPMN 2.0 XML` option to save a process model in a file Variables Version #1 always has the description `Initial version`. For later versions, you can add your own description. Versions Warning that you cannot edit a process at the same time as someone else When you execute a process, you normally assign a specific person to a role by using the assignee button to select someone. Sometimes, you want this assignment to an explicit part of the process, to make sure the assignment happens at the right time. For example, you may find it important to assign the *Support engineer* before completing an *Initial investigation* task. When you have configured a Salesforce service, you can select it as a process trigger, so that messages from Salesforce will now trigger new cases. When you use the process editor to edit your process model, Effektif saves all of your changes immediately. You can go back and edit the process again later, and it will not have changed. However, to execute a process by starting a new case you need a published version. When you write version comments, use the following tips to make them more consistent and useful. With a form trigger, you use a form to start a process. After selecting the form trigger, you can use the form builder to specify form fields. Writing good version comments You can also use the edit icon next to the role name to rename the role. You can create a copy of a process or delete it using the process menu shown in the previous section. You can create a transition in the `Advanced flows` view. A transition specifies sequential flow, which means the next action only starts when someone has completed the previous one. You can do this by adding the role assignment to a form, because you can use task assignment roles as process variables, just like any other *User* form field. You can easily create the next User Task in a process in the same way you created transitions, above. Start by selecting the previous action: You can edit the process and make changes after the other person leaves the process editor, by opening the `Tasks` list, for example. You can export an Effektif process model as a BPMN 2.0 XML file. You may find this useful for opening the model in another tool that supports BPMN, or to make a backup that you can load using the :ref:`BPMN import <bpmn-import>` option. You can import an Effektif process model from a BPMN 2.0 XML file. You can use this to import a model that you created in another tool, or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option. You can omit the version comment, but it helps collaboration between team members by making process modelling more transparent. You can only start a new case for a process that has a published version, hence the light green button displays ‘Publish to run this process’. After you publish the first version, the list shows version #1 and you can start a new case using that version. You can still open the process, but you will see a warning message explaining that you cannot make changes: You can use a role to assign multiple tasks a person from a group of candidates. For example, you might have a support process that includes three user tasks that you assign to a support engineer. You can use an email trigger by adding the trigger email address to a mailing list, such as `support@example.com `or `info@example.com`. You’ll have to ask the administrator of the mailing list to add the process trigger’s email address to the list. Once you have done this, the process trigger address will also receive any email sent to the mailing list, starting the process in Effektif. You will then see the email in the event stream: You may find it easier to publish a series of small changes, creating a number of intermediate versions instead of one big change. Fine-grained versions make the version history more useful. tasks become :ref:`user tasks <user-task>` in Effektif Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-13 14:38+0200
PO-Revision-Date: 2016-04-13 18:59+0200
Last-Translator: Timotheus Kampik <timotheus.kampik@signavio.com>
Language-Team: 
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
X-Generator: Poedit 1.8.7
 *Vorlage für Fallnamen* - der Name für neue Fälle dieses Prozesses, normalerweise enthält dieser Prozess-Auslöser  :ref:`Variablen <variables>`, damit jeder Fall einen anderen Namen bekommt. *Prozessbeschreibung* - dokumentiert einen Prozess, normalerweise durch Beschreibung des Prozessziels. *Eigentümer* - ist sichtbar auf der *Prozess* Seite und zeigt an, wer für den Prozess verantwortlich ist und als Standardempfänger für einige :ref:`Benachrichtigungen <notifications>` dient. Ein *Meeting*-Prozess mit Aufgaben für die Rollen *Meetingsleitung* (obere Reihe) und *Meetingsassistenz* (untere Reihe) Prozesse können auch durch eine Nachricht von Salesforce gestartet werden nachdem dort eine bestimmte Aktion erfolgt ist. Bevor Sie den Salesforce-Auslöser nutzen können, müssen Sie ihn wie hier beschrieben konfigurieren: :ref:`Salesforce Integration <salesforce-integration>`. Am Einfachsten Starten Sie einen Prozess manuell. Klicken Sie hierfür auf `Neuen Fall starten` in der Prozessliste. Ein Prozess kann verschiedene Arten von :ref:`action-types` beinhalten: Eine Nutzer-Aktion erstellt eine Aufgabe in einem Fall, eine `Email Senden` Aktivität verschickt eine Email und eine `Google Dateiupload` Aktion lädt eine Datei in einen Google Drive Ordner hoch.  Ein Prozess definiert eine Vorlage für repetitive Arbeitsabläufe, wie eine Anleitung, das die Aktionen beschreibt, die Sie durchführen müssen um ein bestimmtes Ziel zu erreichen. Stellen Sie sich z.B. einen :ref:` Einstellungsprozess <hire-employee>` vor. Jedes Mal, wenn eine Organisation eine neue Person einstellt, muss das Personalteam gewisse Aufgaben erledigen, z.B. 'Lebenslauf evaluieren', Interview planen' und 'Kandidaten interviewen'. Jedes Mal, wenn jemand diesen Prozess startet, erstellt Effektif einen neuen Fall.  Dementsprechend werden Rollen in Effektifprozessen verwendet. Das folgende Meeting-Prozessmodell ordnet die Aufgaben in der oberen Reihe der **Meetingsleitung** zu und die Aufgaben in der unteren Reihe der Meetingsassistenz. Auslöser definieren wie ein Prozess gestartet wird. Bei Effektif gibt es keinen Zusammenhang zwischen Auslösern und Start Events, wie Sie sie vielleicht aus BPMN kennen. Weitere Informationen hierzu finden Sie unter :ref:`Startereignisse <start-event>`. Aktionen Aktionen repräsentieren die einzelnen Schritte eines Prozesses - was zu tun ist. Aktionen beinhalten Dinge wie Nutzer-Aufgaben in Effektif, Datenoperationen in einem Datenmanagementsystem oder beliebige andere Aktionen die Arbeitsschritte repräsentieren, die jemand als Teil eines Prozesses ausführen muss. Wenn ein Prozess gestartet wird, wird Effektif die Aktionen des Prozesses in der geplanten Reihenfolge 'ausführen'. Der Prozess :ref:`Kontrollfluss <control-flow>` bestimmt diese Ordnung unter der Verwendung von Transitionen, Gateways und Ereignisse. Transitionen hinzufügen Die *Support Mitarbeiter* Rolle zu einem Formular hinzufügen Fügen Sie Folgeaufgaben inklusive der Transition hinzu Versionskommentare hinzufügen Nach der ersten veröffentlichten Version können Sie zu jeder weiteren Version eine Beschreibung hinzufügen, die die Änderungen beschreibt, die Sie vorgenommen haben.  Alternativ können Sie einfach auf das Aufgaben-Symbol klicken um eine Folgeaufgabe an der Standardposition etwas weiter rechts neben der bestehenden Aktion zu erstellen. Alternativ können Sie die *Support Mitarbeiter*-Rolle definieren, indem Sie den Typ *Nutzer* zum Formular der Aufgabe *Initiale Nachforschungen anstellen* hinzufügen und anschließen die Rolle *Support Mitarbeiter* in der Konfiguration einer Nutzeraufgabe auswählen. Hierbei wird für jede Email, die an die entsprechende Emailadresse des Prozesses geschickt wird, ein neuer Fall erstellt. Die Adresse, die Sie hierfür nutzen müssen wird in der Beschreibung des Auslösers angezeigt: Eine Aufgabe der Rolle `Kundenbetreuer` zuweisen mit den Kandidaten Alice und Ben BPMN Export BPMN Import BPMN Swim Lanes werden in Effektif zu :ref:`Rollen <roles>` Schreiben Sie das erste Wort groß aber beenden Sie den Kommentar nich mit einem Punkt (der Konsistenz halber) Klicken Sie das Aufgaben-Symbol |task-symbol| and ziehen Sie es an die Stelle, wo die neue Aufgabe erstellt werden soll. Klicken Sie das Transitions-Symbol |transition-symbol| and ziehen Sie es auf das Zielelement. Wenn Sie sich mit dem Mauszeiger über dem Zielelement befinden und es mit der aktuellen Aktivität verbunden werden kann, leuchten die Ecken grün auf und ein grüner Haken erscheint neben dem Transitions-Symbol. Konfiguration von Prozessdetails Unter Umständen schreiben Sie einen längeren Kommentar um zu Beschreiben, warum die Änderungen notwendig waren. Kontrollfluss-Elemente Prozesse kopieren und löschen Die Erstellung einer Rolle gibt den Personen, die bestimmte Prozessaufgaben ausführen eine prozessspezifische Bezeichnung. Sie haben in Effektif die Möglichkeit, eine Liste von Kandidaten für Rollen zu definieren. Rollen haben hier die gleiche Bedeutung, wie Swimlanes in BPMN. Ziehen Sie die Transition auf das Zielelement. Sobald die erste Aufgabe erstellt wird, die einer bestimmten Rolle zugewiesen ist, werden alle Kandidaten für diese Rolle informiert. Wenn eine Person die Aufgabe übernimmt, werden auch alle weiteren Aufgaben der Rolle dieser Person zugewiesen. Dies ist effizienter, da die entsprechende Person schon das kontextspezifische Fallwissen besitzt. Folgeaufgaben erstellen Seien Sie spezifisch bei dem was Sie geändert haben und sprechen Sie nicht nur vage über `Änderungen`. Details Ziehen Sie das Aufgaben-Symbol an die gewünschte Stelle Lassen Sie das Symbol an der Stelle los, wo die neue Aufgabe erstellt werden soll. Zwischen der neuen Aktion und der bereits bestehenden wird automatisch eine Transition erstellt.  Effektif unterstützt nicht alle BPMN 2.0 Elemente. Ein importierter Prozess wird in Effektif unter Umständen also verändert dargestellt. Berücksichtigen Sie insbesondere Folgendes: Nichtunterstützte Element, wie zum Beispiel Zeit-Startereignisse, werden entfernt. Email Beispiel eines Salesforce-Auslösers Formular Formular-Auslöser Konfiguration - Nutzen Sie den Formular-Editor um den Auslöser zu erstellen Wenn Sie die Zuweisung ändern, kümmert sich Effektif natürlich darum, dass alle Aufgaben die einer Rolle zugewiesen waren entsprechend aktualisiert werden.  Eine Prozessrolle in Effektif ist eine Art Workflowvariable, die für die Zuweisung von Aufgaben verwendet wird. Eine Rolle ist eine Variable des Typs *Nutzer* - sie referenziert pro Aufgabe genau einen Nutzer. In Effektif ist es nicht möglich, Fälle direkt zu löschen. Falls Sie einen Fälle als 'Tests' während des Prozessdesigns erstellt haben, empfehlen wir Ihnen für die Produktivversion des Prozesses eine Kopie zu erstellen und das Orginal zu löschen. Die Fälle werden nicht in die Kopie übernommen. Rollen können ad-hoc eingenommen werden. In jedem Meeting (jedem :ref:`Fall <cases>` in Effektif) wird einer Person die Aufgabe der Meetingsleitung übertragen und einer weiteren Person die Rolle der Meetingsassistenz. Während eines Falldurchlaufs ändern sich Rollenzuweisungen nicht: Jeder neue Task einer Rolle wird automatisch der entsprechenden Person zugewiesen. Ein Prozess kann im Prozesseditor nicht von mehreren Personen gleichzeitig bearbeitet werden, da es ansonsten sehr wahrscheinlich ist, dass die bearbeitenden Nutzer ihre Änderungen gegenseitig überschreiben. Wenn jemand einen Prozess editiert, wird dies daher in der `Prozesse`-Liste angezeigt. Wählen Sie den *Details*-Tab im Prozess Editor, um den Prozess weiter zu konfigurieren. In der Prozessdefinition können Sie nun auch Felder, die in der Nachricht von Salesforce enthalten sind, wie normale :ref:`Variablen <variables>` nutzen.  In diesem Beispiel hat jede Version einen kurten Kommentar, der die Änderungen beschreibt. Weisen Sie die drei Aufgaben einer neuen Rolle zu. Nennen Sie die Rolle 'Kundenbetreuer' und fügen Sie relevante Personen als Kandidaten für die Rolle hinzu. Fassen Sie sich kurz; 3-10 Worte sind normalerweise mehr als genug. Konfiguration des Emailauslösers Schreiben Sie im imperativen Stil wie `Aktivität hinzugefügt` oder `Fehler behoben`. Manuell Im *Allgemein*-Tab konfigurieren Sie die folgenden Prozesseigenschaften Prozesseditor Bearbeitungsblockierung Veröffentlichte Versionen mit beschreibenden Versionskommentaren Eine Version veröffentlichen Um die Transition endgültig zu erzeugen lassen Sie die Maus los.  Kandidaten für eine Rolle Rollen Salesforce Um eine Transition zu erzeugen, ziehen Sie das Transitions-Symbol auf die Zielaktion Erstellen Sie Folgeaufgaben in dem Sie das Aktions-Symbol ziehen. Die Palette an Aktionen im *Prozess-Editor* Der `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ Diagrammeditor zeigt Ihnen die einzelnen Aktionen, sowie Kontrollflusselemente wie Events und Gateways an. Sie können mit dem Editor Sequenzflüsse zwischen den Aktivitäten erstellen, Entscheidungen hinzufügen oder auf andere Weise den Kontrollfluss beeinflussen. Über die Schaltfläche `Eine Kopie erstellen` duplizieren Sie einen Prozess in der entsprechenden Organisation. Dies ist insbesondere hilfreich, wenn Sie dem Prozess experimentieren wollen, ohne dass Nutzer der Prozessfälle direkt von den Änderungen betroffen sind. Ein weitere Use Case ist das Erstellen von Prozessvarianten: Um weitere XOR-Verzweigungen innerhalb einer Prozesses zu vermeiden, können Sie eine Kopie des Prozesses Ihren Anforderungen entsprechend abändern und die Prozessbezeichnung aussagekräftig abändern. Über die `Prozess löschen` Schaltfläche löschen Sie einen Prozess und alle Fälle des Prozesses **unwiderruflich**. Da Sie das Löschen nicht rückgängig machen können, müssen Sie den Vorgang explizit bestätigen. Ein typische Anwendungsfall für das Löschen eines Prozesses ist das Verwerfen einer experimentellen Kopie eines Prozesses.  Die `BPMN importieren`-Schaltfläche der `Prozesse`-Ansicht. Der Hinweis in der `Prozesse`-Liste, wenn ein Prozess bereits editiert wird Der `Änderungen veröffentlichen` Dialog, indem Sie eine optionale Beschreibung hinzufügen können Die `Versions`-Liste mit dem ersten Eintrag Des Weiteren enthält das Diagramm Kontrollflusselement, wie zum Beispiel Ereignisse und Gateways. Im Gegensatz zu Aktionen (Tasks) stehen Kontrollflusselemente nicht für Aufgaben, die von Personen oder Computern bearbeitet werden müssen, sondern für die Auslöser und Bedingungen dieser Aktionen. Der Emailauslöser erstellt eine Prozessvariable mit der Sie auf die Informationen der Email (Absender, Inhalt, etc.) zugreifen können.  Im Reiter `Versionen` des Prozesseditors finden Sie eine Liste von veröffentlichten Versionen. Bevor Sie die erste Version Ihres Prozesses veröffentlicht haben, wird zeigt diese Seite nur einen Hinweis an, dass noch keine Versionen veröffentlicht wurden. Der Reiter `Versionen` ohne eine veröffentlichte Version. Diese Prozessrollen entsprechen nicht zwingend Organisationsrollen. Sie können zum Beispiel in Ihrer Organisation die Rolle des *Team Leads* einnehmen und diese Rolle für unbegrenzte Zeit innehaben. Eine Prozessrolle wie *Meetingsleitung* wird hingegen lediglich im Kontext eines einzelnen Falles zugewiesen. Anschließend wird der Download der Datei im BPMN-Format gestartet. Da es nur eine Art von BPMN-Dateien gibt, müssen Sie auch keine weiteren Optionen konfigurieren.  Um eine Rolle in einem Formular zu verwenden erstellen Sie zuerst die gewünschte Rolle wie zum Beispiel den *Support Mitarbeiter*. Danach können Sie diesen unterhalb des Formulars bei *Ein Feld wiederverwenden* ganz einfach auswählen. Um eine Transition hinzuzufügen klicken Sie auf eine Aktion im Prozess. Darauf erscheinen neben der Aktion einige Symbole.  Um eine Rolle einer Nutzeraufgabe zuzuweisen, öffnen Sie die Konfigurationsleiste der Aufgabe, wählen Sie das `Allgemein`-Tab aus und verwenden Sie das `Zuweisen mittels einer Rolle`-Menü auf der rechten Seite. Um eine Rolle zuzuweisen, verwenden Sie das Menü um eine neue Rolle zu erstellen oder eine Existierende auszuwählen. Um einen Prozess zu exportieren, öffnen Sie ihn zunächst in Effektif. Wählen Sie im Menü neben dem `Zum Ausführen veröffentlichen` Knopf den Punkt `BPMN 2.0 XML exportieren`. Um ein Prozessmodell zu importieren, wechseln Sie in die `Prozesse`-Ansicht, klicken Sie auf `BPMN importieren` und wählen Sie eine BPMN 2.0 XML Datei aus. Startemail im Stream Auslöser Verwenden Sie den Tab *Zugriffsrechte*, um Zugang zu diesem Prozess und seinen Fällen einzuschränken. Verwenden Sie den Tab *Feldübersicht*, um den Prozess anzuschauen und seinen Namen zu verändern. Mit dem Prozesseditor können Sie ausführbare Prozesse erstellen und bearbeiten. Ein ausführbarer Prozess ist eine IT-Lösung zur Ausführung eines Geschäftsablaufs. Die Automatisierung von Prozessen mit Effektif ermöglicht es auch Fachanwendern ohne technisches Wissen und Zugriff auf eine IT-Entwicklungsabteilung, Prozesse zu erstellen und auszuführen. Wie man per Formularfeld eine Rolle setzt Benutzen Sie den BPMN 2.0 XML Export um einen Prozess als Datei zu speichern. Variablen Die Version mit der Nummer #1 hat immer die Beschriftung `Initiale Version`. Bei späteren Versionen können Sie selbst eine Beschreibung hinzufügen.  Versionen Warnung, dass Änderungen an einem Prozess nicht von mehreren Personen gleichzeitig durchgeführt werden können Wenn Sie einen Prozess ausführen, dann weisen Sie eine Person in der Regel einer Rolle zu, indem Sie den *Zuweisen*-Knopf benutzen. Manchmal soll allerdings genau diese Zuweisung Teil des Prozesses selbst sein um sicher zu stellen, dass die Zuweisung zur richtigen Zeit passiert. Zum Beispiel kann es wichtig sein, den *Support Mitarbeiter* zuzuweisen bevor die Aufgabe *Initiale Nachforschungen anstellen* abgeschlossen wird. Nachdem Sie einen Salesforce Service konfiguriert haben, können Sie ihn als Auslöser nutzen.  Wenn Sie den Effektif Prozesseditor verwenden, werden alle Ihre Änderungen automatisch gespeichert. Sie können also einen Prozess verlassen, ohne explizit zu speichern. Um einen Prozess auszuführen müssen Sie allerdings zunächst eine Version veröffentlichen. Wenn Sie Ihre Versionskommentare schreiben, folgen Sie den diesen Tipps um Sie konsistent und nützlich zu gestalten.  Wenn Sie die Option `Formular` wählen, müssen Nutzer ein Formular ausfüllen um neue Prozesse zu starten. Das Formular selbst können Sie dann mit unserem Formulareditor erstellen. Gute Versionskommentare schreiben Sie können zudem das Editierungsicon neben der Rolle anwählen, um die Rolle umzubenennen. Über das Prozessmenü können Sie zudem Prozesse kopieren und löschen. Transitionen können im `Prozessfluss-Editor` erzeugt werden. Sie beschreiben einen sequentiellen Fluss durch den Prozess. Dies bedeutet, dass Aktionen nur dann ausgeführt werden, wenn die vorangehenden Aktionen bearbeitet wurden. Sie können hierfür einfach die Rolle zu einem Formular hinzufügen: Rollen sind in Effektif Prozessvariablen wie jedes andere *Nutzer* Formularfeld auch. Eine neue Aufgabe nach einer bereits bestehenden zu erstellen ist ganz einfach: Gehen Sie auf ähnliche Weise vor, wie schon bei den Transitionen. Zunächst markieren Sie die Aktion auf die die neue folgen soll. Nachdem die editierende Person die Bearbeitungsansicht verlässt (zum Beispiel um in de Aufgabenliste zu wechseln), können Sie den Prozess wieder bearbeiten. Sie können ein Effektif Prozessmodel als BPMN 2.0 XML-Datei exportieren. Anschließend können Sie das Diagramm in einem beliebigen Tool öffnen, das den offenen BPMN 2.0 Standard unterstützt. Die Exportfunktion ermöglich zudem das Erstellen von Backups: ein :ref:`Re-Import <bpmn-import>` ist jederzeit möglich. Sie können ein Effektif Prozessmodel als BPMN 2.0 XML Datei importieren. Hiermit können Sie Modelle, die Sie in anderen Tools erstellt haben, in Effektif verwenden oder Backups, die Sie vorher über die :ref:`BPMN Exportfunktion <bpmn-export>` gespeichert haben, wiederherstellen. Das hinterlegen eines Versionskommentars ist keine Pflicht, er hilft jedoch bei der Kollaboration von mehreren Team-Mitgliedern, da er die Prozessgestaltung transparenter macht.  Um einen Fall anzulegen, muss der entsprechende Prozess veröffentlicht sein - daher der der grünliche Knopf `Zum Ausführen veröffentlichen`. Nachdem Sie die erste Version veröffentlicht haben, zeigt die Liste einen Eintrag mit der Version #1 und Sie können nun Fälle dieses Prozesses starten.  In einer solchen Situation können Sie den Prozess trotzdem öffnen. Allerdings wird Ihnen dann eine Warnung angezeigt und eine Bearbeitung des Prozesses ist nicht möglich: Über eine Rolle können Sie mehrere Aufgaben einer Person aus einer Gruppe von Kandidaten zuweisen. In einem Supportprozess kann es zum Beispiel drei Nutzertalks geben, die einem Kundenbetreuer zugewiesen sind. Sie können Emailauslöser mit Mailinglisten wie zum Beispiel `support@example.com` oder `info@example.com` verknüpfen. Bitten Sie hierzu den Administrator der Mailingliste, die Emailadresse des Auslösers in die Mailingliste aufzunehmen. Anschließend wird mit jeder Email an die Liste ein neuer Fall des Prozesses in Effektif ausgelöst. Die Email taucht entsprechend im Ereignisstream auf: Es erleichtert die Arbeit, wenn Sie eine Reihe von kleinen Änderungen veröffentlichen und nicht alles in eine große Version schieben. Kleine Versionen machen es einfacher die Änderungen nachzuverfolgen und damit die Versionshistorie nützlicher.  Task werden in Effektif zu :ref:`User Tasks <user-task>` 