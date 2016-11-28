.. _hire-employee:

Hire Employee (HR)
------------------

Process goal
^^^^^^^^^^^^

Send a job offer letter to a successful job applicant.

Context
^^^^^^^

Recruiting an employee requires a long elapsed time to complete - typically a couple of months - and involves a number of people.
Unless very few people apply for jobs, the recruitment team will have to handle a large number of cases at the same time.
This process requires someone to assign tasks to the people who do different types of work, such as interviewing or preparing a contract.

Trigger
^^^^^^^

Form - for uploading the candidate’s CV.

Actions
^^^^^^^

A recruitment process consists of a series of decisions, to reject the candidate or continue. This simplified process has these decision points after evaluating the applicant’s CV and a single interview.

.. figure:: /_static/images/examples/hire-employee.png

If the hiring manager rejects the applicant at either stage, Signavio Workflow sends a standard rejection email.

Roles
^^^^^

* *Hiring manager* - the person who takes responsibility for assessing a candidate and whether to reject the candidate or proceed: the *Evaluate CV* and *Interview candidate* tasks.
* *Recruiter* - an HR assistant who coordinates the recruitment process: the *Plan interview* and *Send job offer* tasks.

Fields
^^^^^^

* *CV* (File, mandatory) - the applicant’s CV, provided by the trigger form.
* *Candidate email* (Email address, mandatory) - the email address that Signavio Workflow uses to send a rejection email.

Enhancements
^^^^^^^^^^^^

* The trigger form could allow uploading additional documents, such as a covering letter, which some organisations like to receive.
* Instead of a trigger form, use an e-mail trigger to accept applications by e-mail, including the CV as an attachment.
* If the organisation has to deal with a high case volume, the trigger form could capture information that you could use to prioritise cases, such as the *Candidate availability date*.
* The trigger form could include additional information to allow automatic pre-screening, to cover cases that do not justify starting the process, such as an applicant with no work visa.
* You could add additional interview stages, such as a telephone screen, second interview, or a post-offer visit.
