.. _ship-product-from-warehouse:

Ship Product From Warehouse (logistics)
---------------------------------------

Process goal
^^^^^^^^^^^^

In a warehouse operation, fulfil an order by shipping physical products to the customer.

Context
^^^^^^^

A product manufacturer typically runs warehouses that contain an inventory of products, ready to be shipped to customers.
In the warehouse is where, a customer order - initially just information - results in physical activity and becomes associated with physical products.

This process is a subprocess in a broader customer order process that happens in the context of a warehouse.
This may be orchestrated by the order status that triggers the process, and the order status that results from process completion.

Trigger
^^^^^^^

*Form* - an order form that lists order lines for the products to ship.

Actions
^^^^^^^

The process takes a customer order and ships physical inventory from a warehouse.
Warehouse staff retrieve the order and perform a sequence of tasks before actually shipping the parcels.

.. figure:: /_static/images/examples/ship-product-from-warehouse.png

A long sequence of tasks characterises this process, as follows.

* *Retrieve customer order* - retrieve the order from the order management system and make it available to warehouse staff, 
  e.g. by printing it or transferring to a work queue in a handheld device.
* *Pick items* - for each order line, finding the items in the warehouse and adding them to a ‘basket’, possibly for multiple orders at once with an efficient planned route through the warehouse.
* *Pack items into parcels* - efficiently pack items into standard parcels.
* *Weigh parcels* - to capture parcel weight and dimensions, for the shipping label.
* *Print shipping labels* - print and attached labels showing the customer delivery address and other information such as weight and dimensions.
* *Move to loading dock* - stack parcels ready to be loaded on the next truck.
  Inspect packing quality - quality control to check that parcels are packed correctly.
* *Check parcel count* - a ‘head-count’ to check that there are no missing parcels for each order.
* *Load parcels on truck* - loading happens in a batch together with parcels for other orders, and may only happen once per day.
* *Update order status* - record process completion in the order management system, which may trigger other processes such as invoicing the customer.
* *Adjust stock levels* - update the warehouse’s inventory management system.
* *Send delivery instructions* - provide the transport company with the information they require to deliver the shipment.

There is flexibility in the process, which warehouse staff are likely to use.
Staff may perform the tasks sequentially in practice, even though they could perform them in parallel.
Staff may also batch multiple orders together at various steps, when there are waiting times such as waiting for the next truck to arrive at the warehouse.

Roles
^^^^^

*Warehouse operator* - responsible for operations in the warehouse, moving goods from stock to trucks for shipment.

Fields
^^^^^^

* *Order form* (File, required) - lists order lines of products to ship from the warehouse.
* *Order reference* (Text, required) - extracted from the order form, uniquely identifies the order in Effektif.

Enhancements
^^^^^^^^^^^^

To extend or enhance this process, you could:

* trigger the process from an external order management system, as a result of an order status change
* automate the *Retrieve customer order* and *Print shipping labels* tasks
* add information to *The Pick stock items* task, e.g. by scanning bar codes to record the picked items’ serial numbers
* make the *Inspect packing quality* task optional or randomised..

In this process, transport runs on a fixed schedule: trucks are loaded with parcels for multiple orders. A different shipping process could arrange individual transport (e.g. by courier) for each order.
