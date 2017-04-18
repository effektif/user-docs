.. _actions:

Actions
-------

Actions represent the steps in a process - things to do.
Action include things like user tasks in Workflow Accelerator, operations on a file in a document management system or any other actions that represent work that someone will perform as part of a process.
When starting a process, Workflow Accelerator will ‘execute’ the actions in a process in the proper order.
The process :ref:`control flow <control-flow>` determines this ordering, using transitions, gateways and events.

A process can include different :ref:`action-types`.
A user task will create a task in a case.
A ‘Send Email’ action will send an email.
A ‘Google file upload’ action will upload a file to a Google Drive folder.

.. figure:: /_static/images/processes/actions.png

   The *Process builder*’s actions palette

The `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_
diagram editor shows actions and control flow elements, such as events and gateways.
Use the diagram editor to add sequential flows between actions,
decisions and other control flow behaviour.


Adding a transition
^^^^^^^^^^^^^^^^^^^

You can create a transition in the `Advanced flows` view.
A transition specifies sequential flow,
which means the next action only starts when someone has completed the previous one.

To add a transition, click to select the first action.
Several symbols appear to the right of the selected element:

.. figure:: /_static/images/processes/transitions/create-transition-1.png

   Start creating a transition by dragging the transition symbol to the destination

Click the transition symbol |transition-symbol| and drag it to the destination element.
When you drag the symbol over the destination element, it indicates that you can drop to create the transition:

.. |transition-symbol| image:: /_static/images/processes/transitions/create-transition-symbol.png

.. figure:: /_static/images/processes/transitions/create-transition-2.png

   Creating a transition hovering over destination

Release the mouse button over the destination to create the transition.


Creating the next user task
^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can easily create the next User Task in a process in the same way you created transitions, above.
Start by selecting the previous action:

.. figure:: /_static/images/processes/create-tasks/select-task.png

   Start creating the next user task by dragging the action symbol

Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas.

.. |task-symbol| image:: /_static/images/processes/create-tasks/create-next-user-task-symbol.png

.. figure:: /_static/images/processes/create-tasks/drag-task.png

   Drag the rounded rectangle symbol to an empty place

Drop the symbol where you want to create the next user task.
Release the mouse button to create new user task where you dropped it,
with a transition from the previous action.

.. figure:: /_static/images/processes/create-tasks/view-new-task.png

   Adding the next user task and its transition at the same time

Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location,
with a transition.


Changing the action type
^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes, modifying a process means changing an action from one type to another.
In the recruitment process, you might change the action to reject the candidate from a manual task to an automatic email task.

To make this change, first select the action in the process editor to open the configuration panel, then click the action type icon at the top-left corner of the configuration panel to open the list of action types.
Next, select *Send Email* from the list to change the action type.

.. figure:: /_static/images/processes/action-change-type.png

   Changing a :ref:`user-task` to a :ref:`send-email` task.

.. warning:: Changing the action type discards the previous action type’s configuration, such as a user task form or an email template.
   If you change the action type back, the original configuration will not be restored.


Control flow elements
^^^^^^^^^^^^^^^^^^^^^

The diagram also includes control flow elements, such as events and gateways.
Unlike actions, control flow elements don’t represent something that should happen.
Instead, you use events and gateways to specify the flow between the actions.
