Terminology
===========

Case
----

A *case* creates a collaboration page for a particular goal.
A case has subtasks representing the concrete action items to reach the goal.
Effektif supports two types of cases: cases that relate to a process and ad-hoc cases.

Each case has an event stream that acts as an audit log
and includes the information that case participants share during collaboration,
such as comments, documents and links.
By using case comments instead of email,
participants ensure that discussions retain the full context for everyone involved.
See :ref:`Cases <cases>`.

Ad-hoc case
-----------

An *ad-hoc case* does not have a predefined process.
It creates a collaboration space that you can use to reach a one-off goal.
The case brings together a set of tasks, a discussion and documents,
and allows participants to share any relevant context information for the tasks.

Task
----

Tasks represent concrete action items inside a case that you can assign to people.
In process cases, a task may have been created by a user task action.

Process
-------

A process defines a template for automating repetitive work,
like a recipe that describes the actions that you perform to achieve a goal.

For example, consider a :ref:`Hire employee <hire-employee>` process.
Each time an organization hires someone, the recruitment team has to complete a number of tasks, including
‘Evaluate CV’, ‘Plan interview’ and ‘Interview candidate’.
Each time someone starts the process, Effektif creates a new case.

Action
------

Actions represent the steps in a process - things to do.
When starting a process, Effektif will ‘execute’ the actions in a process in the proper order.
The process :ref:`control flow <control-flow>` determines this ordering, using transitions, gateways and events.

A process can include different :ref:`action-types`.
A user task will create a task in a case.
A ‘Send Email’ action will send an email.
A ‘Google file upload’ action will upload a file to a Google Drive folder.

Trigger
-------

A trigger in a process specifies how the process starts.
The manual trigger works in the simplest way,
and starts the process when you start a new process case inside Effektif.
The form trigger allows to specify a form that you have to complete to start a new process case.
The email trigger creates a new process case when it receives email at its own email address.
Triggers do not have any relation to :ref:`start events <start-event>`.

Role
----

Use roles to assign user tasks in a process.
Roles, also known as process roles, correspond to swimlanes in a BPMN diagram.

Process roles differ from organizational roles.
For example, some people your organization may have the role ‘Support engineer’.
However, each support case only has one person in the ‘Support contact’ process role.
A process role only lasts for the duration of a case,
while organizational roles last longer and relate to the job you perform at the organization.
See :ref:`Roles <roles>`.

Organization
------------

An organization represents a collection of Effektif users - typically a company -
together with all their data in Effektif.
People outside the organization cannot see an organization’s data.
After you log into Effektif, you see all the data inside one particular organization.
If you belong to multiple organizations,
you can switch between organizations by selecting a different organization under your name in the top right corner.
