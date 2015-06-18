.. _salesforce-integration:

Salesforce Integration
======================

Effektif integrates with Salesforce workflows.
You can configure this so that changes in Salesforce will automatically trigger Effektif processes.

Effektif configuration
----------------------

Before you can set-up Salesforce integration, you need to create an endpoint in Effektif that Salesforce can send information to.
Set this up in Effektif as follows.

In the top-right user menu, select `My Organisation` and then select the `Services` tab.


.. figure:: /_static/images/salesforce-integration-1.png

Under the Salesforce heading, enter a new trigger type name and select `Create`.

.. figure:: /_static/images/salesforce-integration-2.png

Copy the generated `Endpoint URL`, or leave this window open for later.

Salesforce configuration
------------------------

Before you can enable Salesforce triggers, you need to configure Outbound messages, which are one kind of Salesforce workflow action.
Set this up in Salesforce as follows.

Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`.

Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`.

.. figure:: /_static/images/salesforce-integration-3.png

On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`.

On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Effektif.

In the `Endpoint URL` field, paste the `Endpoint URL` from the Effektif configuration you created earlier.

.. figure:: /_static/images/salesforce-integration-4.png

Select `Save`.
Do not forget to activate the workflow rule as soon as you have finished the configuration.
To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page.

On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file.

Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Effektif, next.

Finish Effektif configuration
-----------------------------

The final configuration step is to use the web service definition file to configure the Salesforce service in Effektif.

In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier.

.. figure:: /_static/images/salesforce-integration-5.png

Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier.

Now you are ready to use the new :ref:`Salesforce trigger <trigger-salesforce>` in Effektif.
