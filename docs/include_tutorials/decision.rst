.. _tutorial-decision:

Adding a decision to an approval process
----------------------------------------

An approval process such as a document approval requires a clear decision, such as whether to *Approve* or *Reject* a document.
This tutorial continues the document approval process example from the previous tutorial and shows you how to add a manual decision to a user task form.

To start, create a basic approval process with a single user task, as in the :ref:`first document process <tutorial-new-process>` tutorial:

.. figure:: /_static/images/tutorials/new-process/actions.png

   A basic approval process with a single task

This basic process already includes the task for making an approval decision, but it doesn’t give any guidance for making the decision.
You can improve this process so that the approval task’s form has *Approve* and *Reject* buttons, like this:

.. figure:: /_static/images/tutorials/decision/case-task.png

   The result of adding a decision - a task form with *Approve* and *Reject* buttons

In the process model, an :ref:`exclusive-gateway` after the user task will represent the decision.
To add the gateway to the model, select the *Exclusive gateway* button in the tool palette.
This adds the diamond shape with an X to the diagram.

.. figure:: /_static/images/tutorials/decision/exclusive-gateway.png

   Adding an exclusive gateway to the process model

Next, drag the end event to the right, to make room for the gateway, and drag the gateway symbol onto the transition from the user task to the end event as shown:

.. figure:: /_static/images/tutorials/decision/editor-gateway.png

   Moving the gateway to an existing transition

For the next step, add a new path to the process that represents the decision to reject the document.
This means adding a second transition from the exclusive gateway to a new end event.
To do this, select the exclusive gateway, and drag the end event (circle) icon to where you want to new end event, as shown:

.. figure:: /_static/images/tutorials/decision/editor-end.png

   Adding a transition from the gateway to a new end event

Name the new end event to describe the alternate end status, to make the diagram easier to understand.
Select the event and enter the name **report rejected**.

.. figure:: /_static/images/tutorials/decision/end-configuration.png

   Naming the alternate end event with a different end status

Now you can configure the gateway with the decision.
To use an exclusive gateway for a manual decision, it must have an incoming transition from a user task and more than one outgoing transition.
Select the exclusive gateway to open its configuration pane, and enter the decision options **Approve** and **Reject**, using the end event names to get them the right way around.

.. figure:: /_static/images/tutorials/decision/gateway-configuration.png

   Configuring *Approve* and *Reject* decisions on an exclusive gateway

You can see the result of configuring the manual decision on the user task form.
Select the user task, which opens its configuration pane’s *Form* tab.
At the bottom, underneath where any fields would appear, you now see the decision options as *Approve* and *Reject* buttons.
In the form description field, enter instructions for making the decision: **Approve or reject the attached draft report**.

.. figure:: /_static/images/tutorials/decision/form.png

   Adding a description to a task form that now shows *Approve* and *Reject* buttons

Now you can see the result of adding the decision to the process.
Select the *Publish changes* button (top-right) to publish a new version of the process, then select *Start case* next to the latest version in the list.
Start the case, completing the trigger form if you added one, and open the *Approve report* task.
The task page shows the task form with the description you entered, and the decision buttons.

.. figure:: /_static/images/tutorials/decision/case-task.png

   Running the process - the form for a manual decision with *Approve* and *Reject* buttons

Select *Approve* to record the decision and complete the user task.
The case view event stream (right) now shows the *Approve* decision.

.. figure:: /_static/images/tutorials/decision/case.png

   After completing the form, the event stream shows the *Approve* decision

Decisions like these don’t only occur in document approval processes.
In practice, many kinds of business processes use one or manual decisions that you can add in the same way.
