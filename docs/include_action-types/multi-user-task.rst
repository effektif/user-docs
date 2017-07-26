.. _multi-user-task:

Multi-user task
---------------
.. versionadded:: 3.28

.. figure:: /_static/images/action-types/multi-user-task/multi-user-task.png

   A multi-user task in the process editor

A multi-user task indicates that a group of people will each perform the same :ref:`user-task`.
You can use this to model multiple approvals, where several people in a group must approve a proposal.

In the configuration panel, you can set the same configuration as for a user task, plus the following additional configuration.

* *General* - assign tasks to users and groups
* *Results* - specify how form fields map to lists of values

General
^^^^^^^

Use the *General* tab to specify the users to create tasks for.
The multi-user task creates a task for each user or group member.

.. figure:: /_static/images/action-types/multi-user-task/configuration.png

   User and group configuration for a multi-user task

You can also specify parallel or sequential *Execution type*.
If you select *Parallel*, the multi-user task will create all of the tasks at the same time, for their assignees to complete in any order.
If you select *Sequential*, the multi-user task will create one task at a time, and wait for its assignee to complete it before creating another.

Results
^^^^^^^

Use the *Results* tab to map each form field to a list of values.
This list collects the values entered by the people who complete the tasks that this multi-user task generates.

.. figure:: /_static/images/action-types/multi-user-task/results.png

   Form field result mapping for a multi-user task

In this example, the multi-user task’s form includes a single Yes/No checkbox field with the label *Approved*.
The mapping to *Approvals* creates a variable with the same type as the *Approved* form field, but which allows multiple values.
Completing the tasks that the multi-user task generated adds the *Approved* values (Yes or No) to the *Approvals* list.

To use the results of a multiple approval, use a :ref:`javascript-action` to implement whatever logic consolidates the list of results in the list into a single decision.

Manual decision (Exclusive gateway)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The multi-user task supports manual decisions.
If an exclusive gateway follows a multi-user task, you can configure the buttons that reflect the possible decisions to this gateway.
The buttons are displayed in the form of the multi-user task.

.. figure:: /_static/images/action-types/multi-user-task/manual-decision.png

   Configuring decision options for a multi-user task

Select the decision type 'Manual' for the exclusive gateway. Then choose the decision option from the drop-down menu:

* *All users have chosen this option*
* *At least one user has chosen this option*
