Parallel Gateway
----------------

.. figure:: /_static/images/control-flow/parallel-gateway.png

   A parallel gateway in the process editor

Use parallel gateways to model tasks that will be completed at the same time as each other,
or one at a time but not in a particular order. To do this, you *fork* and *join* the sequence flow.

Forking
```````

With a parallel gateway, you can fork execution into multiple, concurrent flows.
When process execution arrives in a parallel gateway, 
a new individual execution flow is created for each of the gateway’s outgoing transitions.
Let’s look at the following purchase order example:

.. figure:: /_static/images/control-flow/parallel-gateway-1.png

   A parallel gateway example

In this example, the parallel gateway will be activated when the `Enter purchase order` user task is completed.
The parallel gateway will create two individual paths of execution.
One will take the transition to `Receive payment` and create that user task.
Meanwhile, the other will create the `Send goods` user task.

After `Enter purchase order` completes, both tasks `Receive payment` and `Send goods` will be created.

You can have as many outgoing transitions as you want.
All destination tasks for those transitions will be started at once.

Joining
```````

You also use a parallel gateway to join concurrent paths back together.
In this case, the joining parallel gateway has more then one incoming transition.
Workflow execution will wait at the gateway until as many execution flows arrive as it has incoming transitions.
When the last concurrent flow arrives, 
the joining parallel gateway will activate and one execution flow will be created on the outgoing transition.

To continue the previous example,
extend the purchase order process to look:

.. figure:: /_static/images/control-flow/parallel-gateway-2.png

   A parallel gateway example with join

In this example, `Archive purchase order` will only start after both `Receive payment` and `Send goods` are complete.

Default forking
```````````````

By default, multiple outgoing transitions out of an action like a user task will be interpreted as parallel.
Meaning that if you have multiple transitions out of a user task, all destination actions of those transitions will be performed concurrently.
Let’s look at a simple example.

.. figure:: /_static/images/control-flow/parallel-gateway-3.png

   Default forking

After `Send goods` completes, both tasks `Receive payment` and `Send goods` will be created immediate.

You can combine default forking with a parallel gateway for joining.

Default merging
```````````````

When multiple transitions lead to a user task,
the user task will be started for each execution flow that arrives there.
This means that there is no implicit joining for parallel flows.

Parallel gateway issues
```````````````````````

You will end up with problems if you loop back over parallel gateways.
To avoid situations:

.. figure:: /_static/images/control-flow/parallel-gateway-4.png

   Undesirable loopback

and this:

.. figure:: /_static/images/control-flow/parallel-gateway-5.png

   Undesirable loopback

To avoid these issues, think of all actions between forking and joining as a self-contained part of the process, such that no transitions should cross that scope.
