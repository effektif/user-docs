Exclusive gateway
-----------------

Use an exclusive gateway to make a choice between multiple execution paths.
The exclusive gateway selects one out of multiple outgoing transitions and only propagates execution further on that transition.
There are 2 ways to configure an exclusive gateway:

Human decision
``````````````

The human decision type of exclusive gateway is used when a person must make a decision.
The previous action has to be a user task.
The decision is presented to the user as buttons in form of the previous task.

Here's an example.
As a starting point, we already have a user task called 'Review contract', an exclusive gateway and then two user tasks 'Print contract' and 'Update contract' like this:

.. figure:: /_static/images/excl.gateway.human.1.png

   An exclusive gateway must have at least one incoming and 2 outgoing transitions

Select the exclusive gateway.
The human decision is the default type.
After creating the elements and connecting them like above, the exclusive gateway is already configured like this:

.. figure:: /_static/images/excl.gateway.human.2.png

   Default human decision configuration

`To Print contract` and `To Update contract` are the default decision buttons that will appear on a form.
For each button, the next action is indicated that will be performed when it is clicked.
So in this example, when the user clicks the decision button `To Print contract`, only `Print contract` is executed and `Update contract` will *not* be executed.

The text on the buttons can easily be changed.
Let's change it to `Approve` and `Reject` like this.

.. figure:: /_static/images/excl.gateway.human.3.png

   Customized decision buttons

After starting a new case for this process, the task Review contract will have decision buttons like this:

.. figure:: /_static/images/excl.gateway.human.4.png

   Task decision buttons

When adding form fields to the task before the exclusive gateway (in this example "Review contract"), the decision buttons will be combined with the form fields.

Automatic decision
``````````````````

An automatic decision is an exclusive gateway that selects an outgoing transition based on conditions that you can formulate using the process data.
Each transition can be given a condition.
The transition conditions are evaluated in order from top to bottom.
The first condition that is true using the field values of the current case, will be taken.

.. figure:: /_static/images/excl.gateway.auto.5.png

   Automatic decision condition editor

For specifying a condition you start with selecting a field and a comparison operator.
Then you can either enter a static value in the input field on the right, or click the |binding-symbol| button to select another field.

When you do not specify a condition, it will evaluate to false and the transition will not be taken.
A non-specified condition is marked with a |warning-symbol| symbol.

.. |binding-symbol| image:: /_static/images/excl.gateway.auto.6.png
.. |warning-symbol| image:: /_static/images/excl.gateway.auto.1.png

Default transition
~~~~~~~~~~~~~~~~~~

Usually an automatic decision has a default transition.
It's a fallback mechanism and it means that if none of the conditions evaluate to true, the default transition is taken.

.. figure:: /_static/images/excl.gateway.auto.2.png

   The default transition

If you want to make a transition the default, click on |following-symbol|.
The other way round, if you want to set a condition on the default transition, click on |default-symbol|.

.. |following-symbol| image:: /_static/images/excl.gateway.auto.3.png
.. |default-symbol| image:: /_static/images/excl.gateway.auto.4.png
