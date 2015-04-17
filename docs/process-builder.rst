.. _process-builder:

Process builder
===============

The process builder is used to create and configure executable processes.
An executable process is similar to software,
but it’s easier to build automations using processes.
With Effektif, non-technical people can create useful processes.

.. include:: process-builder/triggers.rst
.. include:: process-builder/actions.rst


.. _variables:

Variables
---------

A process has variables that store workflow data when the process runs.
All the information in forms and information required by the actions will be connected to these variables.
Each case can stores its own values for each process variable.

A process variable can contain a single value, such as a reference number,
or containing multiple fields, such as an email,
which has fields like `from`, `to`, `subject` and `attachments`.


.. _roles:

Roles
-----

A role (a.k.a. process role) is a kind of process variable that is used for assigning tasks.
A role is a variable of type user that stores a single user
You can optionally configure a role with a list of canidates.
Roles are equivalent to swimlanes in BPMN.

These process roles are not the same as organization roles.
For example, you can be a team lead in your organization,
which can be a position without an end date.
A process role, such as ‘Reviewer’, has a different scope and only applies for the duration of a single case.

You can use a role to assign multiple tasks a person from a group of candidates.
For example, you might have a support process that includes three user tasks that are assigned to a support engineer.
Instead, assign the three tasks to a new role called ‘Support engineer’,
and add the relevant people as candidates for the role.

Creating the first task that has a role will notify all of the candidates for the role.
When one of the candidates takes the task,
the subsequent tasks with the same role will be assigned to the same person.
That’s efficient because this person has the context knowledge about that case.

If you reassign a task that has a role assignment,
Effektif will update the role variable,
and assign all subsequent tasks with the same role to the new assignee.
