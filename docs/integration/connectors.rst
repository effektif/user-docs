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

* ``GET /`` - the :ref:`connector-descriptor`

* ``GET /:typeKey/options?filter=:filterValue`` - the connector’s :ref:`connector-type-options`

	* ``:typeKey`` represents the chosen key for a type descriptor
	* the query parameter ``filter`` is added in case the user enters a search string
	* ``:filterValue`` is the search query entered by the user
	* the returned list of options should have a limited size

* ``GET /:typeKey/:id`` - a single record of the specified type

	* ``:typeKey`` represents the chosen key for a type descriptor
	* ``:id`` represents the unique of the record

Our example connector will connect to a fictional customer database.
The endpoint URL of the connector will be ``https://example.org/workflow/connector``.
Every customer record has the following fields:

.. list-table:: Example - customer record fields
   :header-rows: 1

   * - Property name
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
     - Default discount
   * - ``since``
     - Registration date

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

.. **TODO: specify HTTP request URL, method, response Content-Type**

The response body must be a JSON object with the following fields.

.. list-table:: Connector descriptor properties
   :header-rows: 1

   * - Property name
     - Description
   * - ``key``
     - Unique connector identifier - only alphanumeric characters (a-z, A-Z, 0-9)
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

A record type descriptor describes the format of the data the connector provides.

.. list-table:: Record type descriptor properties
   :header-rows: 1

   * - Property name
     - Description
   * - ``key``
     - Uniquely identifies the record type within the connector descriptor - only alphanumeric characters (a-z, A-Z, 0-9). The key will be used in the URL to retrieve a list of options and single records.
   * - ``name``
     - The type name shown in the form editor user interface
   * - ``fields``
     - An array of :ref:`field descriptors <connector-field-descriptor>`
   * - ``optionsAvailable``
     - Boolean value - ``true`` indicates that the connector provides a list of record options, used to provide a list in the user interface for user selection
   * - ``fetchOneAvailable``
     - Boolean value - ``true`` indicates that single records can be fetched by the ID from the options list

.. _connector-field-descriptor:

A record field descriptor specifies one data field of a record type.

.. list-table:: Record field descriptor properties
   :header-rows: 1

   * - Property name
     - Description
   * - ``key``
     - Uniquely identifies the field type within the record type - only alphanumeric characters (a-z, A-Z, 0-9).
   * - ``name``
     - The field name shown in the user interface
   * - ``type``
     - The field’s data type - see :ref:`connector-data-types` 

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

When a record type is used in a user task, the user will see a form field which allows to enter a search query and select one of the shown results.
Every result represents a record provided by the connector.
In order to show a selection of different records to the user, a connector can provide a list of options for a record type.
First of all, the ``optionsAvailable`` flag in the type descriptor must be set to ``true``.
Furthermore, the connector must implement the request ``GET /:typeKey/options``.

.. **TODO: specify HTTP request URL, method, response Content-Type**

The response body must be an array of JSON objects, each with the following fields.

.. list-table:: Record type options object properties
   :header-rows: 1

   * - Property name
     - Description
   * - ``id``
     - Unique option identifier - matches the ``id`` of the actual record
   * - ``name``
     - The label text shown in the user interface, which could aggregate multiple record fields like ``fullName (email)``

For our customer example the option list response would look like this::

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


.. **TODO: Single record resource**


Data types and formats
----------------------

A data type defines which kind of value and format a field in a record can have.
A type descriptor represents a data type as a JSON object, whose ``name`` property contains the data type name.

Data types may use additional properties for type-specific configuration.

Choice type
^^^^^^^^^^^

* ``name`` - ``choice``
* ``options`` - an array of choice options
	
Every choice option consists of an ``id`` and ``name``. 
The ``id`` of a choice option will be used as the field value in a record.
The ``name`` will be shown to the user in the UI.

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

Email address type
^^^^^^^^^^^^^^^^^^

* ``name`` - ``emailAddress``

:: 

	{
	  "name" : "emailAddress"
	}

Link type
^^^^^^^^^

* ``name`` - ``link``

::

	{
	  "name" : "link"
	}

Money type
^^^^^^^^^^

* ``name`` - ``money``

:: 

	{
	  "name" : "money"
	}

Number type
^^^^^^^^^^^

* ``name`` - ``number``

::

	{
	  "name" : "number"
	}

Text type
^^^^^^^^^

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

Yes/No Checkbox type
^^^^^^^^^^^^^^^^^^^^^

* ``name`` - ``boolean``

::

	{
	  "name" : "boolean"
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

