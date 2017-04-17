.. _approve-document:

Approve Document (management)
-----------------------------

Process goal
^^^^^^^^^^^^

Approve the submitted document, after optional revision rounds.

Context
^^^^^^^

Employees need to submit expense forms for their managers to approve, but if they all send them by e-mail their managers will find it difficult to keep track.
Employees typically submit an expense form in a spreadsheet file that lists expenses.

Employees also prepare proposals and reports that require management sign-off before the author may distribute them.
The frequently have trouble keeping track of the document versions during the process.

You can treat expense forms as a specific example of process documents.
Business processes often use documents to capture a process milestone.
Managers often use a document approval process to verify that someone has completed some other work, usually by exchanging email with the document author.
Use an Approve Document process when you need to keep track of a large number of approvals, or when you need a record of each approval (who and when).

Trigger
^^^^^^^

Form - the uploaded document and its author.

Actions
^^^^^^^

The process centres on a *Review document* task, which results in a decision to either *Approve* or *Reject* the document.
Rejecting the document creates an *Update document* task to update the document and provide a new draft before starting again.

.. figure :: /_static/images/examples/approve-document.png

Adding a due date and reminders to the user tasks can help minimise cycle times.
Adding escalation to the *Review document* task helps avoid a delay when the reviewer cannot complete the work.

Roles
^^^^^

The two tasks correspond to two process roles.

* *Reviewer* (optional) - makes the approval decision: often a manager or supervisor.
* *Author* - prepares the document.
  If the trigger form assigns this role, then Signavio Workflow Accelerator will automatically assign the *Update document* to the author and send a notification.

Fields
^^^^^^

* *Document* (File, mandatory) - the document to review.
  The author uploads the first version on the trigger form, followed by a new version each time Workflow Accelerator creates a new *Update document* task.
* *Author* (User, mandatory) - used to assign the role and notify the author.

Extensions
^^^^^^^^^^

The document’s readers may find it useful to have access to the document outside Workflow Accelerator.
The organisation may also require a backup.
You could add an integration task to the process after the decision to approve the document, in order to archive or email the document.

To archive the approved document, add a Google Drive or Box *Upload file* task.
This saves a copy of the document for people to read, but they still need a notification that the approved version exists.

An email task notifies the author and other stakeholders that the document has been approved.
The email template can include any reviewer comments and attach the document.
The organisation may also find it useful to broaden the document’s distribution by copying the email to a distribution list.

Related processes
^^^^^^^^^^^^^^^^^

:ref:`Approve Vacation Request <approve-vacation-request>` handles approving a form rather than a document.
