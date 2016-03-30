.. _open-new-customer-account:

Open New Customer Account (banking)
-----------------------------------

Process goal
^^^^^^^^^^^^

Create a new customer bank account for a retail bank.

Context
^^^^^^^

Retail banking handles many high volume processes by standardising and optimising them, especially customer contact processes.
Customer contact starts with opening a new account.

This on-boarding business process has parallels in other service industries.
A similar ‘new customer account’ process might apply to insurance products, local utilities or telecoms.
In each case, a customer applies for the service and receives either a rejection, or a confirmation as well as (optionally) a ‘starter pack’.

Trigger
^^^^^^^

Form - a completed customer application.
The bank employee may use this information or additional documentation to reject the application.

Actions
^^^^^^^

This process consists of a series of checks, followed by tasks to set-up a new account, if the bank employee approved the customer’s request for a new account.

.. figure:: /_static/images/examples/open-new-customer-account.png

This structure makes this process similar to other approval processes, including the rejection notification tasks.
If the bank employee accepts the application, then the bank allocates a new account number and then performs a several account set-up tasks in parallel.

Roles
^^^^^

*Bank employee* - responsible for the whole account creation process.

Fields
^^^^^^

The process starts with initial information from the customer:

* *Customer name* (Text, mandatory)
* *Address* (Text, mandatory)
* *Date of birth* (Date, mandatory)
* *Contact e-mail* (Email address, mandatory)
* *Supporting documentation* (File, multiple values) - additional documents, such as proof of address, which the process might specify individually.

The process later adds further information, including:

* *Account number* (Number) - created for the new account.

Extensions
^^^^^^^^^^

A real retail bank’s workflow for creating a new customer account would include more tasks than this.
In practice, back-office systems would automate many of the tasks, which means that the real complexity in this process comes from integrating with these existing systems.
