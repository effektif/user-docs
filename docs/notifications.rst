.. _notifications:

Notifications
===================

Effektif sends a variety of email notifications,
to keep process participants up-to-date with cases they are involved in
and to avoid task handover delays,
when a task is assigned to someone.


Task created
------------

This notification indicates that a new task has been created within a case.

Effektif sends this notification to the task’s default assignee, if there is one.
Effektif also sends this notification to each of the task candidates,
or every member of each candidate group, if defined.


Task assigned
-------------

This notification indicates that someone has assigned an existing task within a case.

Effektif sends this notification to the task’s new assignee.


Mentioned in a comment
----------------------

This notification indicates that someone has been mentioned in a comment on a case.

Effektif sends this notification to each user mentioned in the comment.


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
who the task is being escalated to.


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
