.. _javascript:

JavaScript action
-----------------

The JavaScript action allows developers to add JavaScript to process execution.
After creating or selecting a JavaScript action, the configuration panel looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-1.png

   JavaScript configuration panel

The top section of the panel contains the JavaScript text editor.
By default, it already contains ``console.log('Hello World!');``.

The lower section allows you to test the script.
Click `Test it` to execute the JavaScript code.
The test runner displays the results underneath:

.. figure:: /_static/images/action-types/javascript/javascript-2.png

   JavaScript test output

Next, we'll show how to work with data.
Suppose that the process includes a form that has each type of field and looks like this:

.. figure:: /_static/images/action-types/javascript/javascript-3.png

   Form taking input for JavaScript

When you open the JavaScript configuration again, you'll see the variables section shows some of the form field variables.

.. figure:: /_static/images/action-types/javascript/javascript-4.png

   JavaScript variables

Click `Show all fields` and select the variables you want to access in the script.
In this example (below), you have selected all variables.
For each variable that you select, you get an input field to specify a test value.
Here you see all fields with a test value.

.. figure:: /_static/images/action-types/javascript/javascript-5.png

   JavaScript test values

When clicking `Test it` again, we can see the JSON structure of the variable data for the different variable types.

.. figure:: /_static/images/action-types/javascript/javascript-7.png

   JavaScript JSON values

You can use these variables to send data to an external web service, 
using the `request module <https://github.com/mikeal/request/blob/master/README.md>`_.
For example, the following script sends the value of the ``startDate`` variable
in an HTTP POST request to an external web service. ::

	var requestBody = { "startDate" : startDate };

	request.post( {
		url: 'http://www.mocky.io/v2/55798e08bdbf280d0d423cb8', 
		body: JSON.stringify(requestBody),
		headers: { 'Content-Type': 'application/json' }
	  },
	  function (error, response, responseBody) {
		var log = "HTTP " + response.statusCode + "\n" + responseBody;
		if (!error && response.statusCode === 200) {
		  console.info(log);
		  var responseData = JSON.parse(responseBody);
		  startDate = responseData.startDate;
		}
		else {
		  console.error(log);
		}
	  }
	);

This example uses a test endpoint configured using `Mocky <http://www.mocky.io/>`_
to return an HTTP response.
This has the following result in the Effektif test console:

.. figure:: /_static/images/action-types/javascript/javascript-8.png

   Updating a variable via an external web service

The two log statements, starting with *HTTP 200*, 
show the HTTP response from the web service.
The response body (as set-up in Mocky) contains JSON data that includes 
an updated value for the ``startDate`` variable,
changing the date from ``2015-06-15`` to ``2015-06-16``.

The script then parses this JSON response using ``JSON.parse``
and updates the ``startDate`` variable in Effektif,
as shown in the *Updated value* column in the test console’s variables table.
