.. _create-document:

Create document
---------------

.. figure:: /_static/images/action-types/create-document-task.png

   A create document action in the process editor

The `Create document` action allows you to create a file that contains case information.

When you use the :ref:`Send email action <send-email>` or :ref:`Upload file <google-drive>` to save information from a case, you use a file variable for email attachments or the file to save.
You normally provide these files via a form.
You can also use the `Create document` action to create a new file using data from other variables.

Consider a shipping process whose trigger form includes details of a ‘recipient’ to ship a product to and a shipping address.
This process can use a `Create document` action to prepare a shipping label for printing:

.. figure:: /_static/images/action-types/create-document-configuration.png

   Configuring a create document action in the process editor

Select a `Create document` action in the process editor to configure the following options.

Document name
    Defines the name of the file variable that will store the created document.
File name
    Defines the document’s filename.
    Type `#` to include placeholders for variables.
File format
    Choose between Microsoft Word, plain text, and comma-separated values (CSV) file types.
Body text
    Use the text area to enter a template for the new document.
    Type `#` to include placeholders for variables, as you would in a :ref:`Send email action <send-email>`’s template.

Note that the `Create document` action does not currently support formatting text.
