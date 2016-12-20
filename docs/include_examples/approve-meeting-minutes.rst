.. _approve-meeting-minutes:

Approve meeting minutes (Management)
------------------------------------

Process goal
^^^^^^^^^^^^

Review, approve and archive the minutes of a meeting.

Context
^^^^^^^

Formal meetings produce minutes that the meeting chair must approve before distribution.
Delays in this approval process can reduce the value of the minutes, and frustrate attendees.
At the same time, the archive of meeting minutes forms an important record, which makes it important not to lose track of minutes.

Trigger
^^^^^^^

Form - the uploaded draft meeting minutes.

Actions
^^^^^^^

The process extends the basic :ref:`approve-document` process, by adding explicit approval tasks for specific people.
Three approvals of the draft document indicate successful review.

.. figure :: /_static/images/examples/approve-meeting-minutes.png

After approval, the `Distribution List Result Notification` and `Document Archive patterns` make the approved minutes immediately available and stored in a central location.

Roles
^^^^^

*Meeting secretary* - updates the draft minutes following review feedback; the process does not define any other roles because specific people complete the approval tasks.

Fields
^^^^^^

* *Meeting minutes* (File, mandatory) - the trigger form field for the draft minutes
* *Approved by Jack* (Yes/No) - records whether this reviewer approves the current version of the minutes, checked with the other approval results
* *Approved by John* (Yes/No) - same as *Approved by Jack*
* *Approved by Mary* (Yes/No) - same as *Approved by Jack*

Related processes
^^^^^^^^^^^^^^^^^

:ref:`approve-document` generalizes this approval process.
