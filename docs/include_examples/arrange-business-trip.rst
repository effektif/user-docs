.. _arrange-business-trip:

Arrange business trip (Admin)
-----------------------------

Process goal
^^^^^^^^^^^^

Make bookings for a business trip, such as travel and accommodation.

Context
^^^^^^^

People who travel frequently for work sometimes get support from office assistants who arrange the trips.
This includes booking travel and accommodation according to the traveller’s preferences.
When the assistants have a large number of overlapping trips to organize, Signavio Workflow helps them keep track.

Trigger
^^^^^^^

Form - information about the trip, for bookings.

Actions
^^^^^^^

The process mainly consists of four tasks, that the assistant can complete in parallel.

.. figure :: /_static/images/examples/arrange-business-trip.png

The `Book hire car` task applies for travellers who do not use public transport.
The `Prepare trip folder` task includes a checklist of information to give the traveller as a printed itinerary.

Roles
^^^^^

*Office assistant* - a secretary, personal assistant, office manager or other admin staff role who arranges trips.

Fields
^^^^^^

Trigger form fields:

* *Destination* (Text, mandatory) - the address of the trip’s destination, such as a client’s office
* *Start date* (Date, mandatory) - the date of the trip’s first appointment or the start of an event
* *End date* (Date, mandatory) - the date of the trip’s last appointment or the end of an event
* *Use public transport* (Yes/No) - whether the traveller prefers to use public transport and taxis

`Book flights` user task fields:

* *Flights required?* (Yes/No) - whether the trip requires flight bookings, based on the destination
* *Outbound date* (Date) - flight information
* *Outbound flight no.* (Text) - flight information
* *Return date* (Date) - flight information
* *Return flight no.* (Text) - flight information

Trip folder checklist fields, which indicate whether the ‘trip folder’ - an itinerary for the traveller - includes the corresponding information:

* *Car hire reservation* (Yes/No)
* *Destination city map* (Yes/No)
* *Dinner reservation* (Yes/No)
* *Envelope for receipts* (Yes/No)
* *Flight details* (Yes/No)
* *Hotel reservation* (Yes/No)
* *Meeting documents* (Yes/No)
* *Meeting schedule* (Yes/No)
* *Train tickets* (Yes/No)

Extensions
^^^^^^^^^^

This process could include more kinds of travel arrangements.
Also, the final task could become a task to upload an electronic version of the itinerary that the process sends to the traveller using a :ref:`send-email` task.
