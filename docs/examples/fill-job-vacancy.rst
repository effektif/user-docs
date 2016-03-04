.. _fill-job-vacancy:

Fill Job Vacancy (HR)
---------------------

Process goal
^^^^^^^^^^^^

Fill a vacant position within the organisation.

Context
^^^^^^^

The :ref:`Hire employee <hire-employee>` process is driven by job applications, and is suitable for organisations where there are usually open positions and few applicants.
However, some organisations have many applicants as soon as they advertise a vacancy, and can fill it easily.
In this scenario, an internal requisition for a new position drives the process.

Trigger
^^^^^^^

Form - describes a job requisition.

Actions
^^^^^^^

The core process consists of an approval for the requisition, followed by advertising the vacancy, interviewing candidates, and closing the vacancy.

.. figure:: /_static/images/examples/fill-job-vacancy.png

In addition, the vacancy is passed to one or more external recruiters, by email, who may also supply applicants.
A second email notifies the recruiters when the vacancy has been filled.

Roles
^^^^^

*Recruiter* - the internal HR employee who coordinates the recruitment process.
The basic version of this process excludes the hiring manager, who participates in the :ref:`Hire Employee <hire-employee>` subprocess. This process also excludes the external recruiter or headhunter.

Fields
^^^^^^

The trigger form defines the following fields that make up the job requisition.

* *Job title* (Text, required)
* *Job description* (Text)
* *Maximum salary* (Money)
* *Replaces existing position* (Yes/No)
* *Requesting manager* (User)

Enhancements
^^^^^^^^^^^^

To improve this process you could:

* extend the trigger form to include more structured information about the job vacancy
* skip the initial requisition approval to simplify the process
* elaborate the requisition approval with correction steps
* do the *Publish vacancy on web site* task in parallel with other ways to announce the vacancy, such as advertising
* expand the interview task to include the whole individual recruitment process, as in :ref:`Hire employee <hire-employee>`.
