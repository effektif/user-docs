.. _access-control:

Access control
==============

You can use access control in Effektif to restrict who can access a process,
or specific tasks within a process.
Processes and tasks are public by default,
which means that all users in the organization have access.
When you configure access controls,
you restrict access to specific users or groups.


Restricting access to processes
-------------------------------

When you make a process private,
there are five different permissions that you can grant to users and groups.

#. *Edit process* - make changes to a process and publish new versions
#. *Start process* - start new cases for the process
#. *View process* - see the process in the list of processes
#. *Edit cases* - work on the process’ cases, by editing or completing tasks
#. *View cases* - see the cases for the process.

There are several ways you might want to use these access controls,
to restrict how people work on processes. For example, use the permission:

* *Edit process*, granted to a group,
  to restrict process editing to people who are comfortable with process modelling
* *View process*, granted only to your own user,
  to hide incomplete or draft processes from other people while you create a first version
* *Start process*, granted only to your own user,
  so that people with *View process* and *Edit process* permission
  can collaborate on a draft process,
  but cannot start cases when it is not ready to use
* *Edit cases*, assigned to one group but not another,
  to allow the first group to work on cases,
  while the second group has visibility of work on cases that they cannot themselves collaborate on.
* *View cases*, assigned to a group,
  to restrict access to cases that contain sensitive information.

To apply process restrictions, open a process and select *Details*.

On the *Process details* page, the *Options* tab has an *Access rights* section.

.. figure:: /_static/images/access-control/process-rights.png

   Process details - access rights

Click the *Make this process private* button to configure access control.

.. figure:: /_static/images/access-control/process-controls.png

   Configuring process access control

You can now use the checkboxes to grant permissions to users and groups.
Use the text box to search for additional users and groups,
to add them to the table, so you can then grant access to them.

Click the *Make this process public* to remove all access restrictions on the process.

.. _user-task-access:

Restricting access to user tasks
--------------------------------

In the same way that you can restrict access to a whole process,
you can also restrict access to individual user tasks in the process.

When you make a user task private,
there are two different permissions that you can grant to users and groups.

#. *View task* - review the task and participate in discussion by adding comments
#. *Edit task* - change the task’s title, assignment and due date, and create subtasks.

Suppose you have a process that includes an approval,
where someone from a *Managers* group must approve or reject a request from someone in the *Employees* group.
You need to use the *Edit task* permission to restrict access to the approval user task,
so that only managers can provide the approval.

To apply user task restrictions, open a process and select the user task.
In the user task configuration panel, select the *Access Rights* tab:

.. figure:: /_static/images/access-control/task-rights.png

   User task access rights

Click the *Define specific access* button to configure access control.

.. figure:: /_static/images/access-control/task-controls.png

   Configuring user task access control

You can now use the text box to search for users and groups,
and use the checkboxes to grant permissions.

