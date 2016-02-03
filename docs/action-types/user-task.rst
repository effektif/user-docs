.. _user-task:

User task
---------

.. figure:: /_static/images/action-types/user-task.png

   A user task in the process editor

A user task means a user has to perform a task.
In the :ref:`case <cases>`, a task will be created. In the configuration form, the following optional details can be specified.

* *Assignment* - a task can be assigned to a user or a :ref:`process role <roles>`.
* *Form* - a task can be given a form. To complete the task, the form has to be submitted.
* *Reminders* - task deadline notifications.
* *Escalations* -  automatic task reassignment.
* *Access Rights* - task permissions for users and groups.

Assignment
^^^^^^^^^^

Use the assignment tab to specify the task’s default assignee or candidates.
Candidates can be individual users or organisation groups.

.. figure:: /_static/images/action-types/user-task-assignment.png

   Configuring user task assignment in the process editor

You an also specify a role for the task’s assignment,
like a BPMN swim lane,
so that related tasks are automatically assigned to the same person.

Form
^^^^

Use the form builder to create a user task form for entering and updating data as part of the user task.

.. _reminders:

Reminders
^^^^^^^^^

Use the user task’s `Reminders` configuration panel tab to set up task deadline notifications.
If you configure a `Due date` or `Reminder` period,
then Effektif will send email when the deadline expires.

.. figure:: /_static/images/action-types/user-task-reminders.png

   Configuring user task reminders in the process editor

Effektif sends these notifications to the task’s assignee if the task is assigned,
or to all of the task’s candidates if the task it not assigned.
If the task is unassigned and there are no candidates,
Effektif sends the notification to the process’ owner.

Escalations
^^^^^^^^^^^

You can also use the :ref:`Reminders <reminders>` configuration panel tab to configure escalations.
If you configure an `Escalation` period and an assignee,
then Effektif will automatically reassign the task when the deadline expires,
and send a notification to the new assignee.

Access Rights
^^^^^^^^^^^^^

Use the `Access Rights` tab to set permissions for viewing, assigning and completing the task.
See :ref:`Restricting access to user tasks <user-task-access>` for details.

