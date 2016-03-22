.. _bpmn-import:

BPMN import
-----------

You can import an Effektif process model from a BPMN 2.0 XML file.
You can use this to import a model that you created in another tool,
or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option.

To import a process model, on the `Processes` page,
click the `Import BPMN` button and select the BPMN XML file.

.. figure:: /_static/images/process-builder/bpmn-import.png

   The `Import BPMN` button on the `Processes` page

Effektif does not support all BPMN 2.0 elements, 
so the process may appear differently in Effektif.
In particular:

* BPMN swim lanes become :ref:`roles <roles>` in Effektif
* tasks become :ref:`user tasks <user-task>` in Effektif
* Effektif removes unsupported elements, such as timer events.