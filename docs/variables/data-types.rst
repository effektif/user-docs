.. _data-types:

Data types
----------

Variables store workflow information.
Each variable has a user-defined name and a type.
A type can represent a single value, like text or an email address.
‘Composite’ types such as user, file or email consist of several values.
Composite types have a list of fields.

When using expressions or configuring some action, you refer to workflow data.
This can use references to variables, or to fields inside composite variables.
The user interface guides you and shows the options you have.


.. _type-text:

Text type
^^^^^^^^^

The *Text* type stores plain text.


.. _type-file:

File type
^^^^^^^^^

The *file* type stores a file.


.. _type-user:

User type
^^^^^^^^^

A variable of type *user* refers to a user in your organization.
A user has an object type, with the following properties:

:id: The unique identifier for this user (:ref:`type-id`)
:firstName: The user’s first name (:ref:`type-text`)
:lastName: The user’s last name (:ref:`type-text`)
:emailAddress: The user’s email address (:ref:`type-email-address`)

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

:id: The unique identifier for this email (:ref:`type-id`)
:from: The sender email address (:ref:`type-email-address`)
:to: The email addresses of the recipients (:ref:`List <type-list>` of :ref:`type-email-address`)
:cc: Email addresses that receive a copy of the message (:ref:`List <type-list>` of :ref:`type-email-address`)
:subject: The subject of the email (:ref:`type-text`)
:bodyText: The plain text message (:ref:`type-text`)
:bodyHtml: The HTML code for an HTML email (optional, :ref:`type-text`)
:attachments: The files to attach to the email (:ref:`List <type-list>` of :ref:`type-file`)


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
