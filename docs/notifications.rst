.. _notifications:

Notifications reference
=======================

Signavio Workflow sends a variety of email notifications,
to keep process participants up-to-date with cases they work on
and to avoid task handover delays,
when someone assigns a task.

To avoid unnecessary notifications, Signavio Workflow waits a short time before sending notifications and omits notifications that have become obsolete.


.. _case-due:

Case due
--------

This notification indicates that a case has reached its due date.

Signavio Workflow sends this notification to the case’s process owner.


.. _case-task-due:

Case task due
-------------

This notification indicates that a case has reached its due date and has open tasks.

Signavio Workflow sends this notification to the assignees of open tasks in the case.


.. _task-created:

Task created
------------

This notification indicates that a new task has been created within a case.

Signavio Workflow sends this notification to the task’s default assignee, if the task has one.
Signavio Workflow also sends this notification to each of the task candidates,
or every member of each candidate group, if defined.

Signavio Workflow does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


.. _task-assigned:

Task assigned
-------------

This notification indicates that someone has assigned an existing task within a case.

Signavio Workflow sends this notification to the task’s new assignee.

Signavio Workflow does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


Mentioned in a comment
----------------------

This notification indicates that someone has been mentioned in a comment on a case.

Signavio Workflow sends this notification to each user mentioned in the comment.

Signavio Workflow does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


Reminder scheduled
------------------

This notification reminds case participants that a task remains open.

Signavio Workflow sends this notification to the task’s assignee when someone assigns the task, or to all of the task’s candidates if the task does not have an assignee.
If the task does not have an assignee or candidates, Signavio Workflow sends the notification to the process’ owner.


Task escalated
--------------

This notification indicates that an open task has reached its escalation deadline.

Signavio Workflow sends this notification to the task’s new assignee,
as configured in the user task,
or every member of each candidate group, if defined.

Signavio Workflow always sends this notification, even if recipients have disabled `Receive notifications via email`.


New user registered
-------------------

Signavio Workflow sends a registration notification when someone registers a Signavio Workflow trial account.

Signavio Workflow sends this notification to the email address entered on the registration form.


Invited to join organisation
----------------------------

This notification indicates that an organisation administrator has invited someone to join an organisation.
Signavio Workflow also sends a reminder for this notification when an administrator selects the option to resend the invitation.

Signavio Workflow sends this notification to the person the administrator invited, who may or may not already have a Signavio Workflow account.


Invitation cancelled
--------------------

This notification informs someone that an organisation administrator has cancelled an open invitation to join an organisation.

Signavio Workflow sends this notification to the person the administrator invited.


Invitation resent
-----------------

This notification reminds someone that organisation administrator has invited them to join an organisation.
Signavio Workflow support staff trigger this notification manually.

Signavio Workflow sends this notification to the person the administrator invited.


Password reset
--------------

Signavio Workflow sends a password reset notification when someone uses the `Reset your password` option.

Signavio Workflow sends this notification to the email address entered on the password reset form.


Service account access expired
------------------------------

This notification indicates that access to an external service,
such as :ref:`Google Drive <google-drive>`,
has expired.

Signavio Workflow sends this notification to the Signavio Workflow user who configured their external service account.


License about to expire
-----------------------

This notification indicates that a Signavio Workflow license will soon expire.

Signavio Workflow sends this notification to the administrators of the the Signavio Workflow organisation whose license will expire.
