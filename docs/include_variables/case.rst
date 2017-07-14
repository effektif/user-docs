.. _case-variable:

Case variable
-------------

The *Case* variable contains the data that starting a case creates.
This variable has several fields.
You cannot change most of this data, except for the case name and due date.

An email has a composite type, with the following properties.

.. list-table::
   :header-rows: 1
   :widths: 20 15 15 50

   * - Property
     - JavaScript
     - Type
     - Description
   * - Case ID
     - ``id``
     - :ref:`type-id`
     - Unique identifier
   * - Name
     - ``name``
     - :ref:`type-text`
     - Entered or generated editable name
   * - Case number
     - ``caseNumber``
     - :ref:`type-number`
     - Sequential case number
   * - Creator
     - ``creatorId``
     - :ref:`type-user`
     - User who created the case
   * - Start date
     - ``createTime``
     - :ref:`type-date`
     - Date and time the *Creator* started the case
   * - Due date
     - ``dueDate``
     - :ref:`type-date`
     - Optional editable due date
   * - Priority
     - ``priority``
     - :ref:`type-text`
     - Case priority - values ``'0'`` (high) to ``'3'`` (low)
   * - Case link
     - ``link``
     - :ref:`type-text`
     - URL of the case page in Signavio Workflow Accelerator
   * - Cycle time
     - ``duration``
     - :ref:`type-duration`
     - The duration the case has been open
   * - Milestone
     - ``milestone``
     - :ref:`type-text`
     - The last milestone the case has passed

.. _case-id:

Case ID
^^^^^^^

The case variable’s *ID* uniquely identifies this case among cases for all processes.


.. _case-name:

Name
^^^^

The *Name* field stores the name that either the :ref:`case-creator` entered manually, or that Workflow Accelerator generated.
Case participants can edit this name.
You might use the case name variable in a :ref:`send-email` action configuration, to send emails that clearly identify their context by prefixing the subject line with the case name.

You can update the case name in a :ref:`JavaScript action <case-updates>` by assigning a value to ``_case.name``.

.. _case-number:

Case number
^^^^^^^^^^^

The *Number* field stores a sequential case number.
Each process uses a separate case number sequence for its cases.
In a *Handle customer order* process, you could use the case number as a generated order reference, for example.


.. _case-creator:

Creator
^^^^^^^

The *Creator* field records the Workflow Accelerator user who started the case.
The :ref:`type-user` type includes name and email address fields, so you can use the case creator to configure a :ref:`send-email` action that automatically notifies the requestor of an approval process’ result.


.. _case-start-date:

Start date
^^^^^^^^^^

The *Start date* records when the :ref:`case-creator` started the case.
In an order process, for example, you could use this as the order date.


.. _case-due-date:

Due date
^^^^^^^^

The *Due date* field stores the due date that case participants can set on the case view.
Unlike the other case variables, the due date does not always have a value.

You can update the case due date in a :ref:`JavaScript action <case-updates>` by assigning a value to ``_case.dueDate``.


.. _case-link:

Case link
^^^^^^^^^

The *Link* field stores the URL of the case page in Workflow Accelerator.
You can include this link in the body of email you send using a :ref:`send-email` action, so that the recipient can immediately open the case in Workflow Accelerator.
Workflow Accelerator includes this link its own built-in :ref:`email notifications <notifications>`.
