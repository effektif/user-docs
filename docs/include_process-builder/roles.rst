.. _roles:

Roles
-----

Creating a role gives a process-specific name to whoever performs one or more process tasks.
You can optionally configure a role with a list of candidates.
Roles have the same function as swimlanes in BPMN.

Process roles differ from organizational roles.
A process role only lasts for the duration of a case, while organizational roles last longer and relate to the job you perform at the organization.
For example, when you have a meeting, one person sometimes takes the role of chairperson.
That person doesn’t have the job title *Meeting chair* - they’ve just adopted that role for the duration of the meeting.

A process in Signavio Workflow can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’).
The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*.

.. figure:: /_static/images/process-builder/roles/example.png

   A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles

In each meeting (each :ref:`case <cases>` in Signavio Workflow), one person takes the role of chair, and one the role of secretary.
These assignments generally don’t change during a meeting.
Similarly, Signavio Workflow role assignments don’t change during a case.
Signavio Workflow automatically assigns each new task with a role assignment to the person who already has the role.

In Signavio Workflow, a process role works like a workflow variable that you use to assigning tasks.
A role variable has the :ref:`type-user` type and stores a single user.

These process roles differ from organization roles.
For example, you can have the *Team lead* role in your organization, an assignment that does not necessarily have an end date.
A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case.

To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side.

.. figure:: /_static/images/process-builder/roles/assign.png

   To assign a role, use the menu to create a new role or select an existing role

You can also use the edit icon next to the role name to rename the role.

Role candidates
^^^^^^^^^^^^^^^

You can use a role to assign multiple tasks a person from a group of candidates.
For example, you might have a support process that includes three user tasks that you assign to a support engineer.

.. figure:: /_static/images/process-builder/roles/roles.png

   Assigning a task to a *Support engineer* role with candidates Alice and Ben

Instead, assign the three tasks to a new role called ‘Support engineer’,
and add the relevant people as candidates for the role.

Creating the first task that has a role will notify all of the candidates for the role.
When one of the candidates takes the task, Signavio Workflow will assign the subsequent tasks with the same role to the same person.
That helps this person work more efficiently because they have the context knowledge about that case.

If you reassign a task that has a role assignment,
Signavio Workflow will update the role variable,
and assign all subsequent tasks with the same role to the new assignee.

Using a form field to assign a role
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you execute a process,
you normally assign a specific person to a role by using the assignee button to select someone.
Sometimes, you want this assignment to an explicit part of the process,
to make sure the assignment happens at the right time.
For example,
you may find it important to assign the *Support engineer* before completing an *Initial investigation* task.

You can do this by adding the role assignment to a form,
because you can use task assignment roles as process variables,
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
