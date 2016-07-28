.. _connector-integration:

Custom data connectors
======================

Signavio Workflow offers a generic way to integrate data from other software systems into your workflows.
The workflow system communicates with third party system using a *connector*.
The connector acts as a translator between the other system and Signavio Workflow.
It provides a well defined interface, which can be accessed by Signavio Workflow and transforms any data to a format supported by Signavio Workflow.


The communication between Signavio Workflow and the connector happens over *HTTP* / *HTTPS* and uses *JSON* as the exchange format.
The connector has to be implemented and hosted by the customer or a partner.
Due to the communication over *HTTP* and *JSON*, the connector can be implemented in any programming language.


The data provided by a connector can be used in user task forms.

**TODO:**

* can be used as form field with auto-complete
* read-only for now, writing data comes later
* connector provides a list of choices
* connector provides extended data for a single record

Connector basics
----------------

Every connector provides a descriptor which defines the types of records that it provides.
A connector can provide one or multiple types of records.
Every record type again defines its structure, a list of fields with a key, a name and a data type.


Our example connector will connect to a fictional customer database.
Every customer record has the following fields:

:id: a unique identifier
:fullName: the name of the customer
:email: the email address of the customer
:subscriptionType: the type of the subscription - bronze, silver or gold
:discount: the default discount for the customer
:since: the registration date

A complete example record provided by the connector in *JSON* would look like this: ::

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


* *key* - a unique key which identifies the connector

  * a *key* should only consist of alphanumeric characters (a - z, A - Z, 0 - 9)

* *name* - a name for the connector which is shown in the UI
* *description* - a more detailed description of the connector
* *typeDescriptors* - a list of one or more descriptors for record types
* *version* - the version of the connector
	
	* the connector version should be increased with any change of the provided data structure

* *protocolVersion* - the version of the used connector protocol 

 * the current version is `1`

The connector will provide its descriptor upon a *GET* request to its base URL.
If your connector 

An example of a connector descriptor without any type descriptors would like this: ::

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

A complete example our connector descriptor would look like this: ::

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



Setup a new connector in Signavio Workflow
------------------------------------------

