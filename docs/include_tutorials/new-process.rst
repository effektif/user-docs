.. _tutorial-new-process:

Your first document approval process
------------------------------------

People often use workflows for document approval, a kind of management approval.
This tutorial uses the example of a recurring process for approving some kind of report, which has two parts:

#. defining the ‘process’ that forms a template of tasks for approving reports
#. running the process - starting a new ‘case’ that groups the tasks for approving one particular report.

To get started, in the main menu, select *Processes*.
This shows the *Processes* view, which you can use to create and view :ref:`processes <process-builder>`.

.. figure:: /_static/images/tutorials/new-process/processes.png

   The *Processes* view, where you can create a new process

.. note:: You can also :ref:`use an ad hoc case for a document approval <tutorial-ad-hoc>` without a pre-defined process.

Select *Create new process* to start creating a new process model.
This opens the process name prompt.

.. figure:: /_static/images/tutorials/new-process/create-new-process.png

   Entering a process name, to create a new process

Enter the name **Approve report**, which describes the process’ goal.
This creates the new process and opens the process builder’s *Trigger* tab, which you use to define how the process starts.

On the *Trigger* tab, select *When a form is submitted* to add a form trigger, so you can start running the process by filling in a form.
The document approval process requires a report to approve, which corresponds to a trigger form field called *Report* that you will use to upload a file.

In the form builder palette, select *File* to add the field to the form.
Then select the field to open its configuration panel on the right, enter the field label **Report** and select the *Mandatory* option so the form requires a file upload.

.. figure:: /_static/images/tutorials/new-process/trigger.png

   The *Trigger* tab, after defining a form trigger to start a case by uploading a file

After choosing how the process starts, the next step is to define the ‘actions’ that you will perform when running the process.

Select the *Actions* to load the graphical process editor.
In the actions palette, select *Start* to add a start event to the diagram.
Then, with the start event selected use the actions palette or the mini palette that appears when you select a diagram element to add a user task and end event.

.. figure:: /_static/images/tutorials/new-process/editor.png

   Adding a start event (1),
   clicking the start event mini-palette’s rectangle icon to add a user task (2),
   and clicking the user task mini-palette’s circle icon to add an end event (3)

Next select the start event, user task and end event in turn, and use the configuration panel to set their names to *draft for review*, *Approve report* and *report approved*, respectively.

.. figure:: /_static/images/tutorials/new-process/actions.png

   The *Actions* tab, after adding a single *Approve report* action to a process

This simple process model only contains a single task, to approve the report.
The start and end events are optional, but their names help clarify the start and end statuses.
Later, you can improve the workflow in various ways, but first you should run the process that you have defined so far, so you can see how it works.

Select *Publish to run this process*.
This creates a published version of the process, and shows the *Versions* tab, with this initial version.

.. figure:: /_static/images/tutorials/new-process/versions.png

   The *Versions* tab, after publishing the first version of a process

Now that the process is published, you can use it as a template to create the first ‘case’ for approving a document.

Select *Start new case* to start a new case.
This shows the trigger form you set-up earlier, which consists of a file upload field and a submit button.
Select the file field, and choose a *June report.pdf* file to attach to the case.

.. figure:: /_static/images/tutorials/new-process/start.png

   Running the process - using the trigger form to start a new case

Select *Start new case* to finish starting the new case.
This creates the case, and shows the case details view where you already see the process’ *Approve report* task in the task list on the left.
The first entry in the event stream, on the bottom-right, shows the the trigger form data, including the uploaded file, which you can select to open.

.. figure:: /_static/images/tutorials/new-process/case.png

   The case details view, after starting a new case

Now you have created an run your process for the first time, you can repeat the same steps to develop your process further: select *Processes*, select the process from the list, make changes to the process model in the process editor, publish a new version and then start a new case to try out the updated process.

.. note:: Creating and running a simple approval process is just the beginning.
   There are many ways you can enhance the *Approve report* process.
   Next steps include the following.
   
   * Adding an explicit approval decision using an exclusive gateway
   * Adding a result notification using the send email action
   * Using organisation groups to define task candidates
   * Using process roles to automatically assign tasks
   * Using access control to restrict process actions
