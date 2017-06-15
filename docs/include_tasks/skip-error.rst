Skipping failed tasks
---------------------

During case execution, an automatic task might fail to execute because it has an invalid configuration.
A :ref:`google-drive` task will fail if you don’t configure a Google account, for example.
You can manually skip some kinds of failed task, so that case execution continues.

.. figure:: /_static/images/tasks/skip-error.png

   An option to skip a task that failed to execute

To skip a failed task, use the *Skip task* button to the right of the task name in the case’s task list.

On the `Skip action` dialogue that opens, enter a reason to explain the decision for skipping the task.
The event stream will show the reason with the task completion event, so other people will know why you skipped the task.
