.. _javascript:

JavaScript integration
======================

You can integrate with external systems by writing JavaScript code in a :ref:`javascript-action`.
Signavio Workflow Accelerator runs the code on the server, using `Node.js <https://nodejs.org>`_.
As well as Node.js’ JavaScript API, scripts can use :ref:`additional libraries <javascript-libraries>`.

JavaScript action configuration
-------------------------------

After creating or selecting a JavaScript action, the configuration panel looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-1.png

   JavaScript configuration panel

The top section of the panel contains the JavaScript text editor.
By default, it already contains ``console.log('Hello World!');``.
Use the `console <https://nodejs.org/dist/latest-v5.x/docs/api/console.html>`_ API for log output when testing scripts.

.. _javascript-libraries:

JavaScript libraries
--------------------

JavaScript actions support a number of popular JavaScript libraries.
To import a package, use the ``require`` function:

.. code:: js

   var moment = require('moment');

You can also choose another name for the imported library:

.. code:: js

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
   * - Files
     - ``files``
     - Built-in API for :ref:`type-file` variable data
   * - `Lodash <https://www.npmjs.com/package/lodash>`_
     - ``lodash``
     - Convenience functions for working with collections and values
   * - `moment <https://www.npmjs.com/package/moment>`_
     - ``moment``
     - Parse, validate, manipulate, and display dates; with `Twix <https://www.npmjs.com/package/twix>`_ date range, and `moment-business-days <https://github.com/kalmecak/moment-business-days>`_ support
   * - `request <https://www.npmjs.com/package/request>`_
     - ``request``
     - Simplified HTTP request client
   * - Users
     - ``users``
     - Built-in API for :ref:`type-user` variable data
   * - `validator <https://www.npmjs.com/package/validator>`_
     - ``validator``
     - String validation and sanitization

The JavaScript action always imports the ``_`` (Lodash) and ``request`` packages, for backwards compatibility.

Testing scripts
---------------

Use the `Test Runner` tab to test the script.
Click `Start new test` to execute the JavaScript code.
The test runner displays the results underneath:

.. figure:: /_static/images/action-types/javascript/javascript-2.png

   JavaScript test output

At the top, you see the test execution date and time.
After running multiple tests, you can use this menu to select earlier test runs.
The `Variable updates` section shows a table of :ref:`process variables <variables>`, with their test values and any updates.
The `Logs` section shows console output and any errors.

Using process variables
-----------------------

Next, we'll show how to work with data.
Suppose that the process includes a form that has each type of field and looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-3.png

   Form fields that declare process variables

On the JavaScript configuration panel, the `Add existing variable` pick list now shows the form field variables.

.. figure:: /_static/images/action-types/javascript/javascript-4.png

   Process variable selection

Select the variables you want to access in the script.
The script can access the variables using the `JavaScript variable` name from the `Variables` table.
To access object variables’ fields, use the field names specified for the corresponding data type: :ref:`Case <case-variable>`, :ref:`type-email`, :ref:`type-file` or :ref:`type-user`.

In this example (below), you have selected all variables.
For each variable that you select, you get an input field to specify a test value.
Here you see all fields with a test value.

.. figure:: /_static/images/action-types/javascript/javascript-5.png

   JavaScript test values

Clicking `Start new test` again to see the JSON structure of the variable data for the different variable types.

.. figure:: /_static/images/action-types/javascript/javascript-7.png

   JavaScript JSON values

The *contract* and *salesRepresentative* variables have complex types, :ref:`type-file` and :ref:`type-user`, so the table only shows an ID.
The *Updated value* column shows the result of assigning new values to these variables in the script.

.. note::
  You can use JavaScript actions to update process variables.
  Then, you need to make sure you *re-assign* a new value to the variable instead of mutating the variable itself.
  Otherwise, the system will ignore the update.
  For example, the system ignores ``contactEmails.push('joan.doe@example.org')``, but correctly processes ``contactEmails = [].concat([], 'joan.doe@example.org')``.
  This restriction doesn't apply to variables you only use in the context of the JavaScript action.

.. _files-api:

Reading file contents
---------------------

A JavaScript action may need to read the contents of a file, in order to publish the file to an external web service.
To access :ref:`file <type-file>` content, you need to require the ``files`` API.

.. code:: js

  const files = require('files')
  const fileContent = files.getContent(contract)

In this example, ``contract`` is a file variable that references the file contents that the script reads.

The ``getContent`` function returns a Node.js `File <https://www.npmjs.com/package/file-api>`_ object, whose ``buffer`` property provides access to the file content bytes.
The following example loads a CSV file, converts the content bytes to a UTF-8 string, and parses the string:

.. code:: js

  const files = require('files')
  const csv = require('csv')

  // Read the reportCsv file variable
  const csvFile = files.getContent(reportCsv.id)

  csv.parse(csvFile.buffer.toString('utf-8'), {
      auto_parse: true,
      columns: true,
  }, (error, data) => {
      console.log(data)
  })


.. _case-updates:

Updating case information
-------------------------

The process variables always include the built-in :ref:`Case <case-variable>` variable, which contains information about the current case.
Sometimes, you want to update this case information using data from process variables.
You can update some of the this case variable's fields, as follows.

.. code:: js

   // Set the case name using a template.
   _case.name = `Case ${_case.caseNumber}`;

   // Set the case’s due date using a date variable set on a form.
   _case.dueDate = releaseDate;

   // Set the case’s priority, using text values '0' (high) to '3' (low)
   // priorities defines constant values high, medium, normal, and low
   const priorities = require('priorities')
   _case.priority = priorities.low


A :ref:`case name template <details>` can only use :ref:`form-trigger` fields to set the case name when the process starts.
However, when you can set the case name directly in a JavaScript action, you don’t have this restriction.

.. _users-api:

Loading user information
------------------------

In a JavaScript action, you might need to select a Workflow Accelerator user based on external data, to assign a role.
To do this, you can use the built-in ``users`` API to find a user by their email address.

.. code:: js

   const users = require('users');
   reviewer = users.findByEmail(reviewerEmailAddress);

This example uses the value of a previously-supplied ``reviewerEmailAddress`` :ref:`type-email-address` variable to set a ``reviewer`` :ref:`type-user` variable.

Calling an external web service
-------------------------------

You can use variables to send process data to an external web service,
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
changing the date from ``2017-08-01`` to ``2017-08-02``.

The script then parses this JSON response using ``JSON.parse``
and updates the ``startDate`` variable in Workflow Accelerator,
as shown in the *Updated value* column in the test console's variables table.
