.. _process-insurance-claim:

Process Claim (insurance)
-------------------------

Process goal
^^^^^^^^^^^^

Process an insurance claim in order to make a payout to a customer

Context
^^^^^^^

Sometimes, a large team has to collaborate on high-volume task processing, such as assessing insurance claims.

Trigger
^^^^^^^

Form - an insured customer’s completed claim form.

Actions
^^^^^^^^

This process illustrates how to handle large case volumes, by splitting the process into tasks that you can assign to different groups of people
Junior staff can handle most tasks and only assign hard tasks to a smaller group of senior staff.

.. figure:: /_static/images/examples/process-insurance-claim.png

In most cases, the top row of user tasks will process the claim.
Only a few claims will require the *Investigate high-value claim* or *Process complex claim* tasks.

Roles
^^^^^

* *Junior claims adjuster* - triages insurance claims and processes the straightforward ones.
* *Investigator* - investigates high-value claims to protect against fraudulent claims.
* *Senior claims adjuster* - processes complex claims.

Fields
^^^^^^

* *Claim form* (File, mandatory) - the form provided by the customer, via the trigger form.
* *Total value* (Money, mandatory) - the total value of the claim, which the junior adjuster extracts from the claim form in the *Calculate claim value* task.
* *Payout* (Money, mandatory) - the amount to pay to the customer if the adjuster approves the claim.
