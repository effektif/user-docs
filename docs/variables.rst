.. _variables:

Variables
=========

The forms and some of the actions are linked to workflow data, called *variables*.
Workflow variables are mostly created automatically,
as when creating a new form field.


Data types
----------

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
^^^^^^^^^^^

The *String* type stores plain text.


.. _type-file:

File type
^^^^^^^^^

The *file* type stores a file.


.. _type-user:

User type
^^^^^^^^^

A variable of type *user* refers to a user in your organization.
A user is an object type with the following properties:

:id: (:ref:`id <type-id>`) The unique identifier for this user
:firstName: (:ref:`string <type-string>`) The user’s first name
:lastName: (:ref:`string <type-string>`) The user’s last name
:emailAddress: (:ref:`emailAddress <type-email-address>`) The email address of the user

.. _type-email-address:

Email address type
^^^^^^^^^^^^^^^^^^

The *email address* type stores an email address.


.. _type-email:

Email type
^^^^^^^^^^

The *email type* stores an email, and is used by the email trigger.
The email that triggers the process will be stored as a variable.
The data fields in the email, such as *from address* or the attachments can be used later on.

An email is a composite type with the properties:

:id: :ref:`id <type-id>`: The unique identifier for this email
:from: (:ref:`emailAddress <type-email-address>`) The sender email address
:to: (:ref:`list <type-list>` of :ref:`emailAddress <type-email-address>`) The email addresses of the recipients
:cc: (:ref:`list <type-list>` of :ref:`emailAddress <type-email-address>`) Email addresses that receive a carbon copy of the message
:subject: (:ref:`string <type-string>`) The subject of the email
:bodyText: (:ref:`string <type-string>`) The plain text message
:bodyHtml: (:ref:`string <type-string>`) The HTML code for an HTML email (optional)
:attachments: (:ref:`list <type-list>` of :ref:`file <type-file>`) The files to attach to the email


.. _type-id:

ID type
^^^^^^^

The ID type is a special kind of string.
These IDs identify objects and they are always created by Effektif,
and have no other meaning.
An example of an ID string is ``53fae958036471cea136ea83``.


.. _type-object:

Object types
^^^^^^^^^^^^

Object types are composite data types that have a list of fields.
Each field has a name.
For example: a user is an object type,
with fields such as ``firstName``, ``lastName``, ``mailAddress``.

.. _type-list:

List type
^^^^^^^^^

A list is simply a collection of values.
The list is ordered and all elements are of a specified type.
