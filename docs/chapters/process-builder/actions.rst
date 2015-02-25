Actions
-------

Actions are like steps in a process.
This can be a user task in Effektif, an operation on a file in a document management system or any other action that represents something to be done in a process.

.. _action-list:

Simple action list view
-----------------------

The simple action list view is the simplest form to create a process and it shows all actions in a list.
It's the easiest way to create so called checklist processes.
These are processes that have a bunch of user tasks that serve as a checklist.
If no control flow is added in the Advanced flows view, all actions will be started immediately when the process starts.
So by default, all actions in the simple action list view run in parallel.

Advanced flows view
-------------------

The advanced flow view is a BPMN diagram editor.
It shows the actions and also control flow elements like events and gateways.
The advanced flow view should be used to add sequential flows between actions, decisions and other control flow behaviour.

Adding a transition
```````````````````

To create a transition, you have to be in the `Advanced flows` view.
A transition specifies sequential flow.
It means the next element only starts when the previous is completed.

To add a transition, select the first element by clicking on it.
You'll see a couple of symbols appearing around the selected element like this:

.. figure:: /_static/images/create.transition.1.png

   Start creating a transition by dragging the transition symbol to the destination

Then click and hold down the transition symbol |transition-symbol| and drag it to the destination element.
When you move the mouse pointer over the destination element, still keeping the mouse button down, it's indicated that you can drop to create the transition like this:

.. |transition-symbol| image:: /_static/images/create.transition.symbol.png

.. figure:: /_static/images/create.transition.2.png

   Creating a transition hovering over destination

Releasing the mouse over the destination will create the transition.

Creating the next user task
```````````````````````````

There is an very easy way to create the next User Task.
It's similar to creating transitions above.
You start with selecting the action after which you want to create a new user task.

.. figure:: /_static/images/create.transition.1.png

   Start creating the next user task by dragging the action symbol

Then click and hold down the rounded rectangle symbol |task-symbol| and drag it to the empty place on the canvas.

.. |task-symbol| image:: /_static/images/create.next.user.task.symbol.png

.. figure:: /_static/images/create.next.user.task.2.png

   Drag the rounded rectangle symbol to an empty place

Drop it where you want to create the next user task.
When you release the mouse, the new user task and the transition will be created where you dropped it.

.. figure:: /_static/images/create.next.user.task.3.png

   Adding the next user task and its transition at the same time

Alternatively, just click the small user task icon |task-symbol| to create a new user task, and a transition, in the default location.

Control flow elements
`````````````````````

Control flow elements like events and gateways are also part of the diagram, but unlike actions, control flow elements don't represent something that should happen.
Events and gateways are used to specify the flow between the actions.
