.. _control-flow:

Control flow
============

You use transitions, gateways and events to specify the processing order of the actions in a process.

Transition
----------

The :ref:`process-builder` displays a transition an arrow from a source element to a destination element.
The transition specifies that the workflow engine only ‘executes’ the destination element after completing the source element.
BPMN calls a transition a ‘sequence flow’.

.. include:: control-flow/exclusive-gateway.rst
.. include:: control-flow/parallel-gateway.rst


.. _start-event:

Start event
-----------

.. figure:: /_static/images/control-flow/start-event.png

   A start event in the process editor

A start event marks the start of a process.
All process elements that do not have incoming transitions act as start elements.
Start events don’t have a direct connection to triggers.
You can usually leave out start events if you want to create more consice diagrams.

End event
---------

.. figure:: /_static/images/control-flow/end-event.png

   An end event in the process editor

Like start events, you can also omit end events.
End events mark the end of an execution flow:

.. figure:: /_static/images/control-flow/end-event-1.png

   End event

Equivalently:

.. figure:: /_static/images/control-flow/end-event-2.png

   No end event
