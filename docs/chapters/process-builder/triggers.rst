Triggers
--------

A trigger defines when a process is started. There is no relation between triggers and BPMN start events. For more details, see Start actions.

Manual trigger
``````````````

A manual trigger is the simplest.
It means that users have to start processes manually in Effektif.
That is done in the Tasks view by clicking New task and then selecting the process name to start.

Form trigger
````````````

With a form trigger, the user is presented a form to start a process.
After selecting the form trigger, you can specify the form fields in the trigger.
.. todo
.. For more information on the form builder, see Form builder.

Form documents
``````````````

There are many processes for which there is an existing procedure based on a form.
Often it's a good idea to just keep the form in it's original pdf or word form.
Such documents can be used as the basis for the process, rather then rebuilding the form in Effektif.
Especially when it comes to multi-page forms with complex layouts, then the original form might be the best option.
Users can then fill in the form, either update the original document or scan it and then upload the filled in document in a single form field in Effektif.

At this moment, Effektif can't yet read the data entered in form documents.
So for those pieces of information that impact the process flow, you can simply add extra fields to the form.
For a small number of fields, users typically won't mind if they have to enter it twice.

Email trigger
`````````````

An email trigger start a new case for each email that arrives on an email address that is related to the trigger.
Note this is different from scanning an existing mail box like your own.
After selecting the email trigger, you can see the email address for the trigger.

.. figure:: /_static/images/mail.trigger.configuration.png

   Mail trigger configuration

When creating a new trigger, an email variable will be created.
The email variable will store the email that started the process.

There are 2 main use cases for the email trigger:

First, the trigger email address can be added to a mailing list like eg `support@example.com `or `info@example.com`.
You'll have to ask the administrator of the mailing list to add the process trigger email address to the list.
What will happen is that for each mail that arrives on the list, the mail will also be forwarded to the process trigger address.
When that email arrives at Effektif, the process will be started.
And the email will show up in the stream like this:

.. figure:: /_static/images/mail.trigger.stream.png

   Trigger mail in stream

Salesforce trigger
``````````````````

A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow.
Before you can use a Salesforce trigger, configure :ref:`Salesforce Integration <salesforce-integration>`.

When you have configured a Salesforce service, you can select it as a process trigger, so that messages from Salesforce will now trigger new cases.

.. figure:: /_static/images/salesforce.trigger.png

   Example of a Salesforce trigger

In the process definition, you can use the Salesforce object fields that are included in the Salesforce message just like normal :ref:`variables <variables>`.
