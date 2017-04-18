.. _tutorial-ad-hoc:

Using an ad hoc case for a document approval
--------------------------------------------

This tutorial introduces the simplest way to get started with Workflow Accelerator.
You can start without first defining a process by :ref:`start-adhoc`.

People often use workflows for document approvals, so this tutorial uses the example of approving a report, called *June report*.

In the main menu, select *Cases* and then select *Cases without a process* from the bottom of the drop-down list.
This shows the :ref:`Cases <cases-overview>` view, which you can use to create and view :ref:`ad hoc cases <start-adhoc>`.

.. figure:: /_static/images/tutorials/ad-hoc/cases.png

   The *Cases* view, where you can start a new case

.. note:: *Ad hoc* cases do not use a pre-defined process model.
   You can also :ref:`create an approval process model <tutorial-new-process>`.

Select *Start new case* to start creating a new ad hoc case.
This opens the case name prompt.

.. figure:: /_static/images/cases/create/name-case.png

   Entering a case name

Enter the name **June report** to create the new case.
The case details view shows the initial case, with an empty task list on the left.

.. figure:: /_static/images/tutorials/ad-hoc/new.png

   A new ad hoc case

Now add a document: on the right, select *Upload a document* and select the report to review, **June report.pdf**.
On the left, in the *Add a new task* text input, enter the task name **Approve report** to create a task.

The event stream now shows the corresponding events, labelled *added a document* and *created Approve report*.

.. figure:: /_static/images/tutorials/ad-hoc/document-task.png

   Adding a document to the event stream and a task to the task list

.. note:: You can add as many tasks to the case as you like.
   Use separate tasks for work that different people will do, or work that will they will complete at different times.

   You can also use the text box above the event stream to :ref:`add comments to the case <comments>`, to add information and collaborate with other people.

Select the *Approve report* task in the list to open the task details view.
Under the task name, use the assignee selector to assign the task to someone, who will receive a :ref:`notification <task-assigned>`.
Use the date selector to choose a due date, which will result in reminders if the case’s assignee does not complete it in time.

.. figure:: /_static/images/tutorials/ad-hoc/task.png

   Details of a task within a case

Select the *Done* button to complete the task.
As the case does not contain any other open tasks, this closes the case as well.
You can recognise the case’s closed status by the grey case name background, and from the most recent event in the event stream.

.. figure:: /_static/images/tutorials/ad-hoc/closed.png

   A closed case, after completing its last task


.. note:: You can use a similar case for any other kind of approval.
   Use event stream comments to add any required information, and add approval tasks the same way.
   Next steps:

   * use an ad hoc case for another kind of collaboration task
   * use the :ref:`process builder <processes>` to define a template for a repeatable process.
