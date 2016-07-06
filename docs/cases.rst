.. _cases:

Cases
=====

You can use a case as a small collaboration space for a particular goal.
For example, ‘Hire employee’ or ‘Sign contract’.
Cases typically represent more work than a simple task for a single person, but less than a whole project.

A case breaks the goal down into concrete action items (or tasks) so you can collaborate with other people.
The case brings together a set of tasks, a discussion and documents, and allows participants to share any relevant context information for the tasks.


.. _start-adhoc:

Starting an ad-hoc case
-----------------------

Signavio Workflow supports two types of cases: cases that relate to a process and ad-hoc cases.
An *ad-hoc case* does not have a predefined process.
It creates a collaboration space that you can use to reach a one-off goal.

To create a new ad-hoc case, navigate to *Cases*;
on the *Cases of* menu, select *Cases without a process*, then click *Start new case*.

.. figure:: /_static/images/cases/create/create-case.png

   Start a new task

Then the case header appears.

.. figure:: /_static/images/cases/create/name-case.png

   Enter case name

Next, type the case title and hit Enter. Signavio Workflow now creates the new case.

.. figure:: /_static/images/cases/create/view-case.png

   New case


Starting a new process case
---------------------------

A *process case* uses the latest version of the workflow defined by a published process.
It creates a collaboration space for working towards a predefined goal.

You can create a new process case by selecting the *Start new case* button in one of three places:

#. in the process builder, on the :ref:`versions` page, next to the latest published version
#. on the *Processes* page, next to the name of each published process
#. on the :ref:`cases overview <cases-overview>` page, for the selected process.

If the process does not define a trigger, then you enter a case name as when :ref:`start-adhoc`.
Other trigger types generate their own case names, or use a :ref:`case name template <details>`.


.. _cases-overview:

Viewing cases
-------------

The *Cases* view shows an overview of cases for a single process.
To open the Cases view, select *Cases* from the main menu.

.. figure:: /_static/images/cases/cases.png

   The Cases view - cases of the ‘Hire employee’ process

The table shows cases for the *Hire employee* process.
You can use the menu above the table to select a different process,
ad hoc cases that don’t have a process,
or cases of a deleted process.
Each case in the table show the case name,
grey and green task status bars,
and additional columns that show the values of workflow :ref:`variables <variables>`.

The grey and green status bars show information about completed and open tasks
when you hover the mouse cursor over them.

.. figure:: /_static/images/cases/completed-tasks.png

   Hover over the grey bar to see a case’s completed tasks.

.. figure:: /_static/images/cases/open-tasks.png

   Hover over the open bar to see a case’s open tasks.

These status bars appear to the left of the workflow data columns,
which you can customize.

Use the linked case name to open the case’s details page.


Viewing case details
--------------------

The case details view shows the case name, with case participants’ avatar pictures underneath, and the case’s task list.

.. figure:: /_static/images/tutorials/ad-hoc/document-task.png

   Case details view, showing one task and the event stream

Each case has an event stream that acts as an audit log and includes the information that case participants share during collaboration, such as comments, documents and links.


Customizing case view table columns
-----------------------------------

The *Cases* view’s table includes columns for workflow :ref:`variables <variables>`,
which usually correspond to form fields on a trigger form or in a user task.
You can select which fields the Cases view shows as table columns,
so you can have a clear overview of the process’ cases.

To customize the table columns,
open the Cases view and click the top-right *Configure columns* button.

.. figure:: /_static/images/cases/configure-columns.png

   Configuring table columns

Use the drag icon on the far left of the list of columns to change the column order,
and click the delete icon on the far right to remove a column.
You can also use the text box to edit the column’s heading.

Below the list of columns, you’ll find a menu for selecting additional column to add to the table.

.. figure:: /_static/images/cases/configure-columns-add.png

   Adding a column to the table

The menu lists all of the workflow variables that the table does not currently include.
In this example, the *Interviewer* variable has the type *User*, which means that you can access additional fields for the user’s email address, first name, ID and last name.


:: _comments:

Commenting on a case
--------------------

