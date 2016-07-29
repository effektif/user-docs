.. _connector-integration:

Custom data connectors
======================

When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field.
This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process.
However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers.

With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows.
The workflow system communicates with a third-party system using a *connector*, which a the customer or a partner implements and hosts.

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
	* ``typeKey`` represents the chosen key for a type descriptor
	* ``filterValue`` is the search query entered by the user
	* the returned list of options should have a limited size

* ``GET /:typeKey/:id``

	* provides a single record of the specifed type
	* ``typeKey`` represents the chosen key for a type descriptor
	* ``id`` represents the unique of the record

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

  * a *key* should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)

* ``name`` - a name for the connector which is shown in the UI
* ``description`` - a more detailed description of the connector
* ``typeDescriptors`` - a list of one or more descriptors for record types
* ``version`` - the version of the connector
	
	* the connector version should be increased with any change of the provided data structure

* ``protocolVersion`` - the version of the used connector protocol 

 * the current version is ``1``

The connector will provide its descriptor upon a ``GET`` request to its base URL.
If your connector 

An example of a connector descriptor without any type descriptors would like this::

	{
	  "key" : "customers",
	  "name" : "Customers",
	  "description" : "A database with all customers.",
	  "typeDescriptors" : [ ],
	  "version" : 1,
	  "protocolVersion" : 1
	}

The connector is available 

.. _connector-type-descriptor:
Record type descriptor
^^^^^^^^^^^^^^^^^^^^^^

A type descriptor is used to describe the format of the data provided by the connector.

* ``key`` - a unique identifiere within the connector descriptor

	* a key should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)
	* the key will be used in the URL to retrieve a list of options and single records

* ``name`` - 
* ``fields`` - the data type  

A complete example our connector descriptor would look like this: 
A complete example our connector descriptor would look like this::

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


.. _connector-data-types:
Data types and formats
----------------------



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

