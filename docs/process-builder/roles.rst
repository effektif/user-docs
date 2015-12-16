.. _roles:

Roles
-----

A role (a.k.a. process role) is a kind of workflow variable that is used for assigning tasks.
A role is a variable of type user that stores a single user
You can optionally configure a role with a list of canidates.
Roles are equivalent to swimlanes in BPMN.

These process roles are not the same as organization roles.
For example, you can be a team lead in your organization,
which can be a position without an end date.
A process role, such as ‘Reviewer’, has a different scope and only applies for the duration of a single case.

.. figure:: /_static/images/process-builder/roles/roles.png

   Assigning a task to a *Support engineer* role with candidates Alice and Ben

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

Using a form field to assign a role
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you execute a process, 
you normally assign a specific person to a role by using the assignee button to select someone.
Sometimes, you want this assignment to an explicit part of the process,
to make sure the assignment happens at the right time.
For example,
it may be important to assign the *Support engineer* before completing an *Initial investigation* task.

You can do this by adding the role assignment to a form,
because a task assignment role is a process variable,
just like any other *User* form field.

.. figure:: /_static/images/process-builder/roles/form-field.png

   Adding the *Support engineer* role assignment to a form

To add a role assignment to a form,
first define the process role, such as the *Support engineer* role created above,
then on the form, under the *Reuse field* heading,
select the role variable to add it to the form.

Alternatively, you can first define the *Support engineer* role
by adding a field with type *User* to the *Initial investigation* task’s form,
and then select the *Support engineer* role
on another user task’s *Assignment* configuration.
