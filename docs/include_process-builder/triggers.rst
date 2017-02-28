.. _triggers:

Triggers
--------

A trigger in a process specifies how the process starts.
Triggers do not have any relation to :ref:`start events <start-event>`.


Manual trigger
^^^^^^^^^^^^^^

A manual trigger gives you the simplest way to start a process.
With a manual trigger, you start processes manually in Signavio Workflow,
by selecting `Start new case` and then selecting the process to start.


.. _form-trigger:

Form trigger
^^^^^^^^^^^^

With a form trigger, you use a form to start a process.
After selecting the form trigger, you can use the form builder to specify form fields.

.. figure:: /_static/images/process-builder/trigger/form.png

   Form trigger configuration - using the form builder to define a trigger form

.. todo
.. For more information on the form builder, see Form builder.


.. _email-trigger:

Email trigger
^^^^^^^^^^^^^

An email trigger starts a new case for each email that you send to the trigger’s Signavio Workflow email address.
Note this differs from reading an existing email account, such as your own.
After selecting the email trigger, you can see its email address:

.. figure:: /_static/images/process-builder/trigger/mail.png

   Mail trigger configuration

The email trigger creates a :ref:`trigger-email-variable`.

You can use an email trigger by adding the trigger email address to a mailing list,
such as `support@example.com `or `info@example.com`.
You’ll have to ask the administrator of the mailing list to add the process trigger’s email address to the list.
Once you have done this,
the process trigger address will also receive any email sent to the mailing list,
starting the process in Signavio Workflow.
You will then see the email in the event stream:

.. figure:: /_static/images/process-builder/trigger/mail-event.png

   Trigger mail in stream


.. _trigger-salesforce:

Salesforce trigger
^^^^^^^^^^^^^^^^^^

A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow.
Before you can use a Salesforce trigger,
configure :ref:`Salesforce Integration <salesforce-integration>`.

When you have configured a Salesforce service,
you can select it as a process trigger,
so that messages from Salesforce will now trigger new cases.

.. figure:: /_static/images/process-builder/trigger/salesforce.png

   Example of a Salesforce trigger

In the process definition,
you can use the Salesforce object fields from the Salesforce message just like normal :ref:`variables <variables>`.
