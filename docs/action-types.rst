.. _action-types:

Action Types
============

All actions are displayed as lines in the 'Simple action list' and as rounded rectangles in the 'Advanced flows' view.

Actions typically have a configuration panel that opens up when you select the action.

User task
---------

.. figure:: /_static/images/action-types/user-task.png

   A user task in the process editor

A user task means a user has to perform a task.
In the :ref:`case <cases>`, a task will be created. In the configuration form, following optional details can be specified:

Assignment:
    A task can be assigned to a user or a :ref:`process role <roles>`
Form:
    A task can be given a form. To complete the task, the form has to be submitted.
Reminders:
    Reminder emails and escalations.

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
    If there are files in the process variables, they will be shown.
    Select one of the file variable fields to add these as attachments to the mail.

Body text:
    Just like in the subject, you can combine template text with variable fields to Start by typing a `#`.
    See *Subject* above in this list for more details instructions on using the `#`.
    

.. include:: action-types/google.rst
.. include:: action-types/box.rst
.. include:: action-types/javascript.rst
