.. _javascript:

JavaScript integration
======================

You can integrate with external systems by writing JavaScript code in a :ref:`javascript-action`.
Signavio Workflow Accelerator runs the code on the server, using `Node.js <https://nodejs.org>`_.
As well as Node.js’ JavaScript API, scripts can use additional libraries (see below).

Script task configuration
-------------------------

After creating or selecting a JavaScript action, the configuration panel looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-1.png

   JavaScript configuration panel

The top section of the panel contains the JavaScript text editor.
By default, it already contains ``console.log('Hello World!');``.
Use the `console <https://nodejs.org/dist/latest-v5.x/docs/api/console.html>`_ API for log output when testing scripts.

JavaScript libraries
--------------------

Script tasks support a number of popular JavaScript libraries.
To import a package, use our custom ``require`` function:

.. code:: javascript

   var moment = require('moment');

You can also choose another name for the import:

.. code:: javascript

   var stringValidator = require('validator');

.. list-table:: Supported JavaScript libraries
   :header-rows: 1
   :widths: 12 13 75

   * - Library
     - Import
     - Description
   * - `CSV <https://www.npmjs.com/package/csv>`_
     - ``csv``
     - CSV generation, parsing, transformation and serialization
   * - `Lodash <https://www.npmjs.com/package/lodash>`_
     - ``lodash``
     - Convenience functions for working with collections and values
   * - `moment <https://www.npmjs.com/package/moment>`_
     - ``moment``
     - Parse, validate, manipulate, and display dates; with `Twix <https://www.npmjs.com/package/twix>`_ date range support
   * - `request <https://www.npmjs.com/package/request>`_
     - ``request``
     - Simplified HTTP request client
   * - `validator <https://www.npmjs.com/package/validator>`_
     - ``validator``
     - String validation and sanitization

The ``_`` (Lodash) and ``request`` packages are always imported, for backwards compatibility.

Testing scripts
---------------

The lower section allows you to test the script.
Click `Test it` to execute the JavaScript code.
The test runner displays the results underneath:

.. figure:: /_static/images/action-types/javascript/javascript-2.png

   JavaScript test output

The middle section shows the :ref:`process variables <variables>`, starting with just the *Case* variable for a new process.
If you add an :ref:`email trigger <email-trigger>` to the process, you will also see a *Trigger email* variable.

Using process variables
-----------------------

Next, we'll show how to work with data.
Suppose that the process includes a form that has each type of field and looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-3.png

   Form taking input for JavaScript

When you open the JavaScript configuration again, you'll see the variables section shows some of the form field variables.

.. figure:: /_static/images/action-types/javascript/javascript-4.png

   JavaScript variables

Click `Show all fields` and select the variables you want to access in the script.
The script can access the variables using the *JavaScript variable* name from the table.
To access object variables’ fields, use the field names specified for the corresponding data type: :ref:`Case <case-variable>`, :ref:`type-email`, :ref:`type-file` or :ref:`type-user`.

In this example (below), you have selected all variables.
For each variable that you select, you get an input field to specify a test value.
Here you see all fields with a test value.

.. figure:: /_static/images/action-types/javascript/javascript-5.png

   JavaScript test values

When clicking `Test it` again, we can see the JSON structure of the variable data for the different variable types.

.. figure:: /_static/images/action-types/javascript/javascript-7.png

   JavaScript JSON values

The *contract* and *salesRepresentative* variables have complex types, :ref:`type-file` and :ref:`type-user`, so the table only shows an ID.
The *Updated value* column shows the result of assigning new values to these variables in the script.

.. _case-updates:

Updating case information
-------------------------

The process variables always include the built-in :ref:`Case <case-variable>` variable, which contains information about the current case.
Sometimes, you want to update this case information using data from process variables.
You can update some of the this case variable’s fields, as follows.

.. code:: javascript

   // Set the case name using a template.
   _case.name = `Case ${_case.caseNumber}`;

   // Set the case’s due date using a date variable set on a form.
   _case.dueDate = releaseDate;

A :ref:`case name template <details>` can only use :ref:`form-trigger` fields to set the case name when the process starts.
However, when you can set the case name directly in a JavaScript action, you don’t have this restriction.

Looking up Workflow Accelerator data
---------------------------------

In a JavaScript task, you might need to select a Workflow Accelerator user based on external data, to assign a role.
To do this, you can use the built-in ``users`` API to find a user by their email address.

.. code:: javascript

   const users = require('users');
   reviewer = users.findByEmail(reviewerEmailAddress);

This example uses the value of a previously-supplied ``reviewerEmailAddress`` :ref:`type-email-address` variable to set a ``reviewer`` :ref:`type-user` variable.

Calling an external web service
-------------------------------

You can use these variables to send data to an external web service,
using the `request module <https://github.com/mikeal/request/blob/master/README.md>`_.
For example, the following script sends the value of the ``startDate`` variable
in an HTTP POST request to an external web service.

.. figure:: /_static/images/action-types/javascript/javascript-9.png

This example uses a test endpoint configured using `Mocky <http://www.mocky.io/>`_
to return an HTTP response.
This has the following result in the Workflow Accelerator test console:

.. figure:: /_static/images/action-types/javascript/javascript-8.png

   Updating a variable via an external web service

The two log statements, starting with *HTTP 200*,
show the HTTP response from the web service.
The response body (as set-up in Mocky) contains JSON data that includes
an updated value for the ``startDate`` variable,
changing the date from ``2015-06-15`` to ``2015-06-16``.

The script then parses this JSON response using ``JSON.parse``
and updates the ``startDate`` variable in Workflow Accelerator,
as shown in the *Updated value* column in the test console’s variables table.
