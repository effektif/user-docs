Javascript action
-----------------

The Javascript action allows developers to run a Javascript to the process execution.
After creating or selecting a Javascript action, the configuration panel looks like this.

.. figure:: /_static/images/javascript.1.png

   Javascript configuration panel

The top part is the Javascript text editor.
By default, it already contains ``console.log('Hello World!');``.

The lower part allows you to test the script.
Just hit `Test it`.
The results should look like this:

.. figure:: /_static/images/javascript.2.png

   Javascript test output

Next, we'll show how to work with data.
Suppose there is a form elsewhere in the process that has each type of field and looks like this:

.. figure:: /_static/images/javascript.3.png

   Form taking input for Javascript

When you open the Javascript configuration again, you'll see the variables section shows some of the form field variables.

.. figure:: /_static/images/javascript.4.png

   JavaScript variables

Click `Show all fields` and select the variables you want to access in the script.
In this example, all variables are selected.
For each variable that is selected, you get an input field to specify a test value.
Here you see all fields with a test value.

.. figure:: /_static/images/javascript.5.png

   JavaScript test values

To show you the data structures, we've changed the Javascript to print all variables.

.. figure:: /_static/images/javascript.6.png

   JavaScript script

When clicking `Test it` again, we can see the json structure of the variable data for the different variable types.

.. figure:: /_static/images/javascript.7.png

   JavaScript json values
