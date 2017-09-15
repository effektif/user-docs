.. _form-fields:

Configuring form fields
-----------------------

The `Fields` section shows the fields you add to a form:

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

You can also configure the following properties.

* `Description` - an optional field description, shown via context-sensitive help icon
* `Initial value` - an optional default value that pre-populates the form field
* `Read-only` - specifies that you cannot edit the value, used to display previously-entered information
* `Mandatory` - specifies that you must enter a field value, so that you cannot complete the form without a value for this field
* `Allow entering multiple values` - specifies that the field has a list of values that you add and remove independently

Text fields also have an additional `Multi-line` option that configures Workflow Accelerator to display the form field as a multi-line text input area, for longer text values.

When you enable the `Allow entering multiple values` option, the field appears differently on forms.
Entering a value adds it to the list.
Use the × icon to remove a value.

.. figure:: /_static/images/forms/multiple-values.png

   Entering multiple field values in two text fields

Choice fields have a `Options` - the list of values to choose between:

.. figure:: /_static/images/forms/builder-choice.png

   Choice field configuration

Date fields have a `Date/time` option for choosing between a date and time, just a date without a time of day, or just a time:

.. figure:: /_static/images/forms/builder-date.png

   Date field configuration

User fields also have a `Candidates` option that you can use to choose which users you can assign:

.. figure:: /_static/images/forms/builder-user.png

   User field configuration
