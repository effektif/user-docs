.. _data-types:

Data types
----------

Variables store workflow information.
Each variable has a user-defined name and a type.
A type can represent a single value, like text or an email address.
‘Composite’ types such as user, file or email consist of several values.

Composite types have a list of fields, each with its own (possibly composite) type.
The table of fields includes the JavaScript name that you use to access a field in JavaScript code.

When using expressions or configuring some action, you refer to workflow data.
This can use references to variables, or to fields inside composite variables.
The user interface guides you and shows the options you have.


.. _type-choice:

Choice
^^^^^^

The *Choice* type stores a text value from a fixed list of configured options.


.. _type-date:

Date
^^^^

The *Date* type stores a date, or a date and a time of day.

.. _type-duration:

Duration
^^^^^^^^

The *Duration* type stores the length of a period of time, such as *2 weeks*.
In the user interface, you can select from different time units.
In JavaScript actions, *Duration* values store a number of seconds.

.. _type-email:

Email
^^^^^

The *email type* stores an email, which the email trigger uses.
A variable stores the email that triggers the process.
You can use the email’s data fields, such as *from address* or the attachments, later in the process.

An email has a composite type, with the follow properties.

.. list-table::
   :header-rows: 1
   :widths: 20 15 15 50

   * - Property
     - JavaScript
     - Type
     - Description
   * - ID
     - ``id``
     - :ref:`type-id`
     - The unique identifier for this email
   * - From
     - ``from``
     - :ref:`type-email-address`
     - The sender email address
   * - From name
     - ``fromName``
     - :ref:`type-text`
     - The sender’s display name (optional)
   * - To
     - ``to``
     - :ref:`type-list` of :ref:`type-email-address`
     - The email addresses of the recipients
   * - Reply to
     - ``replyTo``
     - :ref:`type-email-address`
     - The email address to send replies to (optional)
   * - CC
     - ``cc``
     - :ref:`type-list` of :ref:`type-email-address`
     - Email addresses that receive a copy of the message (optional)
   * - Subject
     - ``subject``
     - :ref:`type-text`
     - The subject of the email (optional)
   * - Body text
     - ``bodyText``
     - :ref:`type-text`
     - The plain text message (optional)
   * - Body HTML
     - ``bodyHtml``
     - :ref:`type-text`
     - The HTML code for an HTML email (optional)
   * - Attachments
     - ``attachmentIds``
     - :ref:`type-list` of :ref:`type-file`
     - The files to attach to the email (optional)


.. _type-email-address:

Email address
^^^^^^^^^^^^^

The *email address* type stores an email address.


.. _type-file:

File
^^^^

The *file* type stores a reference to a file.
JavaScript actions can use an API for :ref:`reading file contents <file-contents>`.

.. list-table::
   :header-rows: 1
   :widths: 20 15 15 50

   * - Property
     - JavaScript
     - Type
     - Description
   * - ID
     - ``id``
     - :ref:`type-id`
     - The unique identifier for this email
   * - Content type
     - ``contentType``
     - :ref:`type-text`
     - The file’s `media type <https://en.wikipedia.org/wiki/Media_type>`_
   * - File name
     - ``name``
     - :ref:`type-text`
     - The file’s name
   * - Owner
     - ``ownerId``
     - :ref:`type-user`
     - The user who uploaded the file


.. _type-id:

ID
^^

An ID has special kind of string type.
Workflow Accelerator creates these IDs to identify objects; they have no other meaning.
An ID string looks like ``53fae958036471cea136ea83``.


.. _type-link:

Link
^^^^

The *Link* type stores an Internet address (URL), such as a web site address.


.. _type-list:

List
^^^^

A list simply represents a collection of values.
The list has an order and all elements have a single specified type.


.. _type-money:

Money
^^^^^

The *Money* type stores a currency amount for a particular currency.


.. _type-number:

Number
^^^^^^

The *Number* type stores a number.


.. _type-object:

Object types
^^^^^^^^^^^^

Objects have a composite type, with a list of named fields.
For example: a user has an object type,
with fields such as ``firstName``, ``lastName``, ``mailAddress``.


.. _type-text:

Text
^^^^

The *Text* type stores plain text.


.. _type-user:

User
^^^^

A variable of type *user* refers to a user in your organization.
A user has an object type, with the following properties.

.. list-table::
   :header-rows: 1
   :widths: 20 15 15 50

   * - Property
     - JavaScript
     - Type
     - Description
   * - ID
     - ``id``
     - :ref:`type-id`
     - The unique identifier for this user
   * - Email address
     - ``emailAddress``
     - :ref:`type-email-address`
     - The user’s email address
   * - First name
     - ``firstName``
     - :ref:`type-text`
     - The user’s first name
   * - Last name
     - ``lastName``
     - :ref:`type-text`
     - The user’s last name


.. _type-checkbox:

Yes/No Checkbox
^^^^^^^^^^^^^^^

The *Yes/No Checkbox* type stores a single value that represents either *Yes* or *No*.
