.. _tasks:

Tasks
=====

A task represents work that someone is expected to complete.
:ref:`Cases <cases>` typically include multiple tasks,
which are usually part of the process definition.
You can also add ad-hoc tasks to a case.

In Effektif, a task may be assigned to a specific user, and have a due date and subtasks.

.. _tasks-inbox:

Viewing your tasks in the Inbox
-------------------------------

The *Inbox* shows an overview of tasks that are assigned to you:
a list of tasks for you to work on.
To open the Inbox, select *Tasks* from the main menu
and select the *Inbox* tab.

.. figure:: /_static/images/tasks/inbox.png

   The tasks Inbox

Each task shows the assignee, 
which is you for everything in the inbox,
and a link to the task itself.

The left-hand side of the inbox is split into sections for tasks that have due dates,
so you can prioritise your work.
Tasks that are assigned to you, but don’t have a due date, 
are listed on the right.


Viewing all tasks
-----------------

The *All tasks* view shows tasks for all assignees.

.. figure:: /_static/images/tasks/all.png

   The list of all tasks


Tasks with due dates have a clock indicator to the right of the task name.
This indicator is shown in red for tasks that are now due.

You can use the controls on the right to filter the tasks list,
which is useful when there is lots of work going on.


Task filters
------------

The *All tasks* view includes several kinds of task filters,
that you can use to manage a long list of tasks.

- *Involvement filter* - shows tasks according to how they relate to you,
  such as tasks you started.
- *Process* filter - shows tasks for a specific process.
- *Due date* filter - shows tasks according to when they are due,
  such as tasks that are overdue.
- *Completed* filter - shows tasks that are complete,
  which are normally hidden.


Creating case tasks
-------------------

To create tasks, open a case, and use the tasks list to add a new task.
Enter the task title in the text box to create the task.

.. figure:: /_static/images/tasks/create/create-task.png

   Type the title of the new task and type Enter

After you have added a task, it appears in the list:

.. figure:: /_static/images/tasks/create/view-task.png

When a process is started, a :ref:`case <cases>` is created and all elements not having incoming transitions will be started.
So if you only use the :ref:`simple action list <action-list>` to create a list of user tasks, all those tasks in the list will be started immediate when the process starts.


Assigning tasks
---------------

You can assign a task to yourself, or someone else, to indicate who is expected to work on the task.
An assigned task is listed in the assignee’s :ref:`tasks inbox <tasks-inbox>`,
and the assignee receives task notifications and :ref:`reminders <reminders>`.

You can assign a task from anywhere a task appears in a task list.
To assign the task, click the assignee button immediately to the left of the task name,
to open the list of candidates.

.. figure:: /_static/images/tasks/assign.png

   Assigning a task

To assign the task, select a candidate from the list, or type a name or email address to filter it first.


Completing tasks
-----------------

For tasks, there is a highlighted `Done` button (the square on the green background) to complete the task.

When tasks have a form, the form is displayed in the same position and it has the button(s) to complete the task at the bottom of the form.
Normally there will just be a `Done` button, but there may also be multiple buttons when you use a decision.
Each of those buttons will register the decision and complete the task in one go.


Reopening tasks
---------------

When you see the `Reopen` button in a task, it means the task is completed.
You may want to reopen a task that you closed a task by accident,
or when you learn about additional work that needs to be done for this task.
If you just forgot to attach a document or make a comment, you can still do that without reopening the task.

The advantage of reopening a task instead of creating a new task is that 
the existing task retains its context.
