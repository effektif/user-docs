.. _cases:

Cases
=====

A case is a essentially a small collaboration space for a particular goal.
For example, ‘Hire employee’ or ‘Sign contract’.
Cases are typically bigger then a simple task for a single person and smaller then a project.

A case is used to break down the goal into concrete action items (or tasks) and to collaborate with others.
The case is the central place where all relevant context information about the topic is shared and discussed.

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

To the right of these status bars are workflow data columns,
which you can customize.


Customizing case view table columns
-----------------------------------

The *Cases* view’s table includes columns for workflow :ref:`variables <variables>`,
which are usually form fields on a trigger form or in a user task.
You can select which fields are shown as table columns in the Cases view,
so you can have a clear overview of the process’ cases.

To customize the table columns,
open the Cases view and click the top-right *Configure columns* button.

.. figure:: /_static/images/cases/configure-columns.png

   Configuring table columns

Use the drag icon on the far left of the list of columns to change the column order,
and click the delete icon on the far right to remove a column.
You can also use the text box to edit the column’s heading.

Below the list of columns, is a menu for selecting additional column to add to the table.

.. figure:: /_static/images/cases/configure-columns-add.png

   Adding a column to the table

The menu lists all of the workflow variables that are not currently included in the table.
In this example, the *Interviewer* variable is a *User*,
which means that additional fields are available for the user’s email address,
first name, ID and last name.


Creating a case
---------------

To create a new case, navigate to *Cases*;
on the *Cases of* menu, select *Cases without a process*, then click *Start new case*.

.. figure:: /_static/images/cases/create/create-case.png

   Start a new task

Then the case header appears.

.. figure:: /_static/images/cases/create/name-case.png

   Enter case title

Next, type the case title and hit Enter. The new case is now created.

.. figure:: /_static/images/cases/create/view-case.png

   New case


Commenting on a case
--------------------

Working on a case often includes collaboration with other people.
You can use the case view to discuss the case with other people,
which results in a discussion in the event stream.

.. figure:: /_static/images/cases/comments/discussion.png

   Comments on a case - discussion with context

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
Effektif sends them an email notification to bring them into the discussion.

.. figure:: /_static/images/cases/comments/mention.png

   Mentioning someone in a comment

You can also mention two specific groups, corresponding to people who are working on the case, or perhaps should be.
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

The normal way to close a case is to complete all of its tasks.
However, sometimes you want to abandon a case and stop working on a it.
To do this you can manually close a case.

.. figure:: /_static/images/cases/cancel.png

   Closing a case

To close a case, select the ellipsis menu at the top-right of the case view,
select *Close this case*, and click again to confirm.


Deleting a case
---------------

You do not normally delete cases in Effektif: you close cases that you have finished working on.
However, sometimes it is appropriate to delete cases, such as the test cases that you create while developing the initial versions of a process model.

To delete a case, open the case and use its right-hand actions menu to select `Delete case`.
