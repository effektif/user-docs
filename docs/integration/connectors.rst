.. _connector-integration:

Custom data connectors
======================

When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field.
This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process.
However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers.

With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows.
The workflow system fetches data from a third-party system using a *connector*, which a customer or a partner implements and hosts.

A connector provides a web service that translates between the external system and Signavio Workflow.
The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use.
Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, which makes it possible to implement connectors in any programming language.

Using a connector
-----------------

A connector can provide data to :ref:`user-task` form fields.
A connector reference field:

.. **TODO:**

* makes it possible to select from a dynamic list of records
* supports auto-complete so you can work with a large number of records
* can include structured data for each record.

Implementing a connector
------------------------

To implement a connector, you publish three different kinds of resource.

#. :ref:`connector-descriptor` - defines one or more record types, each of which defines a list of fields.
#. :ref:`connector-type-options` - a list of records for each record type the connector defines.
#. :ref:`connector-record-details` (optional) - all fields for one record from the list of records.

Signavio Workflow accesses the connector on the web, via the public Internet, or via a private intranet for an on-premise installation.
The URL where the connector is located is called the *endpoint URL*.

For example, consider a connector that accesses a fictional customer database, that you publish at the endpoint URL ``https://example.org/connector``.
In this example, each customer record has the following fields.

.. list-table:: Example - customer record fields
   :header-rows: 1

   * - Property
     - Description
   * - ``id``
     - Unique identifier
   * - ``fullName``
     - Full name
   * - ``email``
     - Email address
   * - ``subscriptionType``
     - Type of subscription - bronze, silver or gold
   * - ``discount``
     - Default customer discount
   * - ``since``
     - Registration date

A complete example customer record, formatted as *JSON*, would then look like this::

	{
	  "id" : "7g8h9i",
	  "fullName" : "Charlie Chester",
	  "email" : "charlie@example.org",
	  "subscriptionType" : "silver",
	  "discount" : 15,
	  "since" : "2012-02-14T09:20:00.000Z"
	}

This example now includes enough information to implement a complete connector.

.. _connector-descriptor:

Connector descriptor
^^^^^^^^^^^^^^^^^^^^

A connector needs a descriptor to provide basic information, such as its name and description, as well as detailed information about the structure of the data the connector provides.
When you implement a connector, you must make the descriptor available as the following HTTP resource.

URL
   ``/`` - the connector’s *endpoint URL*
Request methods
   GET - fetches the connector descriptor
Response content type
  ``application/json``

The response body must be a JSON object with the following fields.

.. list-table:: Connector descriptor properties
   :header-rows: 1

   * - Property
     - Description
   * - ``key``
     - Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the connector
   * - ``name``
     - The connector name shown in the user interface
   * - ``description``
     - Detailed connector description
   * - ``typeDescriptors``
     - List of one or more descriptors for record types
   * - ``version``
     - The connector version, which should increase if the provided data structure changes
   * - ``protocolVersion``
     - The connector protocol version.
       The current version is ``1``.

For example, the JSON response body for a connector descriptor without any type descriptors would look like this::

	{
	  "key" : "customers",
	  "name" : "Customers",
	  "description" : "A database with all customers.",
	  "typeDescriptors" : [ ],
	  "version" : 1,
	  "protocolVersion" : 1
	}

In our example, you would retrieve the connector descriptor by sending the HTTP request ``GET https://example.org/connector/``.

.. _connector-type-descriptor:

A **record type descriptor** describes the format of the data the connector provides, such as the format of a customer record.
The ``typeDescriptors`` property in the JSON response is an array of record type descriptor JSON objects.

.. list-table:: Record type descriptor properties
   :header-rows: 1

   * - Property
     - Description
   * - ``key``
     - Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the record type within the connector descriptor, used in :ref:`connector-type-options` and :ref:`connector-record-details` URLs
   * - ``name``
     - The type name shown in the form builder user interface
   * - ``fields``
     - An array of :ref:`record field descriptors <connector-field-descriptor>`
   * - ``optionsAvailable``
     - Boolean value - ``true`` indicates that the connector provides a list of record options, used to provide a list in the user interface for user selection
   * - ``fetchOneAvailable``
     - Boolean value - ``true`` indicates that single records can be fetched by the ID in the options list

For example, the JSON object for a customer record type descriptor, without any fields, would look like this::

	{
	  "key" : "customer",
	  "name" : "Customer",
	  "fields" : [ ],
	  "optionsAvailable" : true,
	  "fetchOneAvailable" : true
	}

.. _connector-field-descriptor:

A **record field descriptor** specifies one field of a record type.
A record type is a complex structure that includes one or more fields, such as a customer’s full name.
Each field has a key, a name and a data type.

