Parallel Gateway
----------------

Forking
```````

With a parallel gateway, you can fork execution in multiple, concurrent flows.
When process execution arrives in a parallel gateway, a new individual execution flow is created for each outgoing transition.
Let's look at the following purchase order example:

.. figure:: /_static/images/parallel.gateway.1.png

   A parallel gateway example

In the purchase order example above, the parallel gateway will be activated when user task `Enter purchase order` is completed.
The parallel gateway will create 2 individual paths of execution.
One will take the transition to `Receive payment` and create that user task.
The other to `Send goods` and create that user task as well.

In summary, after `Enter purchase order` completes, both tasks `Receive payment` and `Send goods` will be created.

You can have as many outgoing transitions as you want.
All destination actions for those transitions will be started at once.

Joining
```````

The parallel gateway is also used for joining concurrent paths back together.
In that case, the joining parallel gateway has more then one incoming transition.
It will wait until as many execution flows arrive as it has incoming transitions.
When the last concurrent flow arrives, the joining parallel gateway will activate and one execution flow will be created on the outgoing transition.

Let's build forward on the example we showed above.
We complete that purchase order example so it now looks like this.

.. figure:: /_static/images/parallel.gateway.2.png

   A parallel gateway example with join

In this example, `Archive purchase order` will only be started after both `Receive payment` and `Send goods` are completed.

Default forking
```````````````

By default, multiple outgoing transitions out of an action like a user task will be interpreted as parallel.
Meaning that if you have multiple transitions out of a user task, all destination actions of those transitions will be performed concurrently.
Let's look at a simple example.

.. figure:: /_static/images/parallel.gateway.3.png

   Default forking

After `Send goods` completes, both tasks `Receive payment` and `Send goods` will be created immediate.

Default forking can be combined with a parallel gateway for joining.

Default merging
```````````````

On the other hand, when multiple transitions arrive in a user task, the user task will be started for each execution flow that arrives there.
So no implicit joining will happen.

Trouble
```````

Using parallelism sometimes leads to problems when people loop back over parallel gateways.
In general try to avoid situations like this.

.. figure:: /_static/images/parallel.gateway.4.png

   Undesirable loopback

and this

.. figure:: /_static/images/parallel.gateway.5.png

   Undesirable loopback

In general, our advice is that all actions between forking and joining should be considered as a scope and no transitions should cross that scope.
