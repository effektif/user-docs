.. _dmn:

DMN Rule Task
-------------

.. figure:: /_static/images/action-types/dmn/dmn-task.png

   A DMN Rule task in the Workflow Accelerator process builder

DMN Rule Tasks execute Decision Model & Notation (DMN) business rules as part of a process.
You can use rule tasks to embed complex business logic in a workflow, without adding complexity to the process model.

.. note:: To use DMN Rule Tasks, you need to have access to
   `Signavio Process Editor <http://www.signavio.com/products/process-editor/>`_ and
   `Signavio Decision Manager <http://www.signavio.com/products/decision-manager/>`_.

Adding a DMN Rule Task to a process model requires the following steps.

1. Use Signavio Decision Manager to create a DMN model.
2. Use Signavio Process Editor to create a BPMN process model.
3. In Signavio Process Editor, link a rule task to the DMN model.
4. In Signavio Explorer, transfer the BPMN model to Workflow Accelerator.
5. Use Workflow Accelerator to configure the rule task’s inputs and outputs.

A simple price calculation example illustrates how to use DMN with Workflow Accelerator.
Suppose you have a price quotation process that involves and order line price calculation, and that the price depends on a discount based on the number of items.
Model this calculation in Signavio Decision Manager by creating the following *Calculate price* model.

.. figure:: /_static/images/action-types/dmn/decision-manager.png

   A DMN model in Signavio Decision Manager

This decision model has two numeric inputs, *Unit price* and *Number of units*.
The *Discount* rule uses the *Number of units* to calculate a discount.
The model has one output, *Total price*, which it calculates from the two inputs and the discount.

Next, model the price quotation process in Signavio Process Editor, by creating the following model.
Link the *Calculate price* rule task to the *Calculate price* DMN model that you created earlier.

.. figure:: /_static/images/action-types/dmn/process-editor.png

   A BPMN process model, with a *Calculate price* rule task, in Signavio Process Editor

This process model starts with a *Calculate price* rule task, which calculates a total price, followed by a user task to check the result and an send task to send the quotation.
Now save the model, so you can transfer it to Workflow Accelerator.

Next, select the BPMN model in the Signavio Explorer, and on the *Workflow Accelerator* menu, select *Execute in Workflow Accelerator*.
On the dialogue box that opens, select *Transfer*, followed by *Open the workflow in Workflow Accelerator*.

In Workflow Accelerator, you now need to edit the process to make it ready for execution.
In the process builder, select *Trigger* and add a trigger form.
On the trigger form, add two *Number* fields and name them *Unit price* and *Number of units*.

Select *Actions* and then select the *Calculate price* rule task to open its configuration panel.
The *Inputs* shows the DMN model’s two inputs.
For each input, select the process variable of the same name, that you added to the trigger form.

.. figure:: /_static/images/action-types/dmn/rule-task-inputs.png

   Configuring a rule task’s inputs in Workflow Accelerator

Select the *Outputs* tab to configure the output variable the rule task creates.
The output variable has the default name *Total price* from the DMN model.

.. figure:: /_static/images/action-types/dmn/rule-task-outputs.png

   Configuring a rule task’s outputs in Workflow Accelerator

You can now use the calculated *Total price* variable else where in the process.
Add the existing *Total price* field as a read-only field to the *Check total price* user task.
Finally, add the *Total price* field to the *Send quotation* email task’s template, to send the quotation.
