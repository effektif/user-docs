.. _settings:

Organization settings
=====================

In Signavio Workflow, your organization represents a collection of Signavio Workflow users - typically a company - together with all their data in Signavio Workflow.
People outside your organization cannot see your organization’s data.
After you log into Signavio Workflow, you see all the data inside one particular organization.
If you belong to multiple organizations, you can switch between organizations by selecting a different organization under your name in the top right corner.

Use the Organization settings page to set-up users and groups,
manage invitations,
and configure external services such as :ref:`salesforce-integration`.

At the top of the page, in the masthead, you can edit the organization name.


Users
-----

The users list shows users who belong to your organization.
You can expand each user’s entry to see their email address,
license type,
and membership type - indicating whether the user has the administrator role.

.. figure:: /_static/images/settings/users.png

Administrators can promote other users to administrator:
on an expanded user panel,
click the *Promote to administrator* button.

.. figure:: /_static/images/settings/user.png

Administrators can also delete users,
using the delete button next to the user name.


Invitations
-----------

The invitations list shows who you have invited to use Signavio Workflow.

.. figure:: /_static/images/settings/invitations.png

To invite someone to use Signavio Workflow,
select the license they will use,
enter their email address in the text field and click the *Invite* button.
They will receive an email with a link to the registration page,
where they can create a Signavio Workflow user that will become a member of the organization.


Groups
------

The groups list shows the organization’s user groups.
You can use these groups to define candidates for tasks in the :ref:`process builder <processes>`.

.. figure:: /_static/images/settings/groups.png

To create a new group,
in the text field below the group list,
enter a group name and click the *Create* button.

.. figure:: /_static/images/settings/group.png

Click a group’s name to expand its list of members,
so you can edit the name
and add or remove members,


Preferences
-----------

The *Preferences* include additional options that apply to the whole organization.

.. figure:: /_static/images/settings/preferences.png

*Time zone* affects how Signavio Workflow displays times.

*Email signature* replaces the default *Signavio Workflow team* signature at the bottom of :ref:`notification emails <notifications>`.


Services
--------

Use the *Services* tab to configure integration with cloud services for members of the organization to use.
See :ref:`salesforce-integration`.


.. _billing:

Billing
-------

Use the *Billing* tab to manage your organization’s licenses for Signavio Workflow.
This page shows:

* the number of remaining user licenses - how many more people you can add to the organization
* the license expiry date, after which you must renew your licenses to continue using Signavio Workflow.

The left-hand sidebar summarises your current license type.
Click the *Upgrade your license* button to upgrade to another license type.

Single Sign-On
--------------

.. note:: This feature requires an :ref:`enterprise_cloud` license.

Single sign-on (SSO) makes it possible to access Signavio Workflow using an existing corporate user account, so you do not have to log in to Signavio Workflow separately.
To request SSO for your organization, send a request using the *Send feedback* option in the application, including your `SAML 2.0 Identity Provider Metadata <https://en.wikipedia.org/wiki/SAML_2.0#Identity_Provider_Metadata>`_.

Signavio Workflow currently only supports the `G Suite <https://support.google.com/a/answer/6087519?hl=en&ref_topic=6304963>`_ (formerly Google Apps) SSO provider.

Signavio Workflow supports `Security Assertion Markup Language (SAML) 2.0 <https://en.wikipedia.org/wiki/SAML_2.0>`_ Identity Provider-initiated SSO using the HTTP POST binding.
Please contact us if you want to use a SAML 2.0 Identity Provider other than those listed above.

.. _labels:

Labels
------

Most organizations soon have enough processes to make it inconvient to browse the processes list.
To keep your processes tidy, you can define and use labels, to categorize processes by department, status or however you like.

Use the *Labels* tab to define labels for your organization.
You start with a set of default labels, but you can customize the list.

.. figure:: /_static/images/settings/labels.png

   Configuring labels - used to categorize processes

To add a new label, enter a name in the text input field and select *Create*.
Select a label or its edit icon to change its name or color.
To delete a label, select the delete icon on the far right.
