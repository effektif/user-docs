Send email
----------

.. figure:: /_static/images/action-types/email-task.png

   A send email task in the process editor

The send email action sends an email to the specified user.
In the configuration you can specify the following.

To:
    The people to which the email is sent.
    You can type a plain email address, select a variable, a variable field or a user in the organization.

Subject:
    The email subject line.
    To use :ref:`variables <variables>` in the subject, type a `#` and select a field from the list.
    If the list is too long, you can just keep typing after the `#` to narrow-down the list.
    You can use the arrow keys to move the section, and *Enter* to select a field.
    To remove a variable, just delete it as if it’s normal text.

Attachments:
    To add attachments, click the *Attachments* field and select a file field from the list.
    The list includes trigger email attachments and file upload form fields.

Body text:
    You can use variables in the main email body by typing a `#`, just like in the *Subject*.
    You can use `Markdown <http://daringfireball.net/projects/markdown/basics>`_ to format the email body by formatting text or including hyperlinks, headings or lists.
