Data types
----------

Variables store workflow information.
Each variable has a user-defined name and a type.
A type can represent a single value, like a string (text) or an email address.
‘Composite’ types such as user, file or email consist of several values.
Composite types have a list of fields.

When using expressions or configuring some action, you refer to workflow data.
This can use references to variables, or to fields inside composite variables.
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
A user has an object type, with the following properties:

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

The *email type* stores an email, which the email trigger uses.
A variable stores the email that triggers the process.
You can use the email’s data fields, such as *from address* or the attachments, later in the process.

An email has a composite type, with the properties:

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

An ID has special kind of string type.
Effektif creates these IDs to identify objects; they have no other meaning.
An ID string looks like ``53fae958036471cea136ea83``.


.. _type-object:

Object types
^^^^^^^^^^^^

Objects have a composite type, with a list of named fields.
For example: a user has an object type,
with fields such as ``firstName``, ``lastName``, ``mailAddress``.

.. _type-list:

List type
^^^^^^^^^

A list simply represents a collection of values.
The list has an order and all elements have a single specified type.
