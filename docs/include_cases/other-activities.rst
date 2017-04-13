.. _cases-other-activities:

Other open activities
---------------------

The *Tasks* list shows the case’s open and closed tasks.
In most cases, completing the last task will close the case.
However a case must sometimes wait for a sub-process, or some other activity that doesn’t correspond to a task in the *Tasks* list.

The case view lists the following types of open activity under the *Other open activities* heading, underneath the *Tasks* list:

* :ref:`intermediate-timer-event` - which you can :ref:`skip manually <tasks-skip-timer>`
* :ref:`sub-process`

For example, consider a customer invoice process that includes a payment recovery sub-process.

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
