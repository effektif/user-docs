.. _send-email:

Send email
----------

.. figure:: /_static/images/action-types/email-task.png

   A send email task in the process editor

The send email action sends an email to the specified user.
In the configuration you can specify the following.

Sender name
    By default, Workflow Accelerator sends the email with the `From` field set to *Workflow Accelerator*.
    You can set this field to set the `From` field to your company or department name.

To
    The people who Workflow Accelerator sends the email to.
    You can enter one or more plain email addresses, or select email :ref:`variables <variables>` or users in the organization.
    Note that if you enter a plain email address, you must then select it from the pick list.

Reply to
	Workflow Accelerator sends emails from the address `notifications@workflow.signavio.com` (Europe server), respectively `notifications@workflow-us.signavio.com` (US server) , which you cannot reply to.
	If you set this field to an alternative email address, you override the address for replies to the email.

Subject
    The email subject line.
    To use :ref:`variables <variables>` in the subject, type a `#` and select a field from the list.
    If the list contains too many variables, you can just keep typing after the `#` to filter the list.
    You can use the arrow keys to move the section, and *Enter* to select a field.
    To remove a variable, just delete it the same way you delete normal text.

Attachments
    To add attachments, click the *Attachments* field and select a file field from the list.
    The list includes trigger email attachments and file upload form fields.

Body text
    You can use variables in the main email body by typing a `#`, just like in the *Subject*.
    You can use `Markdown <http://daringfireball.net/projects/markdown/basics>`_ to format the email body by formatting text or including hyperlinks, headings or lists.
    Select the `Preview` tab to see how Workflow Accelerator will format your email.
