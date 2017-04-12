.. _box-upload:

Box Upload file
------------------------

.. figure:: /_static/images/action-types/box/upload-file-task.png

   A box upload file task in the process editor

The `Box <http://www.box.com/>`_ `Upload file` action saves one or more files to a Box account that you select.


Configuration
^^^^^^^^^^^^^

After creating a Box `Upload file` action,
the configuration panel shows a button to start configuring the account.

When you click the `Configure a Box account` button,
a pop-up window will open for you to authorise Workflow Accelerator to use your Box account.
After logging in to your Box account, if you have not already logged in,
Box shows an authorization page.

.. figure:: /_static/images/action-types/box/upload-file-1.png

   Box permission grant, after logging in to Box

After granting access, the pop up will close and Workflow Accelerator will have connected to your Box account.

Upload file action
^^^^^^^^^^^^^^^^^^

Once you have configured your Box account,
the `Upload file` action configuration panel displays the account
and also shows the folders in `All Files` in your Box account.

.. figure:: /_static/images/action-types/box/upload-file-2.png

   Box authenticated configuration

Other people in your organization can see that you have configured an account, but they cannot see your email address or browse your account folders.

On the configuration panel, next to `Target folder`, you can now browse and select the folder you want to upload the file(s) to.

Next to `Folder name template`,
you can optionally specify a subfolder name to create inside the target folder.
This name template can include process variables,
so you can create new subfolders dynamically to organise your files.
For example, if your process variables include a unique customer ID,
then you can use that to save each customer’s files in a separate folder.
Use a forward slash (``/``) to separate nested subfolder levels.

Next to `Files to upload`, you can select the variable field containing one or more files to upload.
If the process did not already include a file variable, Workflow Accelerator automatically creates a variable called 'File'.
If the process variables did include a file or list of files, Workflow Accelerator preselects it.
