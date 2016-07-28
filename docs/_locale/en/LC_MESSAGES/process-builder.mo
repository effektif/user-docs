��    �      t              �  �   �  M   l	  T   �	  �   
  G   �
  ;     A   K  ;   �  X   �  �   "  �     �   �  �  �  Z  �  �   �     c  �  k     K  7   _  =   �     �  }   �  �   k  �   �    �  K   �  *   )  M   T     �     �  @   �  V   �     R  ]   o  �   �     �  G   �     �          ,  �   ?  /     B  >     �  B   �     �     �  3     �   7     �     �       L   "  �   o  �      Y  �   �  "  �   �#  R   6$  �   �$  M   %  �   f%  *   �%     &  Z   1&     �&     �&  A   �&  r   �&     m'     }'  �  �'  4   ()     ])  G   z)     �)     �)     �)  �   �)  E   p*  P   �*  ?   +  )   G+    q+  ]  �,    �-  0   �.  A   '/  K   i/  6   �/  �   �/  :   �0  �   1  @   �1  %  2  �   A3  �   �3  s   �4  �   I5  N   �5  �   <6  �   �6  p   v7     �7     �7  `   8  2   h8  N   �8  ]   �8  x   H9    �9  #   �:  H   �:  	   =;  n   G;     �;  G   �;  u  <  �   }=    >  `   )?  �   �?     @  H   7@  e   �@  �   �@  �   �A  �   =B  �   �B  �   QC  �   FD     *E    �E  k   �F  �   G  �  �G  �   �I  ?   bJ  �  �J  �   #L  M   �L  T   M  �   eM  G   N  ;   eN  A   �N  ;   �N  X   O  �   xO  �   bP  �   3Q  �  R  Z  �S  �   8U     �U  �  �U     �W  7   �W  =   �W     +X  }   CX  �   �X  �   BY    1Z  K   3[  *   [  M   �[     �[     \  @   \  V   Q\     �\  ]   �\  �   #]     �]  G   ^     O^     e^     �^  �   �^  /   d_  B  �_     �`  B   �`     6a     Qa  3   Ya  �   �a     =b     Kb     kb  L   xb  �   �b  �   qc  Y  d  �  se  �   �f  R   �g  �   �g  M   nh  �   �h  *   Ai     li  Z   �i     �i     �i  A   j  r   Pj     �j     �j  �  �j  4   ~l     �l  G   �l     m     (m     .m  �   Am  E   �m  P   n  ?   ]n  )   �n    �n  ]  �o    5q  0   Lr  A   }r  K   �r  6   s  �   Bs  :   4t  �   ot  @   0u  %  qu  �   �v  �   Rw  s   +x  �   �x  N   Cy  �   �y  �   !z  p   �z     ={     T{  `   ]{  2   �{  N   �{  ]   @|  x   �|    }  #   &~  H   J~  	   �~  n   �~       G     u  ]  �   Ӏ    g�  `   �  �   ��     o�  H   ��  e   փ  �   <�  �   �  �   ��  �   !�  �   ��  �   ��     ��     �  k   �  �   o�  �  4�  �   ��  ?   ��   *Case name template* - the name for new cases of this process, usually containing trigger :ref:`variables <variables>` so that each case has a different name. *Hire employee*, for example, summarises a process better than *Recruitment*. *Process description* - documents a process, usually by describing the process goal. *Process owner* - shown on the *Processes* page to indicate who has responsibility for a process model, and used as the default recipient of some :ref:`notifications <notifications>`. :ref:`actions` define the flow for tasks and other steps in the process :ref:`details` include process metadata and access control. :ref:`triggers` determine how you start new cases for the process :ref:`variables` store workflow data when the process runs. A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow. Before you can use a Salesforce trigger, configure :ref:`Salesforce Integration <salesforce-integration>`. A manual trigger gives you the simplest way to start a process. With a manual trigger, you start processes manually in Signavio Workflow, by selecting `Start new case` and then selecting the process to start. A process can include different :ref:`action-types`. A user task will create a task in a case. A ‘Send Email’ action will send an email. A ‘Google file upload’ action will upload a file to a Google Drive folder. A process defines a template for automating repetitive work, like a recipe that describes the actions that you perform to achieve a goal. For example, consider a :ref:`Hire employee <hire-employee>` process. Each time an organization hires someone, the recruitment team has to complete a number of tasks, including ‘Evaluate CV’, ‘Plan interview’ and ‘Interview candidate’. Each time someone starts the process, Signavio Workflow creates a new case. A process in Signavio Workflow can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’). The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*. A trigger in a process specifies how the process starts. Triggers do not have any relation to :ref:`start events <start-event>`. Actions Actions represent the steps in a process - things to do. Action include things like user tasks in Signavio Workflow, operations on a file in a document management system or any other actions that represent work that someone will perform as part of a process. When starting a process, Signavio Workflow will ‘execute’ the actions in a process in the proper order. The process :ref:`control flow <control-flow>` determines this ordering, using transitions, gateways and events. Adding a transition Adding the *Support engineer* role assignment to a form Adding the next user task and its transition at the same time Adding version comments After the first published version, you can add a comment to describe the changes when you publish a new version of a process. Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location, with a transition. Alternatively, you can first define the *Support engineer* role by adding a field with type *User* to the *Initial investigation* task’s form, and then select the *Support engineer* role on another user task’s *General* configuration. An email trigger starts a new case for each email that you send to the trigger’s Signavio Workflow email address. Note this differs from reading an existing email account, such as your own. After selecting the email trigger, you can see its email address: Assigning a task to a *Support engineer* role with candidates Alice and Ben Avoid using more than three or four words. Avoid vague words like ‘manage’, ‘do’, ‘process’ or ‘handle’. BPMN export BPMN import BPMN swim lanes become :ref:`roles <roles>` in Signavio Workflow Capitalise the first word and don’t include a full-stop at the end, for consistency. Choosing a good process name Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas. Click the transition symbol |transition-symbol| and drag it to the destination element. When you drag the symbol over the destination element, it indicates that you can drop to create the transition: Configuring process details Consider making the comment longer to explain why you made this change. Control flow elements Copying & deleting processes Creating a process Creating a role gives a process-specific name to whoever performs one or more process tasks. You can optionally configure a role with a list of candidates. Roles have the same function as swimlanes in BPMN. Creating a transition hovering over destination Creating the first task that has a role will notify all of the candidates for the role. When one of the candidates takes the task, Signavio Workflow will assign the subsequent tasks with the same role to the same person. That helps this person work more efficiently because they have the context knowledge about that case. Creating the next user task Describe specifics, instead of vaguely referring to ‘changes’. Describe the process goal. Details Drag the rounded rectangle symbol to an empty place Drop the symbol where you want to create the next user task. Release the mouse button to create new user task where you dropped it, with a transition from the previous action. Email trigger Example of a Salesforce trigger Form trigger Form trigger configuration - using the form builder to define a trigger form If you reassign a task that has a role assignment, Signavio Workflow will update the role variable, and assign all subsequent tasks with the same role to the new assignee. In Signavio Workflow, a process role works like a workflow variable that you use to assigning tasks. A role variable has the :ref:`type-user` and stores a single user. In Signavio Workflow, you cannot currently delete cases, which you might want to do if you have created test cases while developing the process. However, you can use `Create a copy` and `Delete process` to duplicate a process and then delete the original. This deletes all of the cases with the original process, and leaves a copy with no cases. In each meeting (each :ref:`case <cases>` in Signavio Workflow), one person takes the role of chair, and one the role of secretary. These assignments generally don’t change during a meeting. Similarly, Signavio Workflow role assignments don’t change during a case. Signavio Workflow automatically assigns each new task with a role assignment to the person who already has the role. In the process builder, only one person can edit a process at a time. While someone continues to edit a process, the `Processes` list shows a message. In the process builder, select the *Details* tab to further configure the process. In the process definition, you can use the Salesforce object fields from the Salesforce message just like normal :ref:`variables <variables>`. In this example, each version has a short comment that describes the changes. Instead, assign the three tasks to a new role called ‘Support engineer’, and add the relevant people as candidates for the role. Keep it short; 3-10 words usually suffice. Mail trigger configuration Make the comment an imperative phrase that starts with a word like ‘Add’ or ‘Fix’. Manual trigger Next steps for a new process On the *General* tab, configure the following process properties. Once you have created a process, continue to build the process model using the following process builder sections. Process builder Process locking Process roles differ from organizational roles. A process role only lasts for the duration of a case, while organizational roles last longer and relate to the job you perform at the organization. For example, when you have a meeting, one person sometimes takes the role of chairperson. That person doesn’t have the job title *Meeting chair* - they’ve just adopted that role for the duration of the meeting. Published versions with descriptive version comments Publishing a process version Release the mouse button over the destination to create the transition. Role candidates Roles Salesforce trigger Signavio Workflow does not support all BPMN 2.0 elements, so the process may appear differently in Signavio Workflow. In particular: Signavio Workflow removes unsupported elements, such as timer events. Start creating a transition by dragging the transition symbol to the destination Start creating the next user task by dragging the action symbol The *Process builder*’s actions palette The `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ diagram editor shows actions and control flow elements, such as events and gateways. Use the diagram editor to add sequential flows between actions, decisions and other control flow behaviour. The `Create a copy` option duplicates the process in the same organisation. You may find it useful to duplicate a process if you want to experiment with changes without publishing changes to a live process. You may also want to duplicate a process to model a special case of the process, instead of adding a conditional flow to the standard process. The `Delete process` option permanently deletes a process and all of its cases. You cannot undo this operation, so you must enter a confirmation. You might want to delete a process that you created by duplicating another process in order to experiment with changes in the model. The `Import BPMN` button on the `Processes` page The `Processes` list message while someone else edits the process The `Publish changes` prompt, where you can add an optional version comment The `Versions` list after publishing the first version The diagram also includes control flow elements, such as events and gateways. Unlike actions, control flow elements don’t represent something that should happen. Instead, you use events and gateways to specify the flow between the actions. The email trigger creates a :ref:`trigger-email-variable`. The process editor’s `Versions` tab shows a list of published versions. Until you publish the first version, this page shows a message that there the process has ‘no published versions’. The process editor’s `Versions` tab with no published versions These process roles differ from organization roles. For example, you can have the *Team lead* role in your organization, an assignment that does not necessarily have an end date. A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case. This results in a file download that describes your process model in BPMN format. Signavio Workflow only exports one kind of BPMN file, so it doesn’t give you any options to configure. To add a role assignment to a form, first define the process role, such as the *Support engineer* role created above, then on the form, under the *Reuse field* heading, select the role variable to add it to the form. To add a transition, click to select the first action. Several symbols appear to the right of the selected element: To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side. To assign a role, use the menu to create a new role or select an existing role To create a process, select *Processes* in the main menu, then the *Create new process* button. In the text input field, enter a process name. To export a process model, first open it in the Signavio Workflow process editor. Select the menu next to the `Publish changes` button, then select `Export BPMN 2.0 XML`. To import a process model, on the `Processes` page, click the `Import BPMN` button and select the BPMN XML file. Trigger mail in stream Triggers Use an imperative verb phrase that completes a sentence like *For your next job, you have to…* Use more than one word, to get a descriptive name. Use the *Access control* tab to restrict access to this process and its cases. Use the *Field overview* tab to view and rename this process’ :ref:`variables <variables>`. Use the following guidelines to choose a good process name, to make the list of processes easier to read and talk about. Use the process builder to create and configure executable processes. You can think of an executable process as a kind of software, but you will find it easier to build automation using processes. With Signavio Workflow, non-technical people can create useful processes. Using a form field to assign a role Using the `Export BPMN 2.0 XML` option to save a process model in a file Variables Version #1 always has the description `Initial version`. For later versions, you can add your own description. Versions Warning that you cannot edit a process at the same time as someone else When you execute a process, you normally assign a specific person to a role by using the assignee button to select someone. Sometimes, you want this assignment to an explicit part of the process, to make sure the assignment happens at the right time. For example, you may find it important to assign the *Support engineer* before completing an *Initial investigation* task. When you have configured a Salesforce service, you can select it as a process trigger, so that messages from Salesforce will now trigger new cases. When you use the process editor to edit your process model, Signavio Workflow saves all of your changes immediately. You can go back and edit the process again later, and it will not have changed. However, to execute a process by starting a new case you need a published version. When you write version comments, use the following tips to make them more consistent and useful. With a form trigger, you use a form to start a process. After selecting the form trigger, you can use the form builder to specify form fields. Writing good version comments You can also use the edit icon next to the role name to rename the role. You can create a copy of a process or delete it using the process menu shown in the previous section. You can create a transition in the `Advanced flows` view. A transition specifies sequential flow, which means the next action only starts when someone has completed the previous one. You can do this by adding the role assignment to a form, because you can use task assignment roles as process variables, just like any other *User* form field. You can easily create the next User Task in a process in the same way you created transitions, above. Start by selecting the previous action: You can edit the process and make changes after the other person leaves the process editor, by opening the `Tasks` list, for example. You can export a Signavio Workflow process model as a BPMN 2.0 XML file. You may find this useful for opening the model in another tool that supports BPMN, or to make a backup that you can load using the :ref:`BPMN import <bpmn-import>` option. You can import a Signavio Workflow process model from a BPMN 2.0 XML file. You can use this to import a model that you created in another tool, or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option. You can omit the version comment, but it helps collaboration between team members by making process modelling more transparent. You can only start a new case for a process that has a published version, hence the light green button displays ‘Publish to run this process’. After you publish the first version, the list shows version #1 and you can start a new case using that version. You can still open the process, but you will see a warning message explaining that you cannot make changes: You can use a role to assign multiple tasks a person from a group of candidates. For example, you might have a support process that includes three user tasks that you assign to a support engineer. You can use an email trigger by adding the trigger email address to a mailing list, such as `support@example.com `or `info@example.com`. You’ll have to ask the administrator of the mailing list to add the process trigger’s email address to the list. Once you have done this, the process trigger address will also receive any email sent to the mailing list, starting the process in Signavio Workflow. You will then see the email in the event stream: You may find it easier to publish a series of small changes, creating a number of intermediate versions instead of one big change. Fine-grained versions make the version history more useful. tasks become :ref:`user tasks <user-task>` in Signavio Workflow Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-13 14:38+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 *Case name template* - the name for new cases of this process, usually containing trigger :ref:`variables <variables>` so that each case has a different name. *Hire employee*, for example, summarises a process better than *Recruitment*. *Process description* - documents a process, usually by describing the process goal. *Process owner* - shown on the *Processes* page to indicate who has responsibility for a process model, and used as the default recipient of some :ref:`notifications <notifications>`. :ref:`actions` define the flow for tasks and other steps in the process :ref:`details` include process metadata and access control. :ref:`triggers` determine how you start new cases for the process :ref:`variables` store workflow data when the process runs. A *Meeting* process, with tasks for *Chair* (top row) and *Secretary* (bottom row) roles A Salesforce trigger starts a new case in response to Salesforce sending an outbound message as part of a Salesforce workflow. Before you can use a Salesforce trigger, configure :ref:`Salesforce Integration <salesforce-integration>`. A manual trigger gives you the simplest way to start a process. With a manual trigger, you start processes manually in Signavio Workflow, by selecting `Start new case` and then selecting the process to start. A process can include different :ref:`action-types`. A user task will create a task in a case. A ‘Send Email’ action will send an email. A ‘Google file upload’ action will upload a file to a Google Drive folder. A process defines a template for automating repetitive work, like a recipe that describes the actions that you perform to achieve a goal. For example, consider a :ref:`Hire employee <hire-employee>` process. Each time an organization hires someone, the recruitment team has to complete a number of tasks, including ‘Evaluate CV’, ‘Plan interview’ and ‘Interview candidate’. Each time someone starts the process, Signavio Workflow creates a new case. A process in Signavio Workflow can define roles, in the same way that a business meeting ‘process’ has roles for whoever chairs the meeting (the ‘Chair’) and whoever takes minutes (the ‘Secretary’). The following meeting process model assigns the tasks on the top row to the *Chair* and the tasks on the bottom row to the *Secretary*. A trigger in a process specifies how the process starts. Triggers do not have any relation to :ref:`start events <start-event>`. Actions Actions represent the steps in a process - things to do. Action include things like user tasks in Signavio Workflow, operations on a file in a document management system or any other actions that represent work that someone will perform as part of a process. When starting a process, Signavio Workflow will ‘execute’ the actions in a process in the proper order. The process :ref:`control flow <control-flow>` determines this ordering, using transitions, gateways and events. Adding a transition Adding the *Support engineer* role assignment to a form Adding the next user task and its transition at the same time Adding version comments After the first published version, you can add a comment to describe the changes when you publish a new version of a process. Alternatively, just click the user task icon |task-symbol| to create a new user task in the default location, with a transition. Alternatively, you can first define the *Support engineer* role by adding a field with type *User* to the *Initial investigation* task’s form, and then select the *Support engineer* role on another user task’s *General* configuration. An email trigger starts a new case for each email that you send to the trigger’s Signavio Workflow email address. Note this differs from reading an existing email account, such as your own. After selecting the email trigger, you can see its email address: Assigning a task to a *Support engineer* role with candidates Alice and Ben Avoid using more than three or four words. Avoid vague words like ‘manage’, ‘do’, ‘process’ or ‘handle’. BPMN export BPMN import BPMN swim lanes become :ref:`roles <roles>` in Signavio Workflow Capitalise the first word and don’t include a full-stop at the end, for consistency. Choosing a good process name Click the rounded rectangle symbol |task-symbol| and drag it to an empty place on the canvas. Click the transition symbol |transition-symbol| and drag it to the destination element. When you drag the symbol over the destination element, it indicates that you can drop to create the transition: Configuring process details Consider making the comment longer to explain why you made this change. Control flow elements Copying & deleting processes Creating a process Creating a role gives a process-specific name to whoever performs one or more process tasks. You can optionally configure a role with a list of candidates. Roles have the same function as swimlanes in BPMN. Creating a transition hovering over destination Creating the first task that has a role will notify all of the candidates for the role. When one of the candidates takes the task, Signavio Workflow will assign the subsequent tasks with the same role to the same person. That helps this person work more efficiently because they have the context knowledge about that case. Creating the next user task Describe specifics, instead of vaguely referring to ‘changes’. Describe the process goal. Details Drag the rounded rectangle symbol to an empty place Drop the symbol where you want to create the next user task. Release the mouse button to create new user task where you dropped it, with a transition from the previous action. Email trigger Example of a Salesforce trigger Form trigger Form trigger configuration - using the form builder to define a trigger form If you reassign a task that has a role assignment, Signavio Workflow will update the role variable, and assign all subsequent tasks with the same role to the new assignee. In Signavio Workflow, a process role works like a workflow variable that you use to assigning tasks. A role variable has the :ref:`type-user` and stores a single user. In Signavio Workflow, you cannot currently delete cases, which you might want to do if you have created test cases while developing the process. However, you can use `Create a copy` and `Delete process` to duplicate a process and then delete the original. This deletes all of the cases with the original process, and leaves a copy with no cases. In each meeting (each :ref:`case <cases>` in Signavio Workflow), one person takes the role of chair, and one the role of secretary. These assignments generally don’t change during a meeting. Similarly, Signavio Workflow role assignments don’t change during a case. Signavio Workflow automatically assigns each new task with a role assignment to the person who already has the role. In the process builder, only one person can edit a process at a time. While someone continues to edit a process, the `Processes` list shows a message. In the process builder, select the *Details* tab to further configure the process. In the process definition, you can use the Salesforce object fields from the Salesforce message just like normal :ref:`variables <variables>`. In this example, each version has a short comment that describes the changes. Instead, assign the three tasks to a new role called ‘Support engineer’, and add the relevant people as candidates for the role. Keep it short; 3-10 words usually suffice. Mail trigger configuration Make the comment an imperative phrase that starts with a word like ‘Add’ or ‘Fix’. Manual trigger Next steps for a new process On the *General* tab, configure the following process properties. Once you have created a process, continue to build the process model using the following process builder sections. Process builder Process locking Process roles differ from organizational roles. A process role only lasts for the duration of a case, while organizational roles last longer and relate to the job you perform at the organization. For example, when you have a meeting, one person sometimes takes the role of chairperson. That person doesn’t have the job title *Meeting chair* - they’ve just adopted that role for the duration of the meeting. Published versions with descriptive version comments Publishing a process version Release the mouse button over the destination to create the transition. Role candidates Roles Salesforce trigger Signavio Workflow does not support all BPMN 2.0 elements, so the process may appear differently in Signavio Workflow. In particular: Signavio Workflow removes unsupported elements, such as timer events. Start creating a transition by dragging the transition symbol to the destination Start creating the next user task by dragging the action symbol The *Process builder*’s actions palette The `BPMN <http://en.wikipedia.org/wiki/Business_Process_Model_and_Notation>`_ diagram editor shows actions and control flow elements, such as events and gateways. Use the diagram editor to add sequential flows between actions, decisions and other control flow behaviour. The `Create a copy` option duplicates the process in the same organisation. You may find it useful to duplicate a process if you want to experiment with changes without publishing changes to a live process. You may also want to duplicate a process to model a special case of the process, instead of adding a conditional flow to the standard process. The `Delete process` option permanently deletes a process and all of its cases. You cannot undo this operation, so you must enter a confirmation. You might want to delete a process that you created by duplicating another process in order to experiment with changes in the model. The `Import BPMN` button on the `Processes` page The `Processes` list message while someone else edits the process The `Publish changes` prompt, where you can add an optional version comment The `Versions` list after publishing the first version The diagram also includes control flow elements, such as events and gateways. Unlike actions, control flow elements don’t represent something that should happen. Instead, you use events and gateways to specify the flow between the actions. The email trigger creates a :ref:`trigger-email-variable`. The process editor’s `Versions` tab shows a list of published versions. Until you publish the first version, this page shows a message that there the process has ‘no published versions’. The process editor’s `Versions` tab with no published versions These process roles differ from organization roles. For example, you can have the *Team lead* role in your organization, an assignment that does not necessarily have an end date. A process role, such as *Meeting chair*, has a different scope and only applies for the duration of a single case. This results in a file download that describes your process model in BPMN format. Signavio Workflow only exports one kind of BPMN file, so it doesn’t give you any options to configure. To add a role assignment to a form, first define the process role, such as the *Support engineer* role created above, then on the form, under the *Reuse field* heading, select the role variable to add it to the form. To add a transition, click to select the first action. Several symbols appear to the right of the selected element: To assign a role to a user task, open the task’s configuration panel, select the `Assignment` tab, and use the `Assign using a role` menu on the right-hand side. To assign a role, use the menu to create a new role or select an existing role To create a process, select *Processes* in the main menu, then the *Create new process* button. In the text input field, enter a process name. To export a process model, first open it in the Signavio Workflow process editor. Select the menu next to the `Publish changes` button, then select `Export BPMN 2.0 XML`. To import a process model, on the `Processes` page, click the `Import BPMN` button and select the BPMN XML file. Trigger mail in stream Triggers Use an imperative verb phrase that completes a sentence like *For your next job, you have to…* Use more than one word, to get a descriptive name. Use the *Access control* tab to restrict access to this process and its cases. Use the *Field overview* tab to view and rename this process’ :ref:`variables <variables>`. Use the following guidelines to choose a good process name, to make the list of processes easier to read and talk about. Use the process builder to create and configure executable processes. You can think of an executable process as a kind of software, but you will find it easier to build automation using processes. With Signavio Workflow, non-technical people can create useful processes. Using a form field to assign a role Using the `Export BPMN 2.0 XML` option to save a process model in a file Variables Version #1 always has the description `Initial version`. For later versions, you can add your own description. Versions Warning that you cannot edit a process at the same time as someone else When you execute a process, you normally assign a specific person to a role by using the assignee button to select someone. Sometimes, you want this assignment to an explicit part of the process, to make sure the assignment happens at the right time. For example, you may find it important to assign the *Support engineer* before completing an *Initial investigation* task. When you have configured a Salesforce service, you can select it as a process trigger, so that messages from Salesforce will now trigger new cases. When you use the process editor to edit your process model, Signavio Workflow saves all of your changes immediately. You can go back and edit the process again later, and it will not have changed. However, to execute a process by starting a new case you need a published version. When you write version comments, use the following tips to make them more consistent and useful. With a form trigger, you use a form to start a process. After selecting the form trigger, you can use the form builder to specify form fields. Writing good version comments You can also use the edit icon next to the role name to rename the role. You can create a copy of a process or delete it using the process menu shown in the previous section. You can create a transition in the `Advanced flows` view. A transition specifies sequential flow, which means the next action only starts when someone has completed the previous one. You can do this by adding the role assignment to a form, because you can use task assignment roles as process variables, just like any other *User* form field. You can easily create the next User Task in a process in the same way you created transitions, above. Start by selecting the previous action: You can edit the process and make changes after the other person leaves the process editor, by opening the `Tasks` list, for example. You can export a Signavio Workflow process model as a BPMN 2.0 XML file. You may find this useful for opening the model in another tool that supports BPMN, or to make a backup that you can load using the :ref:`BPMN import <bpmn-import>` option. You can import a Signavio Workflow process model from a BPMN 2.0 XML file. You can use this to import a model that you created in another tool, or to load a file that you saved using the :ref:`BPMN export <bpmn-export>` option. You can omit the version comment, but it helps collaboration between team members by making process modelling more transparent. You can only start a new case for a process that has a published version, hence the light green button displays ‘Publish to run this process’. After you publish the first version, the list shows version #1 and you can start a new case using that version. You can still open the process, but you will see a warning message explaining that you cannot make changes: You can use a role to assign multiple tasks a person from a group of candidates. For example, you might have a support process that includes three user tasks that you assign to a support engineer. You can use an email trigger by adding the trigger email address to a mailing list, such as `support@example.com `or `info@example.com`. You’ll have to ask the administrator of the mailing list to add the process trigger’s email address to the list. Once you have done this, the process trigger address will also receive any email sent to the mailing list, starting the process in Signavio Workflow. You will then see the email in the event stream: You may find it easier to publish a series of small changes, creating a number of intermediate versions instead of one big change. Fine-grained versions make the version history more useful. tasks become :ref:`user tasks <user-task>` in Signavio Workflow 