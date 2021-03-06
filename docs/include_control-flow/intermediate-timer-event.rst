.. _intermediate-timer-event:

Intermediate timer event
------------------------

.. figure:: /_static/images/control-flow/intermediate-timer-event.png

   An intermediate timer event in the process editor

An intermediate timer event indicates that process execution waits for a timer.
You can use this to prevent Workflow Accelerator creating the next task in a process until it becomes relevant.

.. figure:: /_static/images/control-flow/intermediate-timer-event-example.png

   Using an intermediate timer event to model an evaluation period

Configure how long the timer waits by selecting the timer in the process editor.
In an open case, you can :ref:`skip a timer <tasks-skip-timer>` manually.
