.. _publish-blog-post:

Publish blog post (Marketing)
-----------------------------

Process goal
^^^^^^^^^^^^

Publish a blog post on the company website.

Context
^^^^^^^

In a product company such as `Signavio <http://www.signavio.com>`_, the marketing department often publishes a blog about the company’s products.
Writing and publishing a product blog post involves several people, who must coordinate their work to make it possible to publish new blog posts on a regular schedule.

Trigger
^^^^^^^

Form - a proposal for a new blog post.

Actions
^^^^^^^

The process consists of three phases: proposal, writing and publication.
Between each phase, an approval checks whether the process can proceed.
The process ends with a `Result Notification`.

.. figure :: /_static/images/examples/publish-blog-post.png

The model uses a separate sub-process for selecting a stock photo for the blog post, rather than a single task.
This allows the design team to design and manage their own process for selecting photos and other illustrations for blog posts.
This sub-process proceeds in parallel, based on information in the article proposal, while the author writes the article.

Roles
^^^^^

* *Author* - triggers the process by submitting an article proposal, writes the article content, and publishes the article using the blog’s content management system (CMS).
  For some blog posts, a technical writer from one of the product teams takes this role.
* *Content Manager* - performs the two approvals – the initial article proposal and the finished article content.
* *Copy Editor* - a member of the marketing team, who reviews and corrects the draft article.
* *Designer* - a member of the marketing website design team, who selects stock photography or other illustrations for the article.

Fields
^^^^^^

The process defines several variables, which capture the data for each case (each blog post). All but one of the fields first appear on the trigger form, and make up the blog post proposal.

* *Author* - the role described above, selected here manually as a Required Role Assignment.
* *Title* - the article title, which identifies the case.
* *Category* - used when the blog has multiple sections.
* *Description* - describes the article’s topic, so the design team can select a suitable photo without having to wait for the final article text.
* *Planned publication date* - allows the Content Manager to position the blog post in the publication schedule.
* *Draft blog post* - the URL of the draft article in the online collaboration platform.
* *Published URL* - the URL of the published article on the Signavio website, used to share the published article.
  The trigger form includes every field except this one, which the publication task sets at the end of the process for use in the final `Result Notification`.


Extensions
^^^^^^^^^^

This process model shown simplifies the complete process.
For example, the model does not include the social media marketing tasks that the Social Media Manager performs.

This example does not include integration between the workflow and the two external systems: the online collaboration tool used for writing draft articles, and the content management system that serves blog posts.
In principle, the process could automatically generate an empty draft article in the first system when the process starts, and automatically push the finished article to the CMS.
In practice, the marketing team might not perform these tasks frequently enough or find them time-consuming enough to make this worthwhile.
