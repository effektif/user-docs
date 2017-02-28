.. _bpmn-import:

BPMN import
-----------

You can import a Signavio Workflow process model from a BPMN 2.0 XML file.
You can use this to import a model that you created in another tool,
or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option.

To import a process model, on the `Processes` page,
click the `Import BPMN` button and select the BPMN XML file.

.. figure:: /_static/images/process-builder/bpmn-import.png

   The `Import BPMN` button on the `Processes` page

Signavio Workflow does not support all BPMN 2.0 elements,
so the process may appear differently in Signavio Workflow.
The following table lists supported BPMN elements, and the corresponding action type.

.. list-table:: Supported BPMN elements
   :header-rows: 1

   * - BPMN element
     - Action type
   * - Business rule task
     - :ref:`dmn`
   * - Call activity
     - :ref:`sub-process`
   * - End event
     - :ref:`end-event`
   * - Exclusive gateway
     - :ref:`exclusive-gateway`
   * - Intermediate timer event
     - :ref:`intermediate-timer-event`
   * - Manual task
     - :ref:`user-task`
   * - Parallel gateway
     - :ref:`parallel-gateway`
   * - Script task
     - :ref:`javascript`
   * - Send task (``type=email``)
     - :ref:`send-email`
   * - Service task (``type=changeState``)
     - Signavio Process Editor state change
   * - Service task (``type=boxFileUpload``)
     - :ref:`box-upload`
   * - Service task (``type=googleAddCalendarEvent``)
     - :ref:`add-calendar-event`
   * - Service task (``type=googleCloudPrint``)
     - :ref:`google-print`
   * - Service task (``type=googleDriveAddRow``)
     - :ref:`add-row-to-sheet`
   * - Service task (``type=googleDriveFileUpload``)
     - :ref:`google-drive`
   * - Start event
     - :ref:`start-event`
   * - Sub-process (embedded)
     - :ref:`sub-process`
   * - Swim lanes
     - :ref:`roles`
   * - Task
     - :ref:`user-task`
   * - User task
     - :ref:`user-task`

Signavio Workflow removes unsupported elements, such as message events.
