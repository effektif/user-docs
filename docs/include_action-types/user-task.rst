.. _user-task:

User task
---------

.. figure:: /_static/images/action-types/user-task/user-task.png

   A user task in the process editor

A user task indicates that someone will perform a task.
In the configuration form, you can specify the following optional details.

* *General* - assign a task to a user or a :ref:`process role <roles>`.
* *Form* - add a form to a task; submit the form to complete the task.
* *Reminders* - task deadline notifications.
* *Escalations* -  automatic task reassignment.
* *Access Rights* - task permissions for users and groups.

General
^^^^^^^

Use the *General* tab to specify the task’s default assignee or candidates.
You can select either individual users or organisation groups as candidates.

.. figure:: /_static/images/action-types/user-task/assignment.png

   Configuring user task assignment in the process editor

You an also specify a role for the task’s assignment,
like a BPMN swim lane,
so that Signavio Workflow Accelerator automatically assigns related tasks to the same person.

Task name template
^^^^^^^^^^^^^^^^^^

You can use task name templates to create dynamic task names from :ref:`variables <variables>`.
Enter the task name template on the user task’s configuration panel’s *General* tab.
In the text field, type a `#` to select a variable.

.. figure:: /_static/images/action-types/user-task/name-template.png

   Using a task name template to configure dynamic task names

Use task name templates to avoid a :ref:`tasks` view that fills up with identically-named tasks.

Form
^^^^

Use the form builder to create a user task form for entering and updating data as part of the user task.

.. _reminders:

Reminders
^^^^^^^^^

Use the user task’s `Reminders` configuration panel tab to set up task deadline notifications.
If you configure a `Due date` or `Reminder` period,
then Workflow Accelerator will send email when the deadline expires.

.. figure:: /_static/images/action-types/user-task/reminders.png

   Configuring user task reminders in the process editor

The three settings work as follows.

* *Due date* specifies an automatic :ref:`task due date <tasks-due-dates>` relative to the task’s creation date, which results in a :ref:`case-task-due` notification, and changes how the task appears in the :ref:`Inbox <tasks-inbox>`
* *Reminder* works separately from the due date and only sends a :ref:`reminder <task-reminder>` notification, which you can use to remind task assignees and candidates earlier than the task deadline
* *Continue reminding* further configures the *Reminder* by repeating the :ref:`reminder <task-reminder>` notification up to 25 times

Workflow Accelerator sends these notifications to the task’s assignee if the task has an assignee,
or to all of the task’s candidates if the task it not assigned.
If the task remains unassigned and does not have any candidates,
Workflow Accelerator sends the notification to the process’ owner.

Escalations
^^^^^^^^^^^

You can also use the :ref:`Reminders <reminders>` configuration panel tab to configure escalations.
Use escalations to automatically reassign a user task when a deadline expires.

.. figure:: /_static/images/action-types/user-task/escalation.png

   Configuring user task escalation in the process editor

#. On the :ref:`Reminders <reminders>` configuration panel, select *Escalations*.
#. In the *After* field, set a period to wait after the task creation date, at which point Workflow Accelerator will automatically reassign the task.
#. In the *Escalate to* field, select a user or candidate group to escalate to, who will receive a :ref:`task escalation <task-escalation>` notification.

Sometimes, you don’t know who will take over a task that has passed its escalation deadline, so you choose one person in the process model.
Instead, you can escalate task assignment to multiple people, or select a group.

Access Rights
^^^^^^^^^^^^^

Use the `Access Rights` tab to set permissions for viewing, assigning and completing the task.
See :ref:`Restricting access to user tasks <user-task-access>` for details.
