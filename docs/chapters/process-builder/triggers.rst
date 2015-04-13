Triggers
--------

A trigger defines when a process is started.
There is no relation between triggers and BPMN start events.
See :ref:`Start event <start-event>`.


Manual trigger
``````````````

A manual trigger is the simplest way to start a process.
With a manual trigger, you start processes manually in Effektif,
by selecting `Start new case` and then selecting the process to start.


Form trigger
````````````

With a form trigger, you use a form to start a process.
After selecting the form trigger, you can use the form builder to specify form fields.

.. todo
.. For more information on the form builder, see Form builder.


Form documents
``````````````

Many organisations have existing processes that are based on forms,
either on paper or in an electronic document.
Often it’s a good idea to just keep the form in its original format, such as a PDF document.
You can use these documents as the basis for the process, rather then rebuilding the form in Effektif.

If you have multi-page forms with complex layouts,
then the original form might be the best option.
People can then fill in the form,
update the original document or scan a paper copy,
and then upload the completed document to Effektif,
using a single form field.

Effektif can’t read the data entered in form documents,
so you will have to add fields to the form for pieces of information that impact the process flow.


Email trigger
`````````````

An email trigger starts a new case for each email that you send to the trigger‘s Effektif email address.
Note this is different from reading an existing email account, such as your own.
After selecting the email trigger, you can see its email address:

.. TODO update screenshot

.. figure:: /_static/images/mail-trigger-configuration.png

   Mail trigger configuration

The email trigger creates an email variable
that stores the email that started the process.

One way to use an email trigger is to add the trigger email address to a mailing list,
such as `support@example.com `or `info@example.com`.
You’ll have to ask the administrator of the mailing list to add the process trigger’s email address to the list.
Once you have done this, 
email sent to the mailing list will also be forwarded to the process trigger address,
starting the process in Effektif.
You will then see the email in the activity stream:

.. TODO update screenshot

.. figure:: /_static/images/mail-trigger-stream.png

   Trigger mail in stream


.. _trigger-salesforce:

Salesforce trigger
``````````````````

A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow.
Before you can use a Salesforce trigger, 
configure :ref:`Salesforce Integration <salesforce-integration>`.

When you have configured a Salesforce service, 
you can select it as a process trigger, 
so that messages from Salesforce will now trigger new cases.

.. figure:: /_static/images/salesforce-trigger.png

   Example of a Salesforce trigger

In the process definition, 
you can use the Salesforce object fields that are included in the Salesforce message just like normal :ref:`variables <variables>`.
