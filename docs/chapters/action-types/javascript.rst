JavaScript action
-----------------

The JavaScript action allows developers to run a JavaScript to the process execution.
After creating or selecting a JavaScript action, the configuration panel looks like this.

.. TODO update screenshot

.. figure:: /_static/images/javascript.1.png

   JavaScript configuration panel

The top section of the panel is the JavaScript text editor.
By default, it already contains ``console.log('Hello World!');``.

The lower section allows you to test the script.
Click `Test it` to execute the JavaScript code.
The results are displayed underneath:

.. TODO update screenshot

.. figure:: /_static/images/javascript.2.png

   JavaScript test output

Next, we'll show how to work with data.
Suppose there is a form elsewhere in the process that has each type of field and looks like this:

.. TODO update screenshot

.. figure:: /_static/images/javascript.3.png

   Form taking input for JavaScript

When you open the JavaScript configuration again, you'll see the variables section shows some of the form field variables.

.. TODO update screenshot

.. figure:: /_static/images/javascript.4.png

   JavaScript variables

Click `Show all fields` and select the variables you want to access in the script.
In this example, all variables are selected.
For each variable that is selected, you get an input field to specify a test value.
Here you see all fields with a test value.

.. figure:: /_static/images/javascript.5.png

   JavaScript test values

To show you the data structures, we've changed the JavaScript to print all variables.

.. figure:: /_static/images/javascript.6.png

   JavaScript script

When clicking `Test it` again, we can see the JSON structure of the variable data for the different variable types.

.. TODO update screenshot

.. figure:: /_static/images/javascript.7.png

   JavaScript JSON values