Working on a case often includes collaboration with other people.
You can use the case view to discuss the case with other people,
which results in a discussion in the event stream.

.. figure:: /_static/images/cases/comments/discussion.png

   Comments on a case - discussion with context

By using case comments instead of email, participants ensure that discussions retain the full context for everyone involved.

In the event stream, reply to existing comments to keep the discussion structured.
Hover over the user avatar to see the user’s full name:

.. figure:: /_static/images/cases/comments/user.png

Hover over the relative time to see the comment’s full time stamp:

.. figure:: /_static/images/cases/comments/time.png

To add a comment, type in the text box above the event stream.
Everyone who has access to the case can follow the discussion.
Keeping the discussion ‘inside’ the case preserves the context,
which makes it easier to follow than an email conversation.

Sometimes, you want to direct a comment to a specific person.
While entering a comment, 
you can ‘mention’ someone by typing a ``@`` and choosing their name from the list.
When you mention someone in a comment,
Signavio Workflow sends them an email notification to bring them into the discussion.

.. figure:: /_static/images/cases/comments/mention.png

   Mentioning someone in a comment

You can also mention two specific groups, corresponding to people working on the case.
Enter ``@all`` to mention all participants in the case.
Enter ``@open`` to mention the assignees of open tasks within the case.

You can also use `Markdown`_ formatting in comments,
for things like text styles, headings and lists.

.. _Markdown: http://daringfireball.net/projects/markdown/basics

.. figure:: /_static/images/cases/comments/link-markdown.png

   Using Markdown formatting in a case comment

You may find Markdown most useful for adding links to external information that relates to the case.

.. figure:: /_static/images/cases/comments/link-rendered.png

   A hyperlink in a case comment


Attaching documents to a case
-----------------------------

As well as commenting on a case, to share information with the case’s participants, you can attach documents.
For example, cases in a job vacancy process might require candidate CVs.
Anyone can access the case can download a case’s documents, which makes them more useful than email attachments.

To attach a document to a case, select the the `Upload a document` option next to where you add comments.

.. figure:: /_static/images/cases/document.png

   A document attached to a case

The case’s event stream shows the document, with its file name and size.
Click the icon on the right to open the document.

If cases regularly require the same document as part of the process, you can make this clearer to people who work on cases by adding a file upload form field to a :ref:`user task form <user-task-form>`.


Closing a case manually
-----------------------

You normally close a case by completing all of its tasks.
However, sometimes you want to abandon a case and stop working on a it.
To do this you can manually close a case.

.. figure:: /_static/images/cases/cancel.png

   Closing a case

To close a case, select the ellipsis menu at the top-right of the case view,
select *Close this case*, and click again to confirm.


Deleting a case
---------------

You do not normally delete cases in Signavio Workflow: you close cases that you have finished working on.
However, you sometimes do need to delete cases, such as the test cases that you create while developing the initial versions of a process model.

To delete a case, open the case and use its right-hand actions menu to select `Delete case`.


Exporting cases data
--------------------

You can export the information about a process’ cases to a `CSV file <https://en.wikipedia.org/wiki/Comma-separated_values>`_ that you can open in a spreadsheet.
To export case data, open the :ref:`Cases overview <cases-overview>`, select a process, and then select *Export as CSV*.
You may find this useful for reporting or auditing, for example.

.. figure:: /_static/images/cases/csv-export-options.png

   CSV export options

Use the CSV export options to specify the ordering of exported cases, whether to filter by status (open or closed), and the output format.
Try a different output format option if you have problems loading the exported CSV file into another application, such as Microsoft Excel.
The output format options determine which characters the CSV output uses to quote and separate characters and lines:

* *Standard* - conventional CSV format
* *Excel* - Microsoft Excel compatibility mode
* *Excel (Northern Europe)* - better Excel compatibility for some European countries
* *Tabs* - separate values with tabs instead of commas.

The CSV export uses *UTF-8 text encoding*.
Select *UTF-8* when opening the CSV in Microsoft Excel, for example, to preserve characters such as letters with accents.
