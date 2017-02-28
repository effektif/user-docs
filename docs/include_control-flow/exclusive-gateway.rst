.. _exclusive-gateway:

Exclusive gateway
-----------------

.. figure:: /_static/images/control-flow/exclusive-gateway.png

   An exclusive gateway in the process editor

Use an exclusive gateway to make a choice between multiple execution paths.
The exclusive gateway selects one of the outgoing transitions,
and only continues execution on that transition.
You can configure an exclusive gateway with a *manual decision* or an *automatic decision*.

Manual decision
^^^^^^^^^^^^^^^

Use a manual decision for an exclusive gateway when a person must make a decision.
A user task must precede the gateway; this task includes making the decision.
The user interface presents the decision to the user as buttons on the user task form.

Suppose you have a user task called ‘Review contract’,
an exclusive gateway
and the two user tasks ‘Print contract’ and ‘Update contract’:

.. figure:: /_static/images/control-flow/excl-gateway-human-1.png

   An exclusive gateway must have at least one incoming and two outgoing transitions

Select the exclusive gateway.
Its type defaults to *manual decision*.
After creating the elements and connecting them, as above,
you have configured the exclusive gateway:

.. figure:: /_static/images/control-flow/excl-gateway-human-2.png

   Default manual decision configuration

In order to use the decision you need to name the buttons which will represent the decision.
For each button, the label on the right indicates the next action in the process,
which Signavio Workflow will perform when someone clicks the button.
In this example, when the user clicks the decision button `Print contract`, Signavio Workflow executes the `Print contract` task, but *not* the `Update contract` task.

You can easily change the text on the buttons.
For example, change them to `Approve` and `Reject`:

.. figure:: /_static/images/control-flow/excl-gateway-human-3.png

   Customized decision buttons

After starting a new case for this process,
the `Review contract` task will have decision buttons:

.. figure:: /_static/images/control-flow/excl-gateway-human-4.png

   Task decision buttons

When the task before the exclusive gateway - `Review contract` in this example - has a form, the form includes the decision buttons.

Manual decision variable
^^^^^^^^^^^^^^^^^^^^^^^^

Adding a manual decision to a process also creates a :ref:`workflow variable <variables>`.
You can use this to re-use the result of a decision later in the process,
either to display the entered value on another form,
or to use the value in an automatic decision’s condition.

During workflow execution, selecting a decision sets the variable’s value to the selected decision -
the text on the decision button.
In this example, the decision variable has the value ‘Approve’ or ‘Reject’.

.. figure:: /_static/images/control-flow/excl-gateway-human-1.png

   Decision variable values - ‘Approve’ or ‘Reject’

The variable has the name ‘Decision’, by default, or the name of the gateway if it has one.
You can change the variable name on the process editor’s `Details` tab, in the `Field overview`.


Automatic decision
^^^^^^^^^^^^^^^^^^

An exclusive gateway that selects an outgoing transition based on conditions that you choose models an automatic decision.
For each transition, you can formulate a condition using workflow data.
The workflow engine evaluates transition conditions in order, from top to bottom.
The workflow engine will take the transition with the first condition that evaluates to true, using the current case’s field values.

.. figure:: /_static/images/control-flow/excl-gateway-auto-5.png

   Automatic decision condition editor

To specify a condition, start by selecting a field and a comparison operator.
Enter either a static value in the input field on the right,
or click the |binding-symbol| button to select another field.

A condition can include multiple field value comparisons.
To add more sub-conditions, click the button at the bottom of the list.
You can also use the select field at the top to specify that either **all** conditions in the list must evaluate to true, or that at least one of them must evaluate to true.

If you do not completely specify a sub-condition, evaluating the whole condition will fail and the workflow engine will not follow the transition.
The |warning-symbol| symbol indicates an incomplete sub-condition, while the |check-symbol| symbol indicates a valid sub-condition.
Click either of these symbols to remove the sub-condition from the list.

.. |binding-symbol| image:: /_static/images/control-flow/excl-gateway-auto-6.png
.. |warning-symbol| image:: /_static/images/control-flow/excl-gateway-auto-3.png
.. |check-symbol| image:: /_static/images/control-flow/excl-gateway-auto-4.png


Default transition
~~~~~~~~~~~~~~~~~~

An automatic decision usually has a default transition.
You use a default transition as a fallback mechanism:
if none of the conditions evaluate to true, the workflow engine follows the default transition.

.. figure:: /_static/images/control-flow/excl-gateway-auto-2.png

   The default transition

To make a transition the default, select the ‘per default’ item in the selection field at the top.
