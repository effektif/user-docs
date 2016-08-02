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
   ``filter=:query`` - added when the user enters a search; ``:query`` encodes the search string
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

Selecting this customer record from the customer options list would give the workflow access to all of this customer’s fields.

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

.. list-table::
   :header-rows: 1

   * - Property
     - Values
   * - ``name``
     - ``choice``
   * - ``options``
     - A JSON array of choice option objects, each with ``id`` and ``name`` properties

The ``id`` property stores a unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the option within the choice type; no two options may have the same ``id``.
The user interface shows the ``name`` property’s value to the user.

The data type JSON object for a choice type with three options looks like this::

	"type" : {
	  "name" : "choice",
	  "options" : [
	    {
	      "id" : "b",
	      "name" : "Bronze"
	    },
	    {
	      "id" : "s",
	      "name" : "Silver"
	    },
	    {
	      "id" : "g",
	      "name" : "Gold"
	    }
	  ]  
	}

A field value stores the ``id`` property’s value::

	"value" : "g"

Date type
^^^^^^^^^

A date represents either a date and time (such as *2012-02-14 09:20*), just a date (*2012-02-14*), or just a time (*09:20*).

.. list-table::
   :header-rows: 1

   * - Property
     - Values
   * - ``name``
     - ``date``
   * - ``kind``
     -  ``date``, ``time``, ``datetime``; specifies whether the value is a date, a time of day or both (required)

:: 

	"type" : {
	  "name" : "date",
	  "kind" : "datetime"
	}

Date values must always use the ``YYYY-MM-DDThh:mm:ss.SSSZ`` `ISO 8601 <https://en.wikipedia.org/wiki/ISO_8601>`_ date format and the UTC time zone.
For example::

	"value" : "2012-02-14T09:20:00.000Z"

All date types use this format - ``datetime``, ``date`` and ``time``.
For ``date`` and ``time`` values, execution only uses the first and last parts of the values, respectively.

Email address type
^^^^^^^^^^^^^^^^^^

An email address type represents an email address.

:: 

	"type" : {
	  "name" : "emailAddress"
	}

An email address value stores a plain string::

	"value" : "alice@example.org"

Link type
^^^^^^^^^

A link type represents an Internet address (a URL), such as a web site address.

::

	"type" : {
	  "name" : "link"
	}

A link value stores a plain string::

	"value" : "http://www.example.org/"

Money type
^^^^^^^^^^

A money type represents the combination of an *amount* and a *currency*.

:: 

	"type" : {
	  "name" : "money"
	}

A money value stores a JSON object with the fields ``amount`` and ``currency``.
The ``amount`` property stores a number.
The ``currency`` property stores an `ISO 4217 <https://en.wikipedia.org/wiki/ISO_4217>`_ currency code.

:: 

	"value" : {
	  "amount" : 12.40
	  "currency" : "EUR"
	}

Number type
^^^^^^^^^^^

A number type represents either an integer or decimal number.

::

	"type" : {
	  "name" : "number"
	}

A number value stores a plain number, using a single ``.`` as decimal separator.

:: 

	{
	  "integerValue" : 42,
	  "decimalValue" : 42.42
	}

Text type
^^^^^^^^^

A text type represents a string - either a single line of text or multiple lines.
Optionally, a single line text can be turned into a multi line text by adding the flag ``multiLine`` to the data type.

.. list-table::
   :header-rows: 1

   * - Property
     - Values
   * - ``name``
     - ``text``
   * - ``multiLine``
     - (optional) if set to ``true`` the text field will allow multiple lines of input

:: 

	"type" : {
	  "name" : "text"
	}

::

	"type" : {
	  "name" : "text",
	  "multiLine" : true
	}

A text value stores a plain string::

	"value" : "Example"

Yes/No Checkbox type
^^^^^^^^^^^^^^^^^^^^^

A yes/no checkbox type represents a choice between the values ‘yes’ and ‘no’.

::

	"type" : {
	  "name" : "boolean"
	}

A yes/no checkbox value stores a Boolean value - ``true`` or ``false``.

:: 

	"value" : true

Authentication
--------------

Publishing a connector makes it publicly accessible, as well as any data that the connector provides.
To prevent unauthorized access, the connector can implement authentication, so that only Signavio Workflow can access the data.
Connectors may use one of two authentication mechanisms.

HTTP Basic authentication
^^^^^^^^^^^^^^^^^^^^^^^^^

Connectors can use `HTTP basic authentication <https://en.wikipedia.org/wiki/Basic_access_authentication>`_ to restrict access using a username and password that you specify when configuring the connector.
To implement HTTP Basic authentication, your connector endpoints must:

#. send an HTTP *401 Unauthorized* response, with an empty response body, for any request that does not include valid credentials
#. check the credentials in the ``Authorization`` HTTP header field, when provided, by decoding the Base64-encoded username and password and verifying their values.

When a connector’s configuration includes a username and password, Signavio Workflow will pre-emptively include the ``Authorization`` header when sending requests to the connector endpoints.
This avoids an additional *401 Unauthorized* response and a new request for the authentication challenge.

Token authentication
^^^^^^^^^^^^^^^^^^^^

Similar to an API key, you can choose a password (token) that Signavio Workflow will include in a request header field or URL query string, for every request it sends the connector endpoints.
In the connector configuration, you can choose between a request header field or a URL query string parameter, and specify the header or parameter name.

The connector endpoints can then authenticate requests by checking the respective header field or query string parameter value.

Configuring a connector
-----------------------

