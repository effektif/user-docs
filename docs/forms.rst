.. _forms:

Forms
=====

In Effektif, you can use forms to enter information when you run a process.
There are two places where you can use a form: form triggers and user tasks.


Form triggers
-------------

You use a :ref:`form trigger <form-trigger>` 
to set the values of :ref:`workflow variables <variables>`
when you start a new case for a process.

.. figure:: /_static/images/forms/start-form.png

   Starting a new case with a form trigger

This form has a description
(`Enter personal details`)
and two fields.
The icon next to the `Name` field label indicates that the field has an additional description.

To add a form trigger to a process,
use the process builder’s :ref:`Triggers <triggers>` page to 
select `When a form is submitted`.


User task forms
---------------

You use a :ref:`user task <user-task>` form 
to view and edit the values of :ref:`workflow variables <variables>`.

.. figure:: /_static/images/forms/user-task-form.png

   Viewing and editing values on a user task form

To add a user task form to a process,
use the process builder’s :ref:`Actions <actions>` page to add a user task, 
and on the user task’s configuration panel, select the `Form` tab.


Viewing form data
-----------------

When you enter data in a form,
it appears on the case view’s event stream:

.. figure:: /_static/images/forms/event.png

   Form data in a case event stream

You can use the `forms` link at the top of event stream to only show form data.


Using the form builder
----------------------

To create a form in the process editor,
for a form trigger or user task,
you use the form builder.

.. figure:: /_static/images/forms/builder.png

   The process editor’s form builder for a new empty form

The `Description` section in the form builder is a text area
that you can use to provide initial instructions to people who complete the form.
Use can use Markdown to format the description,
which makes it convenient to link to additional information, for example.

The `Add a field` second contains a field types palette.
Click one of the field types to add a field of that type to the form.

The `Reuse a field` section is a list of variables that have already been defined on other forms,
such as a trigger form:

.. figure:: /_static/images/forms/builder-reuse-field.png

   Adding an existing workflow variable to a form

Adding an existing field to a form makes it possible to view or update existing information,
such as a user task form that you use to complete information that’s missing from a trigger form.


Configuring form fields
-----------------------

When you add fields to a form, they are shown in a `Fields` section:

.. figure:: /_static/images/forms/builder-edit-field.png

   Configuring a form field in the process editor’s form builder

Select a field in the `Fields` section to open its configuration panel. 
The top row of the field configuration panel shows the field type label,
the editable field name.

To delete a field,
click the delete button in the top-right corner,
and click the confirmation tick mark button to confirm:

.. figure:: /_static/images/forms/builder-delete-field.png

   Deleting a form field

The other field configuration properties are as follows.

* `Description` - an optional field description, shown via context-sensitive help icon
* `Initial value` - an optional default field value that is used to pre-populate the form
* `Read-only` - specifies that the value is not editable, used to display previously-entered information
* `Mandatory` - specifies that a field value is required, so that the form cannot be completed without a value

Text fields also have an additional `Multi-line` option 
that specifies that the form field be displayed as a multi-line text input area,
for longer text values.

Choice fields have a `Options` - the list of values to choose between:

.. figure:: /_static/images/forms/builder-choice.png

   Choice field configuration

Date fields have a `Date/time` option for choosing between a date and time, just a date without a time of day, or just a time:

.. figure:: /_static/images/forms/builder-date.png

   Date field configuration

User fields also have a `Candidates` option that you can use to choose which users can be selected:

.. figure:: /_static/images/forms/builder-user.png

   User field configuration

