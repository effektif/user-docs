.. _sign-contract:

Sign Contract (management)
--------------------------

Process goal
^^^^^^^^^^^^

Sign a document and archive the signed copy.

Context
^^^^^^^

Managers frequently have to sign contracts, and approve other documents.
This may take some time, if a backlog has built up, in which case the requester needs some visibility.

Trigger
^^^^^^^

*Manual* - the requester uploads a document for a manager to sign.

Actions
^^^^^^^

The core process consists of tasks for the signer to review the document and then sign it.
Signavio Workflow then archives the signed document and notifies the requester.

.. figure:: /_static/images/examples/sign-contract.png

This process includes three additional scenarios:

#. The signer requests that someone else sign the document, and reassigns the *Signer* role.
#. The signer requests a change to the document, and the requester gets a new task to update the document.
#. The signer declines to sign the document, and the requester receives a notification.

Roles
^^^^^

* *Requester* - submits the document and makes any required corrections.
* *Signer* - responsible for deciding whether to sign the document, and adding the signature.

Fields
^^^^^^

* *Original document* (File, mandatory) - the document that requires a signature.
* *Change request* (Text, multiple values) - a correction or addition that the signer requests before signing.
* *Signed document* (File, mandatory).

Enhancements
^^^^^^^^^^^^

You could simplify the process by removing one or more of the extra cases.
