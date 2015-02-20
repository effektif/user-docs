.. _process-builder:

Process builder
===============

The process builder is used to create and configure executable processes. An executable process is in many aspects similar to software. But it's much easier to build automations using processes. With Effektif, even non-technical people can create useful processes.

.. include:: sections/triggers.rst
.. include:: sections/actions.rst

.. _variables:

Variables
---------

A process has variables to store process data.
All the information in forms and required by the actions will be connected to the process variables.
Each case can stores it's own values for each process variable.

A process variable can be a object containing fields like for example an email.
The email has fields `from`, `to`, `subject`, `attachments` and so on.

When creating a form field, a variable will connected automatic.

When the last usage of a variable is removed, the variable is automatically removed.

.. _roles:

Roles
-----

A role (aka process role) is a kind of process variable that is used for assigning tasks.
It's a variable of type user.
It stores a single user and optionally you can configure it with a list of canidates.

Roles are equivalent to swimlanes in BPMN.
Later we'll add support for swimlane visualization of roles.

These (process) roles are not to be confused with organizational roles.
You can be head of a team in your organization.
This can be a position without an end date.
The scope of such an organizational role is different from the process roles.
Process roles only apply for the duration of a single case.
For example, you act as the 'Approver' for that particular case.

A role is used to assign multiple tasks a person in a group of candidates.
For example when 3 user tasks in a process have to be assigned to a support engineer.
Then assign the 3 tasks to a role called 'Support engineer' and add all support people to the candidates of the role.

The first task with a role will notify all candidates.
When one of the candidates takes the task, the subsequent tasks assigned to that role will be assigned to the same person.
That's efficient because this person has the context knowledge about that case.

When reassigning a task associated to a role, the role variable will be updated.
All subsequent tasks will be assigned to the new assignee.
