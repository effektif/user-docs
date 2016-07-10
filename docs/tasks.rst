.. _tasks:

Tasks
=====

A task represents work that someone will presumably complete.
:ref:`cases` typically include multiple tasks, usually those that the process defines.
You can also add ad-hoc tasks to a case.

In Signavio Workflow, you can assign a task to a specific user, set a due date and add subtasks.

.. _tasks-inbox:

Viewing your tasks in the Inbox
-------------------------------

The *Inbox* shows an overview of your assigned tasks:
a list of tasks for you to work on.
To open the Inbox, select *Tasks* from the main menu
and select the *Inbox* tab.

.. figure:: /_static/images/tasks/inbox.png

   The tasks Inbox

Each task shows the assignee - you for all Inbox tasks - and a link to the task itself.

The left-hand side of the inbox has sections for tasks that have due dates,
so you can prioritise your work.
The right-hand side lists tasks that don’t have a due date.


Viewing all tasks
-----------------

The *All tasks* view shows tasks for all assignees.

.. figure:: /_static/images/tasks/all.png

   The list of all tasks


Tasks with due dates have a clock indicator to the right of the task name.
Signavio Workflow shows this indicator in red when a task’s due date has arrived.

You can use the controls on the right to filter the tasks list,
which you will find useful when the workload increases.


Task filters
------------

The *All tasks* view includes several kinds of task filters,
that you can use to manage a long list of tasks.

- *Involvement filter* - shows tasks according to how they relate to you,
  such as tasks you started.
- *Process* filter - shows tasks for a specific process.
- *Due date* filter - shows tasks according to their due dates,
  such as only overdue tasks.
- *Completed* filter - shows complete tasks, which the task list normally excludes.
- *Assignee filter* - shows tasks that have a specific assignee, or tasks that have a specific candidate.


Creating case tasks
-------------------

To create tasks, open a case, and use the tasks list to add a new task.
Enter the task title in the text box to create the task.

.. figure:: /_static/images/tasks/create/create-task.png

   Type the title of the new task and type Enter

After you have added a task, it appears in the list:

.. figure:: /_static/images/tasks/create/view-task.png

When a process starts, Signavio Workflow creates a :ref:`case <cases>` and starts all elements that do not have incoming transitions.


Assigning tasks
---------------

You can assign a task to yourself, or someone else, to indicate who you expect to work on the task.
The assignee’s :ref:`tasks inbox <tasks-inbox>` lists assigned tasks,
and the assignee receives task :ref:`notifications <notifications>` and :ref:`reminders <reminders>`.

You can assign a task from anywhere a task appears in a task list.
To assign the task, click the assignee button immediately to the left of the task name,
to open the list of candidates.

.. figure:: /_static/images/tasks/assign.png

   Assigning a task

To assign the task, select a candidate from the list, or type a name or email address to filter it first.


Viewing task details
--------------------

Selecting a task opens the task details view, which you can use to edit the task name, assign the task, or set a due date.
This is where you complete a task’s form, if it has one.
You can also add ad hoc subtasks.

.. figure:: /_static/images/tutorials/ad-hoc/task.png

   Details of a task within a case


Setting due dates
-----------------

You can set a task’s due date,
so that the assignee’s tasks inbox highlights overdue tasks.
To set a task’s due date, open the task, 
and select the clock icon to open the date selector.

.. figure:: /_static/images/tasks/due-date.png

   Setting a task’s due date

As well as setting the due date manually, in an open case,
you can also set a user task’s default due date in the process editor,
on the user task’s :ref:`reminders <reminders>` tab.


Completing tasks
-----------------

Use the highlighted `Done` button (the square on the green background) to complete a task.

When tasks have a form, the task page displays the form in the same position and includes the button(s) to complete the task at the bottom of the form.
The task page normally only includes a `Done` button, but will display multiple buttons when you use a decision.
Each of those buttons will register the decision and complete the task in one go.


Reopening tasks
---------------

When the task page shows a `Reopen` button, it means that someone completed the task but you can reopen it.
You cannot reopen a task that has a form, because completing the task finalises the form data.
You may want to reopen a task that you closed a task by accident,
or when you learn about additional work that belongs to this task.
If you just forgot to attach a document or make a comment, you can still do that without reopening the task.

Reopening a task instead of creating a new task has the advantage that
the existing task retains its context.
