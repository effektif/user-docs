.. _connector-integration:

Custom data connectors
======================

When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field.
This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process.
However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers.

With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows.
The workflow system communicates with a third-party system using a *connector*, which a customer or a partner implements and hosts.

A connector provides a web service that translates between the external system and Signavio Workflow.
The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use.
Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, with *JSON* as the data format.
The open standards that define HTTP and JSON make it possible to implement connectors in any programming language.

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

Every connector provides a descriptor which defines the types of records that it provides.
A connector can provide one or multiple types of records.
Every record type again defines its structure, a list of fields with a key, a name and a data type.

The connector itself is implemented as a web service and must be hosted in a location which is available to Signavio Workflow.
This location can be in a private network for an on-premise version of Signavio Workflow and must be publicly available if you use the SaaS version of Signavio Workflow.
The URL where the connector is located is called the *endpoint URL*.

A connector offers three different types of requests.
The shown paths are relative to the connectors URL endpoint.

* ``GET /`` 

	* provides the connector descriptor, see :ref:`connector-descriptor`

* ``GET /:typeKey/options?filter=:filterValue``

	* provides a list of options for the specified record type, see :ref:`connector-type-options` 
	* ``:typeKey`` represents the chosen key for a type descriptor
	* the query parameter ``filter`` is added in case the user enters a search string
	* ``:filterValue`` is the search query entered by the user
	* the returned list of options should have a limited size

* ``GET /:typeKey/:id``

	* provides a single record of the specifed type
	* ``:typeKey`` represents the chosen key for a type descriptor
	* ``:id`` represents the unique of the record

Our example connector will connect to a fictional customer database.
The endpoint URL of the connector will be ``https://example.org/workflow/connector``.
Every customer record has the following fields:

* ``id`` - a unique identifier
* ``fullName`` - the name of the customer
* ``email`` - the email address of the customer
* ``subscriptionType`` - the type of the subscription - bronze, silver or gold
* ``discount`` - the default discount for the customer
* ``since`` - the registration date

A complete example record provided by the connector in *JSON* would look like this::

	{
		"id" : "7g8h9i",
		"fullName" : "Charlie Chester",
		"email" : "charlie@example.org",
		"subscriptionType" : "silver",
		"discount" : 15,
		"since" : "2012-02-14T09:20:00.000Z"
	}

This example record would be retrieved by executig a ``GET`` request to ``https://example.org/workflow/connector/customer/7g8h9i``.

.. _connector-descriptor:
Connector descriptor
^^^^^^^^^^^^^^^^^^^^

The connector provides a descriptor which gives some basic information like a name and a description and more detailed information about the structure of the provided data.

* ``key`` - a unique key which identifies the connector

  * a key should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)

* ``name`` - a name for the connector which is shown in the UI
* ``description`` - a more detailed description of the connector
* ``typeDescriptors`` - a list of one or more descriptors for record types
* ``version`` - the version of the connector
	
	* the connector version should be increased with any change of the provided data structure

* ``protocolVersion`` - the version of the used connector protocol 

	* the current version is ``1``

The connector will provide its descriptor upon a ``GET`` request to the connector endpoint URL.

An example of a connector descriptor without any type descriptors would like this::

	{
	  "key" : "customers",
	  "name" : "Customers",
	  "description" : "A database with all customers.",
	  "typeDescriptors" : [ ],
	  "version" : 1,
	  "protocolVersion" : 1
	}

In our example, you would retrieve the connector descriptor by executing a ``GET`` request to ``https://example.org/workflow/connector/``.

.. _connector-type-descriptor:
Record type descriptor
^^^^^^^^^^^^^^^^^^^^^^

A type descriptor is used to describe the format of the data provided by the connector.

* ``key`` - a unique identifier within the connector descriptor

	* a key should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)
	* the key will be used in the URL to retrieve a list of options and single records

* ``name`` - the name of the type which is shown in the form editor
* ``fields`` - an array of field descriptors, see :ref:`connector-field-descriptor`
* ``optionsAvailable`` - a boolean value indicating that a list of record options can be retrieved

	* must be set to ``true`` if the user should be able to select a record from a list of options

* ``fetchOneAvailable`` - a boolean value indicating that single records can be fetched by ID

	* if set to ``true``, records selected before can be fetched

.. _connector-field-descriptor:
Record field descriptor
^^^^^^^^^^^^^^^^^^^^^^^

A record field descriptor specifies one data field of a record type.

* ``key`` - a unique identifier within the record type

	* a key should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)

* ``name`` - the name of the field which will be shown in the UI
* ``type`` - the data type of the field, see :ref:`connector-data-types` 

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

.. _connector-type-options
Record type options
^^^^^^^^^^^^^^^^^^^

When a record type is used in a user task, the user will see a form field which allows to enter a search query and select one of the shown results.
Every result represents a record provided by the connector.
In order to show a selection of different records to the user, a connector can provide a list of options for a record type.
First of all, the ``optionsAvailable`` flag in the type descriptor must be set to ``true``.
Furthermore, the connector must implement the request ``GET /:typeKey/options``.

The result of the request is an array of JSON object with the properties ``id`` and ``name``::
	
	[
		{
			"id" : "optionId",
			"name" : "title of the option"
		}, ...
	]

* ``id`` - matches the ``id`` of the actual record
* ``name`` - any text that will be shown to the user

	* the name could also contain an aggregation of multiple record values like ``fullName (email)``


For our customer example the option list would like this::

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

.. _connector-data-types:
Data types and formats
----------------------

A data type defines which kind of value and format a field in a record can have.
Data types are represented in the type descriptor as JSON objects.
The different data types are distinguished by the contained field ``type``.

* ``type`` : name of the data type

Data types can have additional fields containing type specific configuration.

Choice type
^^^^^^^^^^^

* ``type`` - ``choice``
* ``options`` - an array of choice options
	
Every choice option consists of an ``id`` and ``name``. 
The ``id`` of a choice option will be used as the field value in a record.
The ``name`` will be shown to the user in the UI.

::

	{
		"type" : "choice",
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

* ``type`` - ``date``
* ``kind`` - (required) defines whether the value is a simple date, a time or both

	* ``date``
	* ``time``
	* ``datetime``

:: 

	{
		"type" : "date",
		"kind" : "datetime"
	}

Email address type
^^^^^^^^^^^^^^^^^^

* ``type`` - ``emailAddress``

:: 

	{
		"type" : "emailAddress"
	}

Link type
^^^^^^^^^

* ``type`` - ``link``

::

	{
		"type" : "link"
	}

Money type
^^^^^^^^^^

* ``type`` - ``money``

:: 

	{
		"type" : "money"
	}

Number type
^^^^^^^^^^^

* ``type`` - ``number``

::

	{
		"type" : "number"
	}

Text type
^^^^^^^^^

* ``type`` - ``text``
* ``multiLine`` - (optional) if set to ``true`` the text field will allow multiple lines of input

:: 

	{
		"type" : "text"
	}

::

	{
		"type" : "text",
		"multiLine" : true
	}

Yes/No Checkbox type
^^^^^^^^^^^^^^^^^^^^^

* ``type`` - ``boolean``

::

	{
		"type" : "boolean"
	}




Authentication
--------------

**TODO:**

* HTTP basic authentication, 
	
	* provide username and password

* token authorization

	* provide name and token
	* specify location (header or query parameter)




Configuring a connector
-----------------------

