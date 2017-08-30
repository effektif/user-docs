.. _document-template:

Document template
-----------------
.. versionadded:: 3.32

If you are modelling a workflow, there is often the need to collect the information input entered by users of the workflow tasks.
Workflow Accelerator can add these data dynamically to a Microsoft Word document, which is then used as a basis for a later audit, for example for further decisions.
Because data are collected in a Word file, the content can be modified subsequently.
To do this, add the action type 'Document template' in your workflow.
With this action, a task is assigned to users including the request to specify the necessary information in a custom task form.
Workflow Accelerator applies the information that is retrieved from this task form to the uploaded template.

Suppose your company has set up a workflow for contracts or quotations, in which several roles define the relevant document data in different Workflow Accelerator tasks.
The contract or quotation is created based on a standard template, so that required data from the workflow are assigned accordingly in an output form.
At the end of the process, the output document containing all relevant information is made available to a sales person, who has then the ability to make any personal additions before the contract or quotation will be sent to the customer.


Content controls
^^^^^^^^^^^^^^^^
A prerequisite for the implementation of this feature is that the applied template is a Microsoft Word document that contains the required content controls.
You will find a detailed description on how to implement content controls in a Word document here: https://support.office.com/en-us/article/Create-forms-that-users-complete-or-print-in-Word-040c5cc1-e309-445b-94ac-542f732c8c8b

.. hint:: Please note that currently only text and plain text are supported as types of content controls.

Content controls, which have been created in the document template, each represent a form field.
To map and display form fields correctly in Workflow Accelerator, it is mandatory to specify a title to each content control.
The title is set as a property of the control.

.. hint:: Rich text fields don't support line breaks. If you need fields that support line breaks, use plain text fields and activate the check-box 'Allow carriage returns (multiple paragraphs)'.

.. figure:: /_static/images/action-types/document-template/upload-template.png

  Configuring a `Document template` action in the process editor.

Select a `Document template` action in the process editor to configure the following options.

Document template
    Upload the template. This action creates a new file from a document template.
Inputs tab
    Specify the desired data and link either with static values or existing fields of the workflow.
Outputs tab
    Select the output value "Document" and enter the desired name.


.. figure:: /_static/images/action-types/document-template/output.png

    Each field in the subprocess can be used in this process once you added it as an output.
