Other open activities
---------------------

The *Tasks* list shows the case’s open and closed tasks.
In most cases, completing the last task will close the case.
However a case must sometimes wait for a sub-process, which doesn’t correspond to a task in the *Tasks* list.
Instead, the case view lists open sub-processes under the *Other open activities* heading, underneath the *Tasks* list.


.. figure:: /_static/images/cases/other-activities.png

   The case details view, showing a link to a sub-process under ‘Other open activities’

This *Invoice customer* example shows the following event stream, in chronological order.

#. The case started by sending an invoice by email.
#. The case created a *Check payment* task.
#. Someone completed the *Check payment* task, with the result *Unpaid*.
#. The case sent a payment reminder email to the customer.
#. The case started a *Payment recovery* sub-process.

At this stage, the case will wait for the *Payment recovery* sub-process before it creates the next task in the invoice process.
Until then, the *Tasks* list will continue to only show the completed task, and the *Other open activities* list shows a link to the sub-process case.
