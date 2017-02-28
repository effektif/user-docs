.. _map-variables:

Map variables
-------------

.. figure:: /_static/images/action-types/map-variables.png

   A `Map variables` task in the process editor

The `Map variables` action copies the value of one :ref:`variable <variables>` to another.
You can use this to set the value of a process variable automatically, instead of manually using a :ref:`form <forms>`.

In some processes, the person who started the case should participate in the process by adopting one of the process’ :ref:`roles <roles>`.
Consider an application process, where the person who starts the case must then complete a task to provide additional information.

.. figure:: /_static/images/action-types/map-variables-configuration.png

   Configuring a `Map variables` task in the process editor

In this example, the `Provide additional information` action assigns the task using an `Applicant` role.
When the applicant starts a case, the `Map variables` task automatically sets this role to the value of the `Case creator`.
This automatically assigns the `Provide additional information` task, and any other tasks that use the same role, to the person who started the case.