.. list-table:: Record field descriptor properties
   :header-rows: 1

   * - Property
     - Description
   * - ``key``
     - Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the field type within the record type
   * - ``name``
     - The field name shown in the user interface
   * - ``type``
     - A JSON object that describes field’s data type - see :ref:`connector-data-types` 

.. hint::
	Every record type automatically includes an ``id`` field with type ``text``, so you don’t have to define it explicitly.

An example for the ``fullName`` of our customer record type looks like this ::

	{
	  "key" : "fullName",
	  "name" : "Name",
	  "type" : {
	    "name" : "text"
	  }
	}

A complete example of our connector descriptor would look like this::

	{
	  "key" : "customers",
	  "name" : "Customers",
	  "description" : "A database with all customers.",
	  "typeDescriptors" : [ {
	    "key" : "customer",
	    "name" : "Customer",
	    "fields" : [ {
	      "key" : "fullName",
	      "name" : "Name",
	      "type" : {
	        "name" : "text"
	      }
	    }, {
	      "key" : "email",
	      "name" : "Email",
	      "type" : {
	        "name" : "emailAddress"
	      }
	    }, {
	      "key" : "subscriptionType",
	      "name" : "Type of the subscription",
	      "type" : {
	        "name" : "choice",
	        "options" : [
	        	{
	        		"id" : "bronze",
	        		"name" : "Bronze"
	        	}, {
	        		"id" : "silver",
	        		"name" : "Silver"
	        	}, {
	        		"id" : "gold",
	        		"name" : "Gold"
	        	}
	        ]
	      }
	    }, {
	      "key" : "discount",
	      "name" : "Discount",
	      "type" : {
	        "name" : "number"
	      }
	    }, {
	      "key" : "since",
	      "name" : "Registration date",
	      "type" : {
	        "name" : "date",
	        "kind" : "datetime"
	      }
	    } ],
	    "optionsAvailable" : true,
	    "fetchOneAvailable" : true
	  } ],
	  "version" : 1,
	  "protocolVersion" : 1
	}

.. _connector-type-options:

Record type options
^^^^^^^^^^^^^^^^^^^

When you use a record type on a form, you will see a form field where you can enter a search query and select one of the options shown.
Each result represents a record provided by the connector.
In order to show a selection of different records to the user, a connector can provide a list of options for a record type.

To make a list of options available to forms, in the :ref:`connector-type-descriptor`, set the ``optionsAvailable`` flag to ``true``.
The connector must also make the options available as the following HTTP resource.

URL (relative to the endpoint URL)
   ``/:type/options`` - with path parameter ``:type`` - a record type key
Query string (optional)
   ``filter=:query`` - added in case the user enters a search, where `:query` encodes the search string
Request methods
   GET - fetches the list of record type options
Response content type
  ``application/json``

The response body must be an array of JSON objects, which should have a limited size.
Each object in the array must have the following fields.

.. list-table:: Record type options object properties
   :header-rows: 1

   * - Property
     - Description
   * - ``id``
     - Unique string record ID
   * - ``name``
     - The text label shown in the user interface, which could aggregate multiple record fields like ``fullName (email)``

For example, a list of customer options, with URL ``https://example.org/connector/customer/options``, would look like this::

	[ {
	  "id" : "1a2b3c",
	  "name" : "Alice Allgood"
	}, {
	  "id" : "4d5e6f",
	  "name" : "Ben Brown"
	}, {
	  "id" : "7g8h9i",
	  "name" : "Charlie Chester"
	} ]

.. _connector-record-details:

Record details
^^^^^^^^^^^^^^

When you use a connector form field to select a record, you can use the record’s data in the workflow. 
Signavio Workflow only stores the record’s ID as a reference, and fetches the entire record when needed, when accessing the nested data.

To make a record’s fields available, in the :ref:`connector-type-descriptor`, set the ``fetchOneAvailable`` flag to ``true``.
The connector must also make the records available as the following HTTP resource.

URL (relative to the endpoint URL)
   ``/:type/:id`` - with path parameters 
   ``:type`` - a record type key, and
   ``:id`` - a record ID
Request methods
   GET - fetches details for a single record
Response content type
  ``application/json``

For example, a customer record, with URL ``https://example.org/connector/customer/7g8h9i``, would look like this::

	{
	  "id" : "7g8h9i",
	  "fullName" : "Charlie Chester",
	  "email" : "charlie@example.org",
	  "subscriptionType" : "silver",
	  "discount" : 15,
	  "since" : "2012-02-14T09:20:00.000Z"
	}


.. _connector-data-types:

Data types and formats
----------------------

A data type defines which kind of value and format a field in a record can have.
A type descriptor represents a data type as a JSON object, whose ``name`` property contains the data type name.

Data types may use additional properties for type-specific configuration.
Furthermore, the expected format a record value depends on the data type.

