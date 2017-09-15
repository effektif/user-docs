.. _form-fields-dynamic:

Dynamic form fields
-------------------

In the `Arrange Business Trip` process example, the `Book flights` user task records whether flights are required.

.. figure:: /_static/images/forms/conditional-hidden.png

   A selection that *does not* require flight information fields

When flights are required, additional flight information fields become relevant.

.. figure:: /_static/images/forms/conditional-shown.png

   A selection that *does* require flight information fields

Sometimes, a form field is only relevant when other data has a certain value.
You can configure form fields with a dynamic configuration that depends on custom rules.

.. figure:: /_static/images/forms/field-define-custom-rules.png

   The `Define custom rules` form field configuration option

When you select `Define custom rules`, you can specify conditions that determe when the field is shown on the form.

.. figure:: /_static/images/forms/field-rules-visibility.png

   Configuring custom visibility rules for the `Outbound date` field.

You combine multiple conditions and use them to determine whether to show or hide the field.

.. figure:: /_static/images/forms/field-rules-configurations.png

   Configuring custom field options

On the `Configurations` tab, you can also configure conditions that make the field read-only or mandatory.
