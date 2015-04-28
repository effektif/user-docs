Actions
-------

Actions are like steps in a process.
An action might be a user task in Effektif,
an operation on a file in a document management system
or any other action that represents something to be done in a process.


.. _action-list:

Simple action list view
-----------------------

The simple action list view is the simplest way to create a process, as a list of actions.
It’s the easiest way to create ‘checklist processes’,
which have a collection of user tasks that serve as a checklist.

If you don’t add any control flow in the `Advanced flows` view,
all actions will be started immediately when the process starts.
By default, all actions in the simple action list view run in parallel.

Advanced flows view
-------------------

The `Advanced flows` view is a
`BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_
diagram editor that shows actions and control flow elements like events and gateways.
You use the `Advanced flows` view to add sequential flows between actions,
decisions and other control flow behaviour.


Adding a transition
```````````````````

You can create a transition in the `Advanced flows` view.
A transition specifies sequential flow,
which means the next action only starts when the previous one is complete.

To add a transition, click to select the first action.
Several symbols appear to the right of the selected element:

.. figure:: /_static/images/process-builder/transitions/create-transition-1.png

   Start creating a transition by dragging the transition symbol to the destination

Click the transition symbol |transition-symbol| and drag it to the destination element.
When you drag the symbol over the destination element, it indicates that you can drop to create the transition:

.. |transition-symbol| image:: /_static/images/process-builder/transitions/create-transition-symbol.png

.. figure:: /_static/images/process-builder/transitions/create-transition-2.png

   Creating a transition hovering over destination

Release the mouse button over the destination to create the transition.


Creating the next user task
```````````````````````````

There is an easy way to create the next User Task in a process,
similar to creating transitions above.
Start by selecting the previous action:

.. figure:: /_static/images/process-builder/create-tasks/select-task.png

   Start creating the next user task by dragging the action symbol

Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas.

.. |task-symbol| image:: /_static/images/process-builder/create-tasks/create-next-user-task-symbol.png

.. figure:: /_static/images/process-builder/create-tasks/drag-task.png

   Drag the rounded rectangle symbol to an empty place

Drop the symbol where you want to create the next user task.
Release the mouse button to create new user task where you dropped it,
with a transition from the previous action.

.. figure:: /_static/images/process-builder/create-tasks/view-new-task.png

   Adding the next user task and its transition at the same time

Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location,
with a transition.


Control flow elements
`````````````````````

Control flow elements like events and gateways are also part of the diagram,
but unlike actions, control flow elements don’t represent something that should happen.
Instead, you use events and gateways to specify the flow between the actions.
