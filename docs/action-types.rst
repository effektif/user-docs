.. _action-types:

Action Types
============

All actions are displayed as lines in the 'Simple action list' and as rounded rectangles in the 'Advanced flows' view.

Actions typically have a configuration panel that opens up when you select the action.

.. _user-task:

User task
---------

.. figure:: /_static/images/action-types/user-task.png

   A user task in the process editor

A user task means a user has to perform a task.
In the :ref:`case <cases>`, a task will be created.
Use the configuration form to specify the following optional details.

* *General* - assign a user or a :ref:`process role <roles>`.
* *Form* - add a form, which means submitting the form to complete the task.
* *Reminders* - task deadline notifications.
* *Escalations* -  automatic task reassignment.
* *Access Rights* - task permissions for users and groups.

General
^^^^^^^

Use the *General* tab to specify the task’s default assignee or candidates.
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

.. _send-email:

Send email
----------

.. figure:: /_static/images/action-types/email-task.png

   A send email task in the process editor

The send email action sends an email to the specified user.
In the configuration you can specify

To:
    The people to which the email is sent.
    You can type a plain email address, select a variable, a variable field or a user in the organization.

Subject:
    The subject of the email.
    To use process data in the subject, start by typing a `#`.
    If the list of variable fields is too long, you can just keep typing after the `#` to narrow the list.
    In combination, use the up and down arrows to select the right field.
    Hit enter to select the field.
    To remove variable fields from the subject, just delete it like it's normal text.

Attachments:
    To add attachments, click the attachments field.
    If there are files in the workflow variables, they will be shown.
    Select one of the file variable fields to add these as attachments to the mail.

Body text:
    Just like in the subject, you can combine template text with variable fields to Start by typing a `#`.
    See *Subject* above in this list for more details instructions on using the `#`.


.. include:: action-types/google.rst
.. include:: action-types/box.rst
.. include:: action-types/javascript.rst
