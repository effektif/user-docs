Exclusive gateway
-----------------

Use an exclusive gateway to make a choice between multiple execution paths.
The exclusive gateway selects one of the outgoing transitions,
and only continues execution on that transition.
There are two ways to configure an exclusive gateway: 
with a *human decision* or an 8automatic decision*.

Human decision
``````````````

Use a human decision for an exclusive gateway when a person must make a decision.
The previous action must be a user task,
which will include making the decision.
The user interface presents the decision to the user as buttons on the user task form.

Here’s an example.
Suppose you have a user task called ‘Review contract’, 
an exclusive gateway 
and the two user tasks ‘Print contract’ and ‘Update contract’:

.. figure:: /_static/images/excl.gateway.human.1.png

   An exclusive gateway must have at least one incoming and two outgoing transitions

Select the exclusive gateway.
Human decision is the default type.
After creating the elements and connecting them, as above, 
the exclusive gateway will be configured:

.. figure:: /_static/images/excl.gateway.human.2.png

   Default human decision configuration

`To Print contract` and `To Update contract` are the default decision buttons
that will appear on the user task form.
For each button, the label on the right indicates the next action in the process,
which will be performed when the button is clicked.
In this example, when the user clicks the decision button `To Print contract`, 
the `Print contract` task is executed and the `Update contract` task will *not* be executed.

You can easily change the text on the buttons.
For example, change them to `Approve` and `Reject`:

.. figure:: /_static/images/excl.gateway.human.3.png

   Customized decision buttons

After starting a new case for this process, 
the `Review contract` task will have decision buttons:

.. figure:: /_static/images/excl.gateway.human.4.png

   Task decision buttons

When adding form fields to the task before the exclusive gateway -
`Review contract` in this example -
the decision buttons are added to the form.


Automatic decision
``````````````````

An automatic decision is an exclusive gateway that selects an outgoing transition 
based on conditions that you choose.
For each transition, you can formulate a condition using workflow data.
Transition conditions are evaluated in order, from top to bottom.
The workflow engine will take the transition with the first condition that is true, using the current case’s field values.

.. figure:: /_static/images/excl.gateway.auto.5.png

   Automatic decision condition editor

To specify a condition, start by selecting a field and a comparison operator.
Enter either a static value in the input field on the right,
or click the |binding-symbol| button to select another field.

A condition can include multiple field value comparisons.
To add more sub-conditions, click the button at the bottom of the list.
You can also use the select field at the top to specify that either **all** conditions in the list must be true, or that it is enough for at least one of them to be true.

When a sub-condition is incompletely specified, evaluating the whole condition will fail and the transition will not be taken.
The |warning-symbol| symbol indicates an incomplete sub-condition, while the |check-symbol| symbol indicates that the sub-condition is valid.
Click either of these symbols to remove the sub condition from the list.

An unspecified condition is marked with a |warning-symbol| symbol.

.. |binding-symbol| image:: /_static/images/excl.gateway.auto.6.png
.. |warning-symbol| image:: /_static/images/excl.gateway.auto.3.png
.. |check-symbol| image:: /_static/images/excl.gateway.auto.4.png


Default transition
~~~~~~~~~~~~~~~~~~

An automatic decision usually has a default transition.
A default transition is a fallback mechanism:
if none of the conditions evaluate to true, the default transition is taken.

.. figure:: /_static/images/excl.gateway.auto.2.png

   The default transition

To make a transition the default, select the ‘per default’ item in the selection field at the top.
