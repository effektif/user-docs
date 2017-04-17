.. _sub-process:

Sub-process
-----------

.. figure:: /_static/images/action-types/sub-process/sub-process-task.png

   A sub-process in the process editor

A sub-process action represents an entire process as a single task.
You can use sub-processes to simplify complex process models, by collapsing each sub-process into a single action.
Then you can open the sub-process to see the next level of detail.
You can also use a sub-process to delegate responsibility for the process model to a different process owner.

When Workflow Accelerator creates a sub-process, it starts a new case in the selected sub-process.
After completing the sub-process case, Workflow Accelerator continues executing the parent case.

Configure the sub-process action in the process builder by selecting it, and choosing a process from the list.
You cannot select the same process as the parent process, which would cause a loop, or an unpublished process.


.. figure:: /_static/images/action-types/sub-process/inputs.png

   Configuring a sub-process and mapping an *Invoice* variable to a trigger form field

If you select a sub-process with a trigger form, you can also select ‘input variables’ that Workflow Accelerator will use to auto-fill the trigger form fields when starting the sub-process case.
In the example above, Workflow Accelerator will populate the sub-process’ *Unpaid invoice* trigger form field with the file stored in the parent process’ *Invoice* variable.

If you want to capture the result of running a sub-process, you can use the *Outputs* tab to add ‘outputs’.
Adding an output creates a variable that gets its value from a field in the sub-process when the sub-process completes.

.. figure:: /_static/images/action-types/sub-process/outputs.png

   Adding an output variable that gets its value from a sub-process field

In this example, the *Recover late payment* process has an *Amount recovered* variable.
You can capture the value of this variable when the sub-process completes and use it later, in the parent process’ *Check amount recovered* task.
