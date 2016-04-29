.. _invoice-customer:

Invoice Customer (finance)
--------------------------

Process goal
^^^^^^^^^^^^

Get a customer invoice paid and closed.

Context
^^^^^^^

In any business, the most obvious example critical process includes getting paid by customers.
This starts with sending invoices but also includes follow-up for outstanding invoices.
Companies usually have to follow-up in practice, because customers do not always pay on time.

Trigger
^^^^^^^

Form - an uploaded invoice from a separate process, and customer contact details.

Actions
^^^^^^^

This process uses a user task to capture key information about an invoice, which Signavio Workflow then sends automatically by e-mail.
Another task checks for payment, with a due date based on the invoice payment terms.

.. figure:: /_static/images/examples/invoice-customer.png

To reduce the number of unpaid invoices due to errors, this process starts with a *Check invoice* task.
The assignee checks the information on the invoice, perhaps by comparing it to a purchase order, and then optionally replaces the invoice with a new corrected version.

The *Send Invoice* task automatically emails the invoice to the customer, and a *Check for payment* task requires the finance administrator to check for customer payment.
If the customer has not paid by the invoice by the payment terms deadline, then Signavio Workflow sends a reminder email followed by a user task that uses daily reminders to chase the process.

Roles
^^^^^

*Finance administrator* - responsible for handling invoices within the company’s finance department.

Fields
^^^^^^

* *Invoice* (File, mandatory) - produced by a separate process, typically a formatted PDF document.
* *Customer e-mail* (E-mail address) - for notifications

Extensions
^^^^^^^^^^

You may add a reminder email to the process, to prompt the customer to pay before the payment terms run out.
