.. _milestone:

Milestone
---------

.. figure:: /_static/images/control-flow/milestone.png

   A milestone in the process editor

A milestone is an intermediate event which allows you to mark an important event or a turning point within a process.
By setting milestones, process owners obtain an overview of the workflow progress.

You can set a milestone either by using the intermediate event or via a script task.

**Script task sample**:

.. code-block:: js

  _case.milestone = 'Document archived'

When using the intermediate event, you can reuse any variables from the workflow to create the milestone text by typing ``#``.

To show the current milestone, add the field 'Case/Milestone' as a column in the case list.

.. figure:: /_static/images/control-flow/milestone-overview.png

   Milestone overview

.. note:: Please keep in mind that only the latest milestone is displayed.
