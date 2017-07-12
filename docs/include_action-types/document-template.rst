.. _document-template:

Document template
-----------------

If you are modelling a workflow, there is often the need to collect the information input entered by users of the workflow tasks.
These data are added dynamically to a document, which is then used as a basis for a later audit, for example for further decisions.
Because data are collected in a Word file, the content can be modified subsequently.
To do this, add the action type 'Document template' in your workflow.
With this action, a task is assigned to users including the request to specify the necessary information in a custom task form.
The information retrieved from this task form is inserted by Workflow Accelerator in the uploaded template.

Suppose your company has set up a workflow for contracts or quotations, in which several departments must define relevant data through the assignment of workflow tasks.
The contract or quotation is created based on a standard template, so that required information from the workflow are assigned accordingly in an output form.
At the end of the process, the output document containing all relevant information is made available to a sales person, who has then the ability to make any personal additions before the contract or quotation will be sent to the customer.

A prerequisite for the implementation of this feature is that the applied template is a Microsoft Word document that contains the required content controls.
You will find a detailed description of these elements here: https://msdn.microsoft.com/en-us/library/bb386200.aspx

.. hint:: Please note that currently only text and plain text are supported as type of content controls.

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
