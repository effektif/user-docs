.. _case-variable:

Case variable
-------------

The *Case* variable contains the data that starting a case creates.
This variable has several fields.
You cannot change most of this data, except for the case name and due date.


.. _case-id:

Case ID
^^^^^^^

The case variable’s *ID* (:ref:`type-id`) uniquely identifies this case among cases for all processes.


.. _case-name:

Name
^^^^

The *Name* field (:ref:`type-text`) stores the name that either the :ref:`case-creator` entered manually, or that Effektif generated.
Case participants can edit this name.
You might use the case name variable in a :ref:`send-email` action configuration, to send emails that clearly identify their context by prefixing the subject line with the case name.


.. _case-number:

Case number
^^^^^^^^^^^

The *Number* field (:ref:`type-number`) stores a sequential case number.
Each process uses a separate case number sequence for its cases.
In a *Handle customer order* process, you could use the case number as a generated order reference, for example.


.. _case-creator:

Creator
^^^^^^^

The *Creator* field (:ref:`type-user`) records the Effektif user who started the case.
The :ref:`type-user` includes name and email address fields, so you can use the case creator to configure a :ref:`send-email` action that automatically notifies the requestor of an approval process’ result.


.. _case-start-date:

Start date
^^^^^^^^^^

The *Start date* (:ref:`type-date`) records when the :ref:`case-creator` started the case.
In an order process, for example, you could use this as the order date.


.. _case-due-date:

Due date
^^^^^^^^

The *Due date* field (:ref:`type-date`) stores the due date that case participants can set on the case view.
Unlike the other case variables, the due date does not always have a value.


.. _case-link:

Case link
^^^^^^^^^

The *Link* field (:ref:`type-text`) stores the URL of the case page in Effektif.
You can include this link in the body of email you send using a :ref:`send-email` action, so that the recipient can immediately open the case in Effektif.
Effektif includes this link its own built-in :ref:`email notifications <notifications>`.
