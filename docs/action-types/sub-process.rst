.. _sub-process:

Sub-process
-----------

.. figure:: /_static/images/action-types/sub-process.png

   A sub-process in the process editor

A sub-process action represents an entire process as a single task.
You can use sub-processes to simplify complex process models, by collapsing each sub-process into a single action.
Then you can open the sub-process to see the next level of detail.
You can also use sub-process to delegate responsibility for the process model to a different process owner.

.. figure:: /_static/images/action-types/sub-process-config.png

   Configuring a sub-process and mapping an *Invoice* variable to a trigger form field

Configure the sub-process action in the process builder by selecting it, and choosing a process from the list.
You cannot select the same process as the parent process, which would cause a loop, or an unpublished process.

If you select a sub-process with a trigger form, you can also select variables that Effektif will use to auto-fill the trigger form fields when starting the sub-process case.
In the example above, Effektif will populate the sub-process’ *Unpaid invoice* trigger form field with the file stored in the parent process’ *Invoice* variable.

When Effektif creates a sub-process, it starts a new case in the selected sub-process.
After completing the sub-process case, Effektif continues executing the parent case.
