Terminology
===========

Case
----

A case is a collaboration page for a particular goal.
A case has subtasks representing the concrete action items to reach the goal.
There are two types of cases: process cases and ad hoc cases.
Each case has an event stream that acts as an audit log and includes the information that is shared during collaboration, 
such as comments, documents and links.
By using case comments instead of email,
participants ensure that discussions retain the full context for everyone involved.
:ref:`Learn more about cases <cases>`.

.. _term-process-case:

Process case
------------

A process case is a case that is associated with a defined process.
The process describes what actions have to be done and in which order.
In BPM terminology, a process case is also known as a process instance.

Ad hoc case
-----------

An ad hoc case is a case without a predefined process.
It's a collaboration space to reach any one-off goal.
The case brings together a set of tasks, a discussion and documents, 
and allows participants to share any relevant context information for the tasks.

Task
----

Tasks are concrete action items inside a case that can be assigned to people.
In process cases, a task may have been created by a user task action.

Process
-------

A process is a template to automate repetitive work.
It like a recipe that describes the actions that have to be performed to achieve a goal.
For example, consider a ‘Hire’ process.
Each time someone is hired, three tasks have to be completed: ‘Conduct interview’, ‘Prepare contract’ and ‘Create email account’.
Each time the process is started, a new case is created.

Action
------

Actions are the steps in a process that represent things to be done.
When starting a process, Effektif will 'execute' the actions in a process in the proper order.
This ordering is also refered to as :ref:`control flow <control-flow>` and is specified with transitions, gateways and events.
There are different types of actions: a user task will create a task in a case.
A 'Send Email' action will send an email.
A 'Google file upload' action will upload a file to a Google Drive folder.

Trigger
-------

A trigger in a process specifies when the process is started.
The manual trigger is the simplest.
This means that the process is started when a user starts a new process case inside Effektif.
The form trigger allows to specify a form that users have to complete to start a new process case.
And the mail trigger will create a new process case automatic each time a mail arrives on a specific email address.
There is no direct relation between triggers and start events.

Role
----

A role is mechanism to perform assignments of user tasks in a process.
Roles correspond to swimlanes in a BPMN diagram.
It's also known as a process role.
Process roles are different from organizational roles.
For example, there might be 20 peole in an organization having the role 'Support engineer'.
Yet each support case could have 1 person acting as the 'Support contact' process role.
So a process role only lasts for the duration of a case.
While organizational roles are more static and relate to the job you perform at the organization.
:ref:`Read more about roles <roles>`

Organization
------------

An organization represents a collection of users - typically a company - together with all their data in Effektif.
The data in an organization is not visible to people outside the organization.
When you're logged into Effektif, you see all the data inside one particular organization.
If you’re a member of multiple organizations, you can switch between organizations by selecting a different organization under your name in the top right corner.
