��          �       |      |  �   }  �   X  �   �  �  y     #  &  *     Q    ]  �  d     0	  7  5	  �   m
     e     r  �  z            �   "     �  �   �     �  m  �  �     �   �  �   J  ?  �     :  N  A     �  5  �  �  �     �  �  �  V  W     �     �  q   �     5     ;  �   C        �     	   �   A *case* is a collaboration page for a particular goal. A case has subtasks representing the concrete action items to reach the goal. There are two types of cases: cases which are related to a process and ad-hoc cases. A process is a template to automate repetitive work, like a recipe that describes the actions that have to be performed to achieve a goal. A role is a mechanism used to assign user tasks in a process. Roles correspond to swimlanes in a BPMN diagram, and are also known as a process roles. A trigger in a process specifies when the process is started. The manual trigger is the simplest, and starts the process when you start a new process case inside Effektif. The form trigger allows to specify a form that you have to complete to start a new process case. The email trigger creates a new process case when it receives email at its own email address. There is no direct relation between triggers and start events. Action Actions are the steps in a process that represent things to be done. When starting a process, Effektif will ‘execute’ the actions in a process in the proper order. This ordering is also refered to as :ref:`control flow <control-flow>` and is specified with transitions, gateways and events. Ad-hoc case An *ad-hoc case* is a case without a predefined process. It’s a collaboration space to reach any one-off goal. The case brings together a set of tasks, a discussion and documents, and allows participants to share any relevant context information for the tasks. An organization represents a collection of Effektif users - typically a company - together with all their data in Effektif. The data in an organization is not visible to people outside the organization. When you’re logged into Effektif, you see all the data inside one particular organization. If you’re a member of multiple organizations, you can switch between organizations by selecting a different organization under your name in the top right corner. Case Each case has an event stream that acts as an audit log and includes the information that is shared during collaboration, such as comments, documents and links. By using case comments instead of email, participants ensure that discussions retain the full context for everyone involved. See :ref:`Cases <cases>`. For example, consider a `Hire employee` process. Each time someone is hired, three tasks have to be completed: ‘Conduct interview’, ‘Prepare contract’ and ‘Create email account’. Each time the process is started, a new case is created. Organization Process Process roles are different from organizational roles. For example, there might be people your organization with the role ‘Support engineer’. However, each support case only has one person in the ‘Support contact’ process role. A process role only lasts for the duration of a case, while organizational roles are more static and relate to the job you perform at the organization. See :ref:`Roles <roles>`. Role Task Tasks are concrete action items inside a case that can be assigned to people. In process cases, a task may have been created by a user task action. Terminology There are different types of actions: a user task will create a task in a case. A ‘Send Email’ action will send an email. A ‘Google file upload’ action will upload a file to a Google Drive folder. Trigger Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-04-17 10:39+0200
PO-Revision-Date: 2015-04-30 17:23+0100
Last-Translator: Philipp Giese <philipp.giese@effektif.com>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.5
 Ein *Fall* ist der Platz um gemeinsam auf ein Ziel hinzuarbeiten. Jeder Fall ist aus mehreren Aufgaben aufgebaut, welche die konkret zu erledigenden Tätigkeiten darstellen.  Mit Prozessen können sie wiederkehrende Arbeit beschreiben. Stellen Sie sich Prozesse wie eine Art Kochrezept für Ihre alltäglichen Arbeiten vor.  Mit Rollen können Aufgaben innerhalb eines Prozesses leichter zugewiesen werden. Sie entsprechen den Swimlanes aus BPMN und sind auch unter dem Namen Prozess-Rollen bekannt.  Auslöser beschreiben, wie ein Prozess gestartet wird. Die einfachste Form ist der `manuelle Auslöser` bei dem per Hand aus Effektif neue Fälle angelegt werden. Es können aber auch Formulare oder Emails verwendet werden, um neue Fälle anzulegen. Erfahren Sie dazu mehr unter :ref:`Prozesseditor <process-builder>`.  Aktion Aktionen sind alle Schritte innerhalb eines Prozesses die gewisse Dinge erledigen. Wenn Sie einen Prozess starten, wird Effektif alle Aktionen in der korrekten Reihenfolge `ausführen`. Diese Reihenfolge wird auch als :ref:`Kontrollfluss <control-flow>` bezeichnet und wird mittels Transitionen, Gateways und Ereignissen ausgedrückt. Ad-hoc Fall *Ad-hoc Fälle* sind Fälle die ohne einen definierten Prozess erstellt wurden. Hier kann man kollaborativ an einer Aufgabe arbeiten, die so wahrscheinlich nicht mehr auftreten werden. Es lohnt sich allerdings trotzdem einen Fall anzulegen, da so alle Aufgaben zusammengetragen und diskutiert werden können.  Eine Organisation fasst eine Menge von Effektif-Nutzern zusammen. Typischerweise entspricht das einer Firma. Alle Daten innerhalb einer Organisation sind auch nur in dieser Organisation sichtbar. Wenn Sie sich in Effektif eingeloggt haben, können Sie auf die entsprechenden Daten innerhalb Ihrer Organisation zugreifen. Falls Sie Mitglied in mehreren Organisationen sein sollten, so können Sie zwischen diesen über das Nutzermenü am oberen rechten Rand der Anwendung wechseln.  Fall In jedem Fall finden Sie einen Event Stream der alle Informationen zu diesem Fall zusammenträgt. Solche Informationen können Kommentare, Dokumente oder links sein. Indem Diskussionen über einen Fall direkt auf dieser Seite geführt werden und nicht per Email können Sie sicher sein, dass jeder involviert bleibt und Informationen nicht in Vergessenheit geraten. Lesen Sie mehr dazu hier :ref:`Fälle <cases>`. Schauen wir uns zum Beispiel einen Prozess namens `Mitarbeitereinstellung` an. Jedes mal, wenn dieser Prozess gestartet wird, müssen drei Aufgaben erledigt werde, nämlich: `Bewerber interviewen`, `Vertrag vorbereiten` und `Email-Konto anlegen`. Jedes mal, wenn dieser Prozess gestartet wird, werden automatisch diese drei Aufgaben angelegt. Organisation Prozess Mehr zu Rollen erfahren Sie im Kapitel :ref:`Rollen <roles>` im Abschnitt :ref:`Prozesseditor <process-builder>`. Rolle Aufgabe Aufgaben sind die konkreten Tätigkeiten die von Personen ausgeführt werden müssen. In regulären Fällen (nicht ad-hoc) wird für jeden User-Task in einem Prozess eine Aufgabe angelegt. Begrifflichkeiten Es gibt verschiedene Arten von Aktionen: Ein User-Task erstellt eine Aufgabe in einem Fall, eine `Email` Aktivität verschickt eine Email und ein `Google Datei-Upload` lädt eine Datei zu Google hoch.  Auslöser 