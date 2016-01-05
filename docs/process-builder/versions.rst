.. _versions:

Versions
--------

When you use the Effektif process editor to edit your process model, 
all of your changes are saved immediately.
You can go back and edit the process again later,
and it will be just as you left it.
However, to execute a process by starting a new case you need a published version.

Publishing a process version
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The process editor’s `Versions` tab shows a list of published versions.
Until you publish the first version, 
this page shows a message that there are ‘no published versions’ of the process.

.. figure:: /_static/images/process-builder/versions/none.png

   The process editor’s `Versions` tab with no published versions

You can only start a new case for a process that has a published version,
which is why the light green button text is ‘Publish to run this process’.
After you publish the first version,
the list shows version #1 and you can start a new case using that version.

.. figure:: /_static/images/process-builder/versions/one.png

   The `Versions` list after publishing the first version

Version #1 always has the description `Initial version`.
For later versions, you can add your own description.

Adding version comments
^^^^^^^^^^^^^^^^^^^^^^^

After the first published version,
you can add a comment to describe the changes when you publish a new version of a process.

.. figure:: /_static/images/process-builder/versions/publish-changes.png

   The `Publish changes` prompt, where you can add an optional version comment

The version comment is not required,
but it helps collaboration between team members
by making process modelling more transparent.

.. figure:: /_static/images/process-builder/versions/several.png

   Published versions with descriptive version comments

In this example, each version has a short comment that describes the changes.

Writing good version comments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you write version comments,
use the following tips to make them more consistent and useful.

* Make the comment an imperative phrase that starts with a word like ‘Add’ or ‘Fix’.
* Capitalise the first word and don’t include a full-stop at the end,
  for consistency.
* Be specific about what you changed,
  instead of vaguely referring to ‘changes’. 
* Be concise; 3-10 words is usually about right.
* Consider making the comment longer to explain why you made this change.

You may find it easier to publish a series of small changes,
creating a number of intermediate versions instead of one big change.
Fine-grained versions make the version history more useful.