Choice type
^^^^^^^^^^^

A choice type represents a value from a fixed list of configured options.

* ``name`` - ``choice``
* ``options`` - an array of choice options
	
Every choice option consists of an ``id`` and a ``name``. 
The ``id`` of a choice option will be used as the field value in a record.
The ``name`` will be shown to the user in the UI.

The value of the ``id`` should be a string consisting of alphanumeric characters (a-z, A-Z, 0-9).
A choice type must not have two options with the same ``id``.

::

	{
	  "name" : "choice",
	  "options" : [
		{
		  "id" : "bronze",
		  "name" : "Bronze"
		},
		{
		  "id" : "silver",
		  "name" : "Silver"
		},
		{
		  "id" : "gold",
		  "name" : "Gold"
		}
	  ]  
	}

Date type
^^^^^^^^^

Signavio Workflow supports three different kinds of date types: ``date``, ``time``, ``datetime``.
For ``date`` and ``time`` only the respective parts of a timestamp are considered when evaluating conditions in a workflow. 

* ``name`` - ``date``
* ``kind`` - (required) defines whether the value is a simple date, a time or both

	* ``date``
	* ``time``
	* ``datetime``

:: 

	{
	  "name" : "date",
	  "kind" : "datetime"
	}

Every date type value in a record must be formatted as a [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) string in UTC.
The used format is ``YYYY-MM-DDThh:mm:ss.SSSZ``, an example value looks like this::

	"2012-02-14T09:20:00.000Z"

``date`` and ``time`` strings need to be transmitted in that format as well.
As mentioned before, for those types only the first respectively the last part of the timestamp is considered during the execution.

Email address type
^^^^^^^^^^^^^^^^^^

The email address type represents, as the name already indicates, an email address.

* ``name`` - ``emailAddress``

:: 

	{
	  "name" : "emailAddress"
	}

The record value must be a plain string.

Link type
^^^^^^^^^

A link represents an Internet address (URL), such as a web site address.

* ``name`` - ``link``

::

	{
	  "name" : "link"
	}

The record value must be a plain string.

Money type
^^^^^^^^^^

A money value is a combination of an ``amount`` and a ``currency``. 

* ``name`` - ``money``

:: 

	{
	  "name" : "money"
	}

The record value is a JSON object with the two fields ``amount`` and ``currency``.
The ``amount`` can be any number.
The ``currency`` is a [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) string which represents the respective currency.

:: 

	{
	  "amount" : 12.40
	  "currency" : "EUR"
	}

Number type
^^^^^^^^^^^

A number can be either an integer or a decimal.

* ``name`` - ``number``

::

	{
	  "name" : "number"
	}

The record value is the plain number.
The decimal mark is a single ``.``.

:: 

	{
	  "myInteger" : 42,
	  "myDecimal" : 42.42
	}

Text type
^^^^^^^^^

A text can contain any string.
Optionally, a single line text can be turned into a multi line text by adding the flag ``multiLine`` to the data type.


* ``name`` - ``text``
* ``multiLine`` - (optional) if set to ``true`` the text field will allow multiple lines of input

:: 

	{
	  "name" : "text"
	}

::

	{
	  "name" : "text",
	  "multiLine" : true
	}

The record value must be a plain string.

Yes/No Checkbox type
^^^^^^^^^^^^^^^^^^^^^

The yes/no checkbox type represents a single boolean value which can be ``true`` or ``false``.

* ``name`` - ``boolean``

::

	{
	  "name" : "boolean"
	}

The record value must be a boolean value, either ``true`` or ``false``.

:: 

	{
	  "myCheckbox" : true
	}

Authentication
--------------

Due to the fact that a connector is publicly accessible, any provided data will be publicly available as well.
In order to prevent unauthorized access, the connector can implement one of two authentication mechanisms.

HTTP basic authentication
^^^^^^^^^^^^^^^^^^^^^^^^^

A simple method for authentication is [HTTP basic authentication](https://en.wikipedia.org/wiki/Basic_access_authentication).
While configuring a connector, you can specify a username and a password.
Your connector endpoint then needs to check the ``Authorization`` header which contains the Base64 encoded username and password and verify their values.

Signavio Workflow will provide the ``Authorization`` header pre-emptively on the first request, the connector will not be required to send the authentication challenge.

Token authentication
^^^^^^^^^^^^^^^^^^^^

Similar to an API key, you can choose a password (token) which will be provided in a header or query parameter upon every request send to the connector.
The configuration allows you to choose whether you want to use a request header field or a query parameter which is added to the URL.
Furthermore, you can pick the name of the respective header field / query parameter.

The connector then simply needs to check the respective header field value / query parameter value.

Configuring a connector
-----------------------

