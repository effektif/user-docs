.. _tasks-skip-timer:

Skipping intermediate timer events
----------------------------------

When a process includes an :ref:`intermediate-timer-event`, case execution waits for the timer to complete before continuing.
Sometimes, you want to continue immediately without waiting for the timer.

You can manually skip a timer, without waiting for its configured delay.
The :ref:`case details <cases-details>` view shows open timers under the :ref:`cases-other-activities` heading.

.. figure:: /_static/images/tasks/skip.png

   A pending intermediate timer event in the other activities list

To skip the intermediate timer event, use the *Skip timer* button to the right of the timer name.
