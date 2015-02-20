.. _cases:

Cases
=====

What is a case
--------------

A case is a essentially a small collaboration space for a particular goal.
For example, 'Hire HR manager' or 'Send quote to customer X'.
Cases are typically bigger then a simple task for a single person and smaller then a project.
A case is used to break down the goal into concrete action items (or tasks) and to collaborate with others.
The case is the central place where all relevant context information about the topic is shared and discussed.

Create a case
-------------

To create a new case, navigate to Tasks, click 'Start new task' and then select 'Task'.

.. figure:: /_static/images/cases-newcase01.png

   Start a new task

Then the case header appears.

.. figure:: /_static/images/cases-newcase02.png

   Enter case title

Next, type the case title and hit Enter. The new case is now created and appears like this:

.. figure:: /_static/images/cases-newcase03.png

   New case

Create case tasks
-----------------

In a case, you can break down tasks like this.
If you don't have tasks, the tasks section might have to opened like shown in this scenario:

.. figure:: /_static/images/cases-newtask02.png

   Type the title of the new task and hit Enter

.. figure:: /_static/images/cases-newtask03.png

When a process is started, a :ref:`case <cases>` is created and all elements not having incoming transitions will be started.
So if you only use the :ref:`simple action list <action-list>` to create a list of user tasks, all those tasks in the list will be started immediate when the process starts.

Completing a task
-----------------

For ad hoc cases or tasks, there is a highlighted `Done` button to complete the task.

When tasks have a form, the form is displayed in the same position and it has the button(s) to complete the task at the bottom of the form.
Normally that will just be the `Done`-button, but in case of decisions, it can be multiple buttons.
Each of those buttons will register the decision and complete the task in one go.

:ref:`Process cases <term-process-case>` have a process associated that knows when the case is completed.
So usually those should not be completed manually.
The `Done` button is deactivated out or there is a label saying "Complete the tasks below".
When the last action of a process completes the process case will be closed automatically.

Reopening a task
----------------

When you see the `Reopen` button in a task, it means the task is completed.
Reopening is good when you closed a task by accident or when you realize more needs to be done for this task.
If you just forgot to attach a document or make a comment, you can still do that and you don't need to reopen the task for that.
Reopening a task can be better then creating a new task because it has all the context in it.

Starting a process
------------------

In the `Advanced flows` view, this means that start events are optional in most situations.

But in situations like this, that can be confusing:

.. figure:: /_static/images/start.event.1.png

   Start event necessary

Imagine we remove the start event, then there would be no elements without incoming transitions.
Then the process would start and nothing happens.
