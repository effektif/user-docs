.. _notifications:

Notifications
===================

Effektif sends a variety of email notifications,
to keep process participants up-to-date with cases they are involved in
and to avoid task handover delays,
when a task is assigned to someone.

.. _task-created:

Task created
------------

This notification indicates that a new task has been created within a case.

Effektif sends this notification to the task’s default assignee, if there is one.
Effektif also sends this notification to each of the task candidates,
or every member of each candidate group, if defined.

Effektif does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


Task assigned
-------------

This notification indicates that someone has assigned an existing task within a case.

Effektif sends this notification to the task’s new assignee.

Effektif does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


Mentioned in a comment
----------------------

This notification indicates that someone has been mentioned in a comment on a case.

Effektif sends this notification to each user mentioned in the comment.

Effektif does not send this notification if you disable `Receive notifications via email` in :ref:`Preferences`.


Reminder scheduled
------------------

This notification is a scheduled reminder that a task is open.

Effektif sends this notification to the task’s assignee if the task is assigned,
or to all of the task’s candidates if the task it not assigned.
If the task is unassigned and there are no candidates,
Effektif sends the notification to the process’ owner.


Task escalated
--------------

This notification indicates that an open task has reached its escalation deadline.

Effektif sends this notification to the task’s new assignee,
who the task is being escalated to,
or every member of each candidate group, if defined.

Effektif always sends this notification, even if `Receive notifications via email` is disabled.


New user registered
-------------------

Effektif sends a registration notification when someone registers an Effektif trial account.

Effektif sends this notification to the email address entered on the registration form.


Invited to join organisation
----------------------------

This notification indicates that an organisation administrator has invited someone to join an organisation.
Effektif also sends a reminder for this notification when an administrator selects the option to resend the invitation.

Effektif sends this notification to the person the administrator invited, who may or may not already have an Effektif account.


Invitation cancelled
--------------------

This notification informs someone that an organisation administrator has cancelled an open invitation to join an organisation.

Effektif sends this notification to the person the administrator invited.


Password reset
--------------

Effektif sends a password reset notification when someone uses the `Reset your password` option.

Effektif sends this notification to the email address entered on the password reset form.


Service account access expired
------------------------------

This notification indicates that access to an external service,
such as :ref:`Google Drive <google-drive>`,
has expired.

Effektif sends this notification to the Effektif user whose external service account is used.


License about to expire
-----------------------

This notification indicates that an Effektif license is about to expire.

Effektif sends this notification to the administrators of the the Effektif organisation whose license will expire.
