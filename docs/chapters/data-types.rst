Data types
==========

The forms and some of the actions are linked to workflow data, called *variables*.
Workflow variables are mostly created automatically,
as when creating a new form field.
Each variable has a data type.
This section lists the data types variables can have.

Variables vs fields
-------------------

Workflow information is stored in variables.
Each variable has a user-defined name and a type.
A type can be a single value, like a string (text) or an email address.
Other types like user, file or email are composite - consisting of several values.
Composite types have a list of fields.

When using expressions or configuring some action, references are made to workflow data.
These can be references to variables, or to fields inside composite variables.
The user interface guides you and shows the options you have.


.. _type-string:

String type
```````````

The *String* type stores plain text.


.. _type-file:

File type
`````````

The *file* type stores a file.


.. _type-user:

User type
`````````

A variable of type *user* refers to a user in your organization.
A user is an object type with following properties

- :ref:`id <type-id>` - the unique identifier for this user
- :ref:`firstName <type-string>` - the user’s first name
- :ref:`lastName <type-string>` - the user’s last name
- :ref:`emailAddress <type-email-address>` - the email address.

.. _type-email-address:

Email address type
``````````````````

The *email address* type stores an email address.


.. _type-email:

Email type
``````````

The *email type* stores an email, and is used by the email trigger.
The email that triggers the process will be stored as a variable.
The data fields in the email, such as *from address* or the attachments can be used later on.

An email is a composite type with the properties:

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
These IDs identify objects and they are always created by Effektif, 
and have no other meaning.
An example of an ID string is ``53fae958036471cea136ea83``.


.. _type-object:

Object types
````````````

Object types are composite data types that have a list of fields.
Each field has a name.
For example: a user is an object type,
with fields such as ``firstName``, ``lastName``, ``mailAddress``.

When an action requires data, 
like the ``files`` in a `Google File Upload`,
it’s possible to bind those input parameters to variables or fields inside variable objects.


.. _type-list:

List type
`````````

A list is simply a collection of values.
The list is ordered and all elements are of a specified type.
