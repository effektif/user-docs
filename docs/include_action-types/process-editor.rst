.. _process-editor:

Signavio - Set model state
--------------------------

.. figure:: /_static/images/action-types/process-editor/set-model-state.png

   A `Set model state` action in the Workflow Accelerator process builder

When you use `Signavio Process Editor <http://www.signavio.com/products/process-editor/>`_ for process modelling, you can use Workflow Accelerator to manage process diagram approvals.
Signavio Process Editor triggers these process diagram approval workflows, which run in Workflow Accelerator and in turn update the process model in Signavio Process Editor.

.. note:: To use the `Set model state` task, you need to have access to
   `Signavio Process Editor <http://www.signavio.com/products/process-editor/>`_.
   This task only works in a process that has the `Signavio approval` trigger.

The `Set model state` action automatically updates the ‘diagram state’ in Signavio Process Editor, e.g. to mark the diagram as *approved* or *in progress*.
You typically use this as part of a process that performs a management approval that marks the diagram as *accepted* or *rejected*.

   .. figure:: /_static/images/action-types/process-editor/approval-process.png

   A process diagram approval workflow that uses `Set model state` actions

Select a `Set model state` action to configure which process `Model state` the `Set model state` action will set.

   .. figure:: /_static/images/action-types/process-editor/set-model-state-configuration.png

   Configuring a `Set model state` action to set a Signavio Process Editor diagram’s status

Signavio Process Editor defines these `Model state` options.
See `Managing approval workflows <https://editor.signavio.com/userguide/en/workspace_admin/manage_software_config/config_workflows.html#managing-approval-workflows>`_ for instructions on how to set this up.
