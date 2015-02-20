.. _control-flow:

Control flow
============

With transitions, gateways and events, the order is specified in which the actions of a process are executed.

Transition
----------

A transition is an arrow from a source element to a destination element in the 'Advanced flow' view.
The transition specifies that the destination element is only 'executed' after the source element is completed.
A transition is also known as a 'sequence flow' in BPMN.

.. include:: control-flow/exclusive-gateway.rst
.. include:: control-flow/parallel-gateway.rst

Start event
-----------

A start event marks the start of a process.
All process elements that do not have incoming transitions are considered start elements.
Start don't have a direct connection to triggers.
Usually start events can be omitted to create more consice diagrams.

End event
---------

Just like start events, end events are also optional.
They can mark the end of an execution flow like this.

.. figure:: /_static/images/end.event.1.png

   End event

Which is equivalent to

.. figure:: /_static/images/end.event.2.png

   No end event
