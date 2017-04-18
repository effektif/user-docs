��    Y      �              �  R   �  ,      $   -  5   R  W   �     �  �   �    �     �     �     �  +  �    
     3  d   Q  |   �     3  8   F          �     �     �  ,   �  #   �          ,  �   <     �     �  ^     :   o  5   �  D   �  �   %  �   �  �   �     ?     _  W   h     �  �   �  E   �  .       7     H     d  |   |     �  �     9   �  (   �  |   "  X   �  7   �  2   0  0   c  �   �  |     y   �      e       {  [   �  Y   �  �   O  i   M  �   �  �   :  g   �  \   +   �  �   �   "  ;   �"  +   !#     M#     b#  �   p#  �   &$  e   �$  b   c%  ]  �%  �   $'  �   (  d   )  �   t)  Y    *  C   z*  M   �*  R  +  Z   _,  /   �,  '   �,  M   -  W   `-     �-  �   �-  �   {.  '   i/  '   �/  #   �/  f  �/  "  D1  %   g2  �   �2  �   3     �3  A   �3     4     &4     <4     V4  2   n4  *   �4     �4     �4  �   �4     �5     �5  ^   �5  P   I6  M   �6  p   �6  �   Y7  �   <8  �   )9  %   �9  
   %:  t   0:     �:  �  �:  N   �<  _  �<     />  #   I>     m>  ~   �>  5  
