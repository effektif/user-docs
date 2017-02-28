.. _approve-expense-claim:

Approve Expense Claim (management)
----------------------------------

Process goal
^^^^^^^^^^^^

Submit an expense claim document for someone else to approve.

Context
^^^^^^^

Employees need to submit expense forms for their managers to approve, but if they all send them by e-mail, managers will find it difficult to keep track.

Trigger
^^^^^^^

Email - from the employee submitting the claim.

Actions
^^^^^^^

The process consists of an approval decision task, followed by an administrative task to pay the expense claim.

.. figure :: /_static/images/examples/approve-expense-claim.png

The manager may choose to only reject some items on the claim, in which case the process includes an additional task to list the rejected items, so that the person who pays the expense claim can recalculate the total.

Roles
^^^^^

* *Employee* - starts the case
* *Manager* - approves the expense claim
* *Financial administrator* - pays the approved expense claim

Fields
^^^^^^

* *Trigger email / From name* - Employee name - used to pay the expenses
* *Trigger email / Attachments* - Expense form - table of expenses, used to approve the claim
* *Employee bank account* - used to pay the expenses

Extensions
^^^^^^^^^^

Replace the *Approve claim* task with a `Document Approval <http://www.signavio.com/post/document-workflow-patterns/>`_ pattern, to allow the employee to make corrections when the manager rejects the a claim.

Add the `Result Notification <http://www.signavio.com/post/email-notification-workflow-patterns/>`_ pattern to notify the employee when the expenses have been paid.

Related processes
^^^^^^^^^^^^^^^^^

* :ref:`Approve Document <approve-document>` handles approving a document rather than an email request.
* :ref:`Approve Vacation Request <approve-vacation-request>` handles approving a request from a form rather than an email.
