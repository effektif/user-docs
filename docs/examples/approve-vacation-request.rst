.. _approve-vacation-request:

Approve Vacation Request (HR)
-----------------------------

Process goal
^^^^^^^^^^^^

Approve an employee’s planned vacation dates.

Context
^^^^^^^

Employees need to request vacation dates, so that their managers can make sure that they don’t all go on vacation at the same time.
Employees typically e-mail requests to a designated coordinator, who maintains a spreadsheet of requests.
However, this generates a lot of e-mail, and fails when the coordinator goes on vacation.

Vacation requests exemplify form based requests, where an employee requires an approval based on information whose structure you know in advance.
An employee requesting vacation days for specific dates illustrates perhaps the simplest example of human tasks that multiple people co-ordinate.

Despite this process’ simplicity, the obvious spreadsheet plus e-mail approach leads to enough problems to make it worth using Effektif instead.
In principle, one person can easily receive vacation requests by e-mail and maintain a spreadsheet, but this fails when this person goes on vacation.
This irony illustrates the need for notify a group about new unassigned tasks, so that several people can approve vacation requests between themselves.


Trigger
^^^^^^^

Form - the employee and the requested dates.

Actions
^^^^^^^

The process consists of a user task for a decision.
Tasks to continue the process of going on vacation (or not) follow the decision.

.. figure:: /_static/images/examples/approve-vacation-request.png

Adding a due date and reminders to the user task can help reduce cycle times.

Roles
^^^^^

*Manager* - approves the request.

Fields
^^^^^^

* *Employee* (User, mandatory) - the employee making the request.
  This, plus the other fields, should give the manager enough information to make the decision.
* *Start date* (Date) - vacation start date.
* *End date* (Date) - vacation end date.

Extensions
^^^^^^^^^^

You might extend the process with an additional task for the employee to provide additional information, or change the initial request, if the manager rejected the request.
This would avoid the need for more cases than vacations, which would clutter the case view.

You could also extend this process with additional tasks to support what happens when the employee goes on vacation, such as assigning a person to take over their work.

Related processes
^^^^^^^^^^^^^^^^^

:ref:`Approve Document <approve-document>` handles approving a document rather than a form.
