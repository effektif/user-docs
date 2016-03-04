.. _roles:

Roles
-----

A role is a process-specific name for whoever performs one or more process tasks.
You can optionally configure a role with a list of canidates.
Roles are equivalent to swimlanes in BPMN.

For example, when you have a meeting, one person sometimes takes the role of chairperson.
That person doesn’t have the job title *Meeting chair* - it’s just a role they’ve adopted for the length of the meeting.

A process in Effektif can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’).
The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*.

.. figure:: /_static/images/process-builder/roles/example.png

   A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles

In each meeting (each :ref:`cases <cases>` in Effektif), one person is assigned as chair, and one as secretary.
These assignments generally don’t change during a meeting. Similarly, Effektif role assignments don’t change during a case: each new task with a role assignment is automatically assigned to the person who the role was assigned to.

In Effektif, a process role is a kind of workflow variable that is used for assigning tasks.
A role is a variable of type user that stores a single user.

These process roles are not the same as organization roles.
For example, you can be a *Team lead* in your organization,
which can be a position without an end date.
A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case.

To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side.

.. figure:: /_static/images/process-builder/roles/assign.png

   To assign a role, use the menu to create a new role or select an existing role

You can also use the edit icon next to the role name to rename the role.

Role candidates
^^^^^^^^^^^^^^^

You can use a role to assign multiple tasks a person from a group of candidates.
For example, you might have a support process that includes three user tasks that are assigned to a support engineer.

.. figure:: /_static/images/process-builder/roles/roles.png

   Assigning a task to a *Support engineer* role with candidates Alice and Ben

Instead, assign the three tasks to a new role called ‘Support engineer’,
and add the relevant people as candidates for the role.

Creating the first task that has a role will notify all of the candidates for the role.
When one of the candidates takes the task,
the subsequent tasks with the same role will be assigned to the same person.
That’s more efficient because this person has the context knowledge about that case.

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
on another user task’s *General* configuration.
