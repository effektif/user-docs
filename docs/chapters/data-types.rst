Data types
==========

The forms and some of the actions are linked to process data.
The process variables are mostly created automatic like for example when creating a new form field.
Each of the variables has a data type.
This section lists all the data types variables can have.

Variables vs fields
-------------------

Process information is stored in variables.
Each variable has a user defined name and a type.
A type can be atomic, like a string (text) or an email address.
Other types like user, file or email are composite.
Those types have a list of fields. When using expressions or configuring some action, references are made to process data.
Often those references can be to the variables themselves or to fields inside the variables.
The process builder will guide you and show the appropriate options you have.

.. _type-string:

String type
```````````

Stores plain text.

.. _type-file:

File type
`````````

Stores a file

.. _type-user:

User type
`````````

A variable of type user refers to a user in your organization.
A user is an object type with following properties

- :ref:`id <type-id>`: The unique identifier for this user
- :ref:`firstName <type-string>`: The first name
- :ref:`lastName <type-string>`: The last name
- :ref:`emailAddress <type-email-address>`: The email address

.. _type-email-address:

Email address type
``````````````````

.. _type-email:

Email type
``````````

Stores an email.
At the moment, the only way this type can be used is with the email trigger.
The email that triggers the process will be stored as a variable.
The data fields in the email like from or the attachments can be used later on.

An email is an object type with following properties

- :ref:`id <type-id>`: the unique identifier for this email.
- :ref:`from <type-email-address>` (:ref:`list <type-list>`)
- :ref:`to <type-email-address>` (:ref:`list <type-list>`)
- :ref:`cc <type-email-address>` (:ref:`list <type-list>`)
- :ref:`subject <type-string>`
- :ref:`bodyText <type-string>`
- :ref:`bodyHtml <type-string>`
- :ref:`attachments <type-file>` (:ref:`list <type-list>`)

.. _type-id:

ID type
```````

The ID type is a special kind of string.
These IDs have as a purpose to identify objects and they are always created by Effektif and they have no meaning.
An example of an ID string is ``53fae958036471cea136ea83``

.. _type-object:

Object types
````````````

Object types are data types that have a list of fields.
Each field has a name.
For example: a user is a specific kind of an object type.
It has fields ``firstName``, ``lastName``, ``mailAddress`` and so on.

When an action requires data, like the ``files`` in a `Google File Upload`, it's possible to bind those input parameters to variables or fields inside variable objects.

.. _type-list:

List type
`````````

A list is simply a collection of elements.
The list is ordered and all elements are of a specified type.
