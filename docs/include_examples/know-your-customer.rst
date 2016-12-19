.. _know-your-customer:

Know your customer (KYC - Banking)
----------------------------------

Process goal
^^^^^^^^^^^^

Perform identity checks before starting the customer onboarding process.

Context
^^^^^^^

`Know your customer <https://en.wikipedia.org/wiki/Know_your_customer>`_ (KYC) legislation requires banks to verify their customers’ identities.
Standard processes like this example help banks ensure compliance, and provide audit records.

Trigger
^^^^^^^

None.

Actions
^^^^^^^

The process starts with an initial task to capture the customer information that forms the basis of the identity checks.
In this example, three script tasks implement KYC checks by calling external systems that perform the checks.
Finally, an automatic check, supported by a manual check for uncertain cases, determines the follow-up actions.

.. figure :: /_static/images/examples/know-your-customer.png

In the case of successful identity checks, a sub-process models the main work of on-boarding the customer.
This process therefore ‘decorates’ the usual on-boarding process with additional approvals.

Roles
^^^^^

*Branch Services - Account Representative* - the only role in this process, to perform the initial data entry and manual approval tasks.

Fields
^^^^^^

* *Customer name* (Text, mandatory) - identifying information used for identity checks
* *Customer address* (Text, mandatory) - identifying information used for identity checks
* *Valid name & address?* (Boolean) - result of an identity check
* *Valid name for Interpol & PEP?* (Boolean) - result of an identity check
* *Account verified?* (Boolean) - result of an identity check

Related processes
^^^^^^^^^^^^^^^^^

:ref:`approve-document` generalizes this process.
