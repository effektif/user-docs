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

The 

Our example connector will connect to a fictional customer database.
Every customer record has the following fields:

* ``id`` - a unique identifier
* ``fullName`` - the name of the customer
* ``email`` - the email address of the customer
* ``subscriptionType`` - the type of the subscription - bronze, silver or gold
* ``discount`` - the default discount for the customer
* ``since`` - the registration date

A complete example record provided by the connector in *JSON* would look like this::

	{
		"id" : "1a2b3c",
		"fullName" : "Charlie Chester",
		"email" : "charlie@company.com",
		"subscriptionType" : "silver",
		"discount" : 20,
		"since" : "2012-02-14T09:20:00Z"
	}

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

The connector will provide its descriptor upon a *GET* request to its base URL.
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

Record type descriptor
^^^^^^^^^^^^^^^^^^^^^^

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

Data types and formats
----------------------


Authentication
--------------



Configuring a connector
-----------------------

