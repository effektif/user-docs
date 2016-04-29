.. _fulfil-purchase-order:

Fulfil Purchase Order (sales)
-----------------------------

Process goal
^^^^^^^^^^^^

Fulfil a customer’s purchase order, e.g by shipping a product, and issuing an invoice.

Context
^^^^^^^

The core activities of many companies include selling things to their customers and giving them what they pay for.
Different companies’ high-level processes have much in common, which forms a basis for a purchase order process.
Meanwhile, variations between these companies, and their customers and products, result in different implementations.

Trigger
^^^^^^^

Form - provides the purchase order.

Actions
^^^^^^^

In this process, an incoming purchase order form essentially triggers two tasks: *Fulfil order* and *Issue invoice*.

.. figure:: /_static/images/examples/fulfil-purchase-order.png

To prevent an exception when the company cannot fulfil the purchase order due to lack of stock, the workflow starts with a check task and a waiting task.
This *Wait for available stock* task uses reminders to prompt the user to check every day until stock becomes available, after which the company can presumably accept the order.

The trigger form captures the customer e-mail address, so that rejecting the invoice with a rejection reason can use a :ref:`Send E-mail <send-email>` task to send a notification.

Roles
^^^^^

* *Warehouse operator* - a person who works in the warehouse and ships customer orders.
* *Financial administrator* - a member of the finance team, who issues invoices.

Fields
^^^^^^

* *Purchase order* (File, required) - the complete order details, including order lines.
  Signavio Workflow forms don’t support tabular data, so you cannot enter order lines normally.
* *PO reference* (Text, required) - the purchase order reference, extracted from the purchase order itself, to identify the case in Signavio Workflow
* *Customer email* (Email address, required) - used to send notifications.

Extensions
^^^^^^^^^^

To extend this basic process, you could:

* include the whole *Close customer invoice* process, replacing the final *Issue invoice* task, to make this an order-to-cash process
* replace the *Wait for available stock* task with an automated version that precedes the *Check purchase order* task, so that the order only gets a manual manual check once the stock becomes available
* perform the *Fulfil order* and *Issue invoice* tasks in parallel, depending on how people handle exceptions in *Fulfil order*
* replace the order form file upload with separate form fields, using a list of text values for the order lines, with each order line - product code, description and quantity - in one text value.
