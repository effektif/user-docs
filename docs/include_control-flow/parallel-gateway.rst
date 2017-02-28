.. _parallel-gateway:

Parallel Gateway
----------------

.. figure:: /_static/images/control-flow/parallel-gateway.png

   A parallel gateway in the process editor

Use parallel gateways to model tasks that people will complete at the same time as each other, or one at a time but not in a particular order.
To do this, you *fork* and *join* the sequence flow.

Forking
^^^^^^^

With a parallel gateway, you can fork execution into multiple, concurrent flows.
When process execution arrives in a parallel gateway,
the workflow engine creates a new individual execution flow for each of the gateway’s outgoing transitions.
Let’s look at the following purchase order example:

.. figure:: /_static/images/control-flow/parallel-gateway-1.png

   A parallel gateway example

In this example, completing the `Enter purchase order` user task activates the parallel gateway.
The parallel gateway will create two individual paths of execution.
One will take the transition to `Receive payment` and create that user task.
Meanwhile, the other will create the `Send goods` user task.

You can have as many outgoing transitions as you want.
The workflow engine will create all destination tasks for those transitions at once.

Joining
^^^^^^^

You also use a parallel gateway to join concurrent paths back together.
In this case, the joining parallel gateway has more then one incoming transition.
Workflow execution will wait at the gateway until as many execution flows arrive as it has incoming transitions.
When the last concurrent flow arrives, the joining parallel gateway will activate and the workflow engine will create one execution flow on the outgoing transition.

To continue the previous example,
extend the purchase order process to look:

.. figure:: /_static/images/control-flow/parallel-gateway-2.png

   A parallel gateway example with join

In this example, `Archive purchase order` will only start after people complete both the `Receive payment` and `Send goods` tasks.

Default forking
^^^^^^^^^^^^^^^

By default, the workflow engine interprets multiple outgoing transitions from an action as parallel tasks.
This means that if you have multiple transitions from a user task, the workflow engine will create  concurrent tasks for all of the transitions’ destination actions.
Let’s look at a simple example.

.. figure:: /_static/images/control-flow/parallel-gateway-3.png

   Default forking

After `Send goods` completes, the workflow engine will create the tasks `Receive payment` and `Send goods` immediately.

You can combine default forking with a parallel gateway for joining.

Default merging
^^^^^^^^^^^^^^^

When multiple transitions lead to a user task, the workflow engine will start the user task once for each execution flow that arrives.
This means that the workflow engine does not perform implicit joining for parallel flows.

Parallel gateway issues
^^^^^^^^^^^^^^^^^^^^^^^

You will end up with problems if you loop back over parallel gateways.
To avoid situations:

.. figure:: /_static/images/control-flow/parallel-gateway-4.png

   Undesirable loopback

and this:

.. figure:: /_static/images/control-flow/parallel-gateway-5.png

   Undesirable loopback

To avoid these issues, think of all actions between forking and joining as a self-contained part of the process, such that no transitions should cross that scope.