?  �   @@  B   �@  I   AA  �   �A  ^   B  8   pB  6   �B  9   �B  �   C  �   �C  �   +D  $  �D  �  �E  ;   �G  S   �G  g   DH  i  �H  w   J  �   �J  �   xK  �   TL  }   �L    TM  c  cO  O   �P  3   Q     KQ     _Q  �   oQ    ;R  r   KS  �   �S  �  CT  >  �U  I  W  W   PX    �X  ]   �Y  M   
Z  O   XZ   *Excel (Northern Europe)* - better Excel compatibility for some European countries *Excel* - Microsoft Excel compatibility mode *Standard* - conventional CSV format *Tabs* - separate values with tabs instead of commas. :ref:`intermediate-timer-event` - which you can :ref:`skip manually <tasks-skip-timer>` :ref:`sub-process` A *process case* uses the latest version of the workflow defined by a published process. It creates a collaboration space for working towards a predefined goal. A case breaks the goal down into concrete action items (or tasks) so you can collaborate with other people. The case brings together a set of tasks, a discussion and documents, and allows participants to share any relevant context information for the tasks. A document attached to a case A hyperlink in a case comment Adding a column to the table As well as commenting on a case, to share information with the case’s participants, you can attach documents. For example, cases in a job vacancy process might require candidate CVs. Anyone can access the case can download a case’s documents, which makes them more useful than email attachments. At this stage, the case will wait for the *Payment recovery* sub-process before it creates the next task in the invoice process. Until then, the *Tasks* list will continue to only show the completed task, and the *Other open activities* list shows a link to the sub-process case. Attaching documents to a case Below the list of columns, you’ll find a menu for selecting additional column to add to the table. By using case comments instead of email, participants ensure that discussions retain the full context for everyone involved. CSV export options Case details view, showing one task and the event stream Cases Closing a case Closing a case manually Commenting on a case Comments on a case - discussion with context Configuring case view table columns Configuring table columns Deleting a case Each case has an event stream that acts as an audit log and includes the information that case participants share during collaboration, such as comments, documents and links. Enter case name Exporting cases data For example, consider a customer invoice process that includes a payment recovery sub-process. Hover over the grey bar to see a case’s completed tasks. Hover over the open bar to see a case’s open tasks. Hover over the relative time to see the comment’s full time stamp: If cases regularly require the same document as part of the process, you can make this clearer to people who work on cases by adding a file upload form field to a :ref:`user task form <user-task-form>`. If the process does not define a trigger, then you enter a case name as when :ref:`start-adhoc`. Other trigger types generate their own case names, or use a :ref:`case name template <details>`. In the event stream, reply to existing comments to keep the discussion structured. Hover over the user avatar to see the user’s full name: Mentioning someone in a comment New case Next, type the case title and hit Enter. Workflow Accelerator now creates the new case. Other open activities Signavio Workflow Accelerator supports two types of cases: cases that relate to a process and ad-hoc cases. An *ad-hoc case* does not have a predefined process. It creates a collaboration space that you can use to reach a one-off goal. Someone completed the *Check payment* task, with the result *Unpaid*. Sometimes, you want to direct a comment to a specific person. While entering a comment, you can ‘mention’ someone by typing a ``@`` and choosing their name from the list. When you mention someone in a comment, Workflow Accelerator sends them an email notification to bring them into the discussion. Start a new task Starting a new process case Starting an ad-hoc case The *Cases* view shows an overview of cases for a single process. To open the Cases view, select *Cases* from the main menu. The *Cases* view’s table includes columns for workflow :ref:`variables <variables>`, which usually correspond to form fields on a trigger form or in a user task. You can select which fields the Cases view shows as table columns, so you can have a clear overview of the process’ cases. The CSV export uses *UTF-8 text encoding*. Select *UTF-8* when opening the CSV in Microsoft Excel, for example, to preserve characters such as letters with accents. The Cases view - cases of the ‘Hire employee’ process The case created a *Check payment* task. The case details view shows the case name, with case participants’ avatar pictures underneath, and the case’s task list. The case details view, showing a link to a sub-process under ‘Other open activities’ The case sent a payment reminder email to the customer. The case started a *Payment recovery* sub-process. The case started by sending an invoice by email. The case view lists the following types of open activity under the *Other open activities* heading, underneath the *Tasks* list: The case’s event stream shows the document, with its file name and size. Click the icon on the right to open the document. The grey and green status bars show information about completed and open tasks when you hover the mouse cursor over them. The menu lists all of the workflow variables that the table does not currently include. In this example, the *Interviewer* variable has the type *User*, which means that you can access additional fields for the user’s email address, first name, ID and last name. The table shows cases for the *Hire employee* process. You can use the menu above the table to select a different process, ad hoc cases that don’t have a process, or cases of a deleted process. Each case in the table show the case name, grey and green task status bars, and additional columns that show the values of workflow :ref:`variables <variables>`. Then the case header appears. These status bars appear to the left of the workflow data columns, which you can customize. This *Invoice customer* example shows the following event stream, in chronological order. To add a comment, type in the text box above the event stream. Everyone who has access to the case can follow the discussion. Keeping the discussion ‘inside’ the case preserves the context, which makes it easier to follow than an email conversation. To attach a document to a case, select the the `Upload a document` option next to where you add comments. To close a case, select the ellipsis menu at the top-right of the case view, select *Close this case*, and click again to confirm. To create a new ad-hoc case, navigate to *Cases*; on the *Cases of* menu, select *Cases without a process*, then click *Start new case*. To customize the table columns, open the Cases view and click the top-right *Configure columns* button. To delete a case, open the case and use its right-hand actions menu to select `Delete case`. Use the CSV export options to specify the ordering of exported cases, whether to filter by status (open or closed), and the output format. Try a different output format option if you have problems loading the exported CSV file into another application, such as Microsoft Excel. The output format options determine which characters the CSV output uses to quote and separate characters and lines: Use the drag icon on the far left of the list of columns to change the column order, and click the delete icon on the far right to remove a column. You can also use the text box to edit the column’s heading. Use the linked case name to open the case’s details page. Using Markdown formatting in a case comment Viewing case details Viewing cases Working on a case often includes collaboration with other people. You can use the case view to discuss the case with other people, which results in a discussion in the event stream. You can also mention two specific groups, corresponding to people working on the case. Enter ``@all`` to mention all participants in the case. Enter ``@open`` to mention the assignees of open tasks within the case. You can also use `Markdown`_ formatting in comments, for things like text styles, headings and lists. You can create a new process case by selecting the *Start new case* button in one of three places: You can export the information about a process’ cases to a `CSV file <https://en.wikipedia.org/wiki/Comma-separated_values>`_ that you can open in a spreadsheet. To export case data, open the :ref:`Cases overview <cases-overview>`, select a process, and then select *Export as CSV*. You may find this useful for reporting or auditing, for example. You can use a case as a small collaboration space for a particular goal. For example, ‘Hire employee’ or ‘Sign contract’. Cases typically represent more work than a simple task for a single person, but less than a whole project. You do not normally delete cases in Workflow Accelerator: you close cases that you have finished working on. However, you sometimes do need to delete cases, such as the test cases that you create while developing the initial versions of a process model. You may find Markdown most useful for adding links to external information that relates to the case. You normally close a case by completing all of its tasks. However, sometimes you want to abandon a case and stop working on a it. To do this you can manually close a case. in the process builder, on the :ref:`versions` page, next to the latest published version on the *Processes* page, next to the name of each published process on the :ref:`cases overview <cases-overview>` page, for the selected process. Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-18 09:47+0200
PO-Revision-Date: 2017-04-12 18:12+0200
Last-Translator: Timotheus Kampik <timotheus.kampik@signavio.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 *Excel (Northern Europe)* - Bessere Excel-Kompatibilität für einige europäische Länder *Excel* - Microsoft Excel Kompatibilitätsmodus *Standard* - Konventionelles CSV-Format *Tabs* - trennen Sie die Werte mit Tabs (Tabulatortaste) anstelle von Kommas. :ref:`intermediate-timer-event` - which you can :ref:`skip manually <tasks-skip-timer>` :ref:`sub-process` Ein *Prozessfall* verwendet immer die neuste veröffentlichte Prozessversion. Der Fall erstellt einen Raum, in dem zusammen auf ein gemeinsames Ziel hingearbeitet werden kann. Fälle können ein größeres Ziel in kleinere Teilaufgaben zu zerlegen, um die Zusammenarbeit mit Kollegen zu vereinfachen. In einem Fall können so alle relevanten Informationen rund um das Thema zusammengetragen und diskutiert werden. Ein an einen Fall angehängtes Dokument Einen Link in einem Kommentar verwenden Eine Spalte zur Tabelle hinzufügen Um Informationen zu kommunizieren, können Sie zudem Dokumente an einen Fall anhängen. Zum Beispiel ist es in einem Bewerbungsprozess sinnvoll, den Lebenslauf des Bewerbers im Fall zu hinterlegen. Jede Person, die auf den Fall Zugreifen kann, kann direkt dort den Lebenslauf herunterladen und einsehen. Dies verhindert umständliches Suchen im Email-Archiv. Nun wartet das System auf den Abschluss des Unterprozesses, bevor es die nächste Aktivität des Falls erstellt. Bis dann wird die *Aktivitäten*-Liste lediglich abgeschlossene Aktivitäten anzeigen, während die *Weitere Aktivitäten*-Liste einen Link zum Fall des Unterprozesses enthält. Ein Dokument an einen Fall anhängen. Unter der Liste mit den aktuell gewählten Spalten befindet sich ein Menü, mit dem Sie weitere Spalten zur Tabelle hinzufügen können. Durch die Verwendung von Fallkommentaren anstatt von E-Mails stellen Sie sicher, dass der volle Kontext der Diskussion für alle Beteiligten über den Fall hinweg einsehbar bleibt CSV-Exportoptionen Die Fall-Detailansicht zeigt eine Aufgabe und den Ereignisfeed an Fälle Einen Fall schließen Fälle manuell schließen Einen Fall kommentieren Kommentare eines Falls - Diskussion im Fallkontext Die Spalten in der Fälle-Ansicht anpassen Tabellen-Spalten konfigurieren Einen Fall löschen Jeder Fall besitzt einen Ereignisfeed das als Audit-Log dient und die Informationen beinhaltet, die Fallbeteiligte während ihrer Zusammenarbeit teilen, z.B. Kommentare, Dokumente und Links. Einen Namen eintragen Falldaten exportieren For example, consider a customer invoice process that includes a payment recovery sub-process. Fahren Sie über den grauen Balken um bereits abgeschlossene Aufgaben zu sehen.  Fahren Sie über den grünen Balken um noch offene Aufgaben im Fall zu sehen. Bewegen Sie den Mauszeiger über die Zeitangabe, um die genaue Datums- und Zeitangabe des Kommentars einzusehen. Wenn Fälle regelmäßig einen bestimmten Dokumenttyp erfordern (zum Beispiel *Lebenslauf*), ist es sinnvoll hierfür explizit ein Dateiupload-Formular zum entsprechenden :ref:`Aufgabenformular <user-task-form>` hinzuzufügen. Falls der Prozess keinen vordefinierten Auslöser besitzt, geben Sie einen Fallnamen ein, wie beim :ref:`start-adhoc`. Andere Auslöser-Typen generieren ihre eigenen Fallnamen oder verwenden eine :ref:`Vorlage für Fallnamen <details>`. In dem Ereignisfeed können Sie auf existierende Kommentare antworten, um die Diskussion zu lenken. Wenn Sie mit dem Mauszeiger über das Anzeigebild eines Nutzers gehen, wird dessen vollständiger Name angezeigt: Jemanden in einem Kommentar erwähnen Neuer Fall Als Nächstes benennen Sie den neuen Fall und drücken Sie anschließend auf Enter. Der neue Fall wird nun angelegt. Weitere Aktivitäten Signavio Workflow Accelerator unterstützt zwei Arten von Fällen: Fälle, die mit einem Prozess verknüpft sind und Ad-Hoc Fälle. Ein *Ad-Hoc Fall* besitzt keinen vorgefertigten Prozess. Er ermöglicht einen Raum für Zusammenarbeit bei einzigartigen Zielsetzungen. Der Fall beinhaltet eine Anzahl von Aktionen, eine Plattform für Diskussionen und Dokumente und erlaubt Beteiligten, jeglichen für Aktionen relevanten Kontext untereinander zu teilen. Der *Zahlung überprüfen*-Task wird mit dem Ergebnis *nicht bezahlt* beendet. In bestimmten Fällen wollen Sie einen Kommentar an eine spezifische Person adressieren. Dies erreichen Sie, indem im Textfeld ein ``@`` eingeben und den gewünschten Namen aus der anschließend angezeigten Liste auswählen. Wenn Sie jemanden in einem Kommentar erwähnen, sendet Signavio Workflow Accelerator dieser Person eine Emailbenachrichtigung. Eine neue Aufgabe starten Erstellen eines neuen Prozessfalles Erstellen eines Ad-Hoc-Falles Die *Fälle*-Ansicht zeigt alle Fälle zu einem bestimmten Prozess. Um Sie zu öffnen, wählen Sie *Fälle* im Hauptmenü aus. Die Tabelle in der *Fälle*-Ansicht enthält :ref:`Variablen <variables>` aus Ihrem Workflow. Normalerweise sind dies Formularfelder aus dem Auslöser oder Aufgaben. Sie können Konfigurieren welche Felder hier ausgewählt werden, damit Sie immer einen klaren Überblick über die Fälle Ihrer Prozesse haben. Der CSV-Export verwendet *UTF-8 Text Encoding*.  Wählen Sie *UTF-8*, wenn Sie die CSV-Datei in Microsoft Excel öffnen, z.B. um spezielle Zeichen, wie Buchstaben mit Akzent, beizubehalten. Die Fälle-Ansicht - Fälle des 'Mitarbeiter einstellen' Prozesses Im Fall wird automatisch eine *Zahlung überprüfen*-Aktivität erstellt. Die Fall-Detailansicht zeigt den Fallnamen mit den Profilbildern der Prozessbeteiligten darunter und die Aufgabenliste des Falles an. Die Fall-Detailansicht zeigt einen Link zu einem Unterprozess under *Weitere Aktivitäten* an. Das System verschickt eine Zahlungserinnerung per Email. Der Fall startet den Unterprozess *Zahlung einziehen*. Der Fall beginnt mit dem Senden einer Rechnung per Email. The case view lists the following types of open activity under the *Other open activities* heading, underneath the *Tasks* list: Der Ereignisfeed des Falls zeigt das Dokument mit Dateinamen und -Größe. Klicken Sie auf das *Link*-Symbol rechts um das Dokument zu öffnen. Die grauen und grünen Statusbalken zeigen Ihnen zusätzliche Information zu offenen und schon erledigten Aufgaben an, wenn Sie mit der Maus darüber fahren.  Das Menü listet alle verfügbaren Variablen auf, die momentan noch nicht in der Tabelle angezeigt werden. Da die *Interviewer*-Variable vom Typ *Nutzer* ist, stehen hier zusätzliche Felder wie zum Beispiel die E-Mail Adresse oder der Vor- und Nachname des jeweiligen Nutzers zur Verfügung. Die Tabelle zeigt alle Fälle für den Prozess *Mitarbeiter einstellen*. Sie können das Menü am oberen Rand dazu benutzen um Fälle eines anderen Prozesses , Fälle die keinem Prozess zugeordnet sind oder Fälle gelöschter Prozesse einzusehen. Zu jedem Fall sehen Sie den Fallnamen, die Statusbalken für die abgeschlossenen, sowie noch offenen Aufgaben und weitere Spalten, die aktuelle Werte von :ref:`Variablen <variables>` im Workflow anzeigen.  Nach diesem Schritt erscheint der Kopfteil des neuen Falls. Rechts von den Statusbalken finden Sie Datenspalten, die Sie auch anpassen können. Im Beispiel *Zahlung sicherstellen* treten die folgenden Ereignisse in chronologischer Reihenfolge auf. Um einen Kommentar hinzuzufügen, geben Sie den Text in das Textfeld über dem Ereignisfeed ein. Alle Personen, die Zugang zum Fall haben, können die Diskussion mitverfolgen. Dadurch, dass Sie die Diskussion 'direkt im Fall' halten, bleibt der Kontext erhalten. Dies erleichtert das Zuordnen von Information, insbesondere im Vergleich zu E-Mail Konversationen. Um ein Dokument an einen Fall anzuhängen, wählen Sie die `Ein Dokument hochladen`-Option neben dem Kommentarfeld aus. Um einen Fall zu schließen, öffnen Sie das Fall-Menü in der oberen rechten Ecke der Fall-Ansicht und klicken Sie auf “Fall schließen”. Um die Aktion zu bestätigen, klicken Sie direkt danach noch einmal auf die Schaltfläche. Um einen neuen Ad-Hoc Fall zu erstellen, navigieren Sie oben zum Tab *Fälle*, im *Fälle von*-Menü wählen Sie *Fälle ohne Prozess*. In der Auswahl erscheint *Ad-Hoc Aufgabenlisten*, klicken Sie *Neuen Fall starten*. Um die Spalten anzupassen, öffnen Sie die Fälle-Ansicht und klicken Sie auf *Spalten konfigurieren* in der oberen rechten Ecke. Öffnen Sie zum Löschen den entsprechenden Fall und wählen Sie über das Aktionsmenü auf der rechten Seite `Löschen` aus. Benutzen Sie die CSV-Exportoptionen, um die Reihenfolge der exportierten Fälle und das Ausgabeformat festzulegen. Sie können auch bestimmen, ob nach Status (offen oder geschlossen) gefiltert werden soll. Probieren Sie verschiedene Ausgabeoptionen aus, falls die exportierten CSV-Dateien nicht korrekt in anderen Applikationen, wie Microsoft Excel, angezeigt oder geladen werden. In den Ausgabeoptionen können Sie bestimmen, welche Zeichen das CSV-Ausgabesystem  für Zitate und zur Trennung von Werten und Zeilen verwendet: Sie können die Reihenfolge einfach per Drag & Drop ändern, wenn Sie die einzelnen Einträge am äußeren linken Rand anfassen und nach oben oder unten ziehen. Klicken Sie auf das 'X' Symbol am rechten Rand um eine Spalte zu entfernen. Selbst den Titel einer Spalte können Sie einfach ändern, indem Sie den gewünschten Titel in das Textfeld eintragen. Benutzen Sie den verlinkten Fallnamen um die Details-Seite des Falls aufzurufen Markdown zur Formatierung von Kommentaren verwenden Falldetails ansehen Fälle einsehen Bei der Bearbeitung eines Falls arbeiten Sie oft mit anderen Personen zusammen. Über die Fallansicht können Sie den Fall mit Arbeitspartnern diskutieren. Die Diskussion wird als Ereignisfeed angezeigt. Sie können zudem zwei spezifische Gruppen erwähnen, die den Fall bearbeiten (sollen). Geben Sie ``@all`` ein, um alle Personen, die in den Fall involviert sind, zu erwähnen. Geben Sie ``@open`` ein, um alle Personen zu erwähnen, denen offene Aufgaben zugewiesen sind. Sie können zudem `Markdown`_ in den Kommentaren verwenden, um zum Beispiel Überschriften und Listen einzufügen. Sie können einen neuen Fall erstellen, indem Sie den Button *Neuen Fall starten* an einem dieser 3 Orte in der Applikation klicken: Sie können Informationen über die Fälle eines Prozesses als `CSV-Tabelle <https://de.wikipedia.org/wiki/CSV_(Dateiformat)>`_ exportieren. Um Falldaten zu exportieren, öffnen Sie die :ref:`Fallübersicht <cases-overview>`, wählen Sie einen Prozess aus und klicken Sie auf *Als CSV exportieren*. Auf Basis der Exports können Sie zum Beispiel Reports erstellen und Audits vorbereiten. Sie können Fälle als Arbeitsbereich für ein bestimmtes Ziel verwenden. Dies können zum Beispiel Aufgaben wie 'Mitarbeiter einstellen' oder 'Vertrag unterschreiben' sein. In der Regel sind Fälle umfangreicher als normale Aufgaben die von einer Person erledigt werden können und kleiner als ein Komplettes Projekt. Normalerweise werden Fälle in Signavio Workflow Accelerator nicht gelöscht, sondern geschlossen, wenn sie beendet worden sind. Dennoch kann es hin und wieder nötig sein, einen Fall zu löschen, wie z.B. Testfälle, die Sie während der Modellierung des Prozesses laufen lassen, um den korrekten Ablauf eines Falles zu prüfen. Markdown ist besonders nützlich um Links zu externen Informationsquellen zu erstellen. Normalerweise wird ein Fall geschlossen wenn alle Aufgaben erledigt wurden. Allerdings kann es vorkommen, dass Sie einen Fall vorzeitig schließen möchten, da nicht weiter an ihm gearbeitet werden soll. In diesem Fall können Sie den Fall manuell schließen. Im Prozesseditor im Tab  :ref:`versions`,  rechts neben der neusten veröffentlichten Version Im Tab *Prozesse,* rechts neben dem Namen bei jedem veröffentlichten Prozess Im Tab :ref:`Fälle, <cases-overview>` des ausgewählten Prozesses rechts oben. 