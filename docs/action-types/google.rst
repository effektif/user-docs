.. _google-drive:

Google Drive - Upload file
--------------------------

.. figure:: /_static/images/action-types/google-drive/upload-file-task.png

   A Google Drive *Upload file* task in the process editor

The Google Drive `Upload file` action sends one or more files to an account of your choice.

.. _upload-file-configuration:

Configuration
^^^^^^^^^^^^^

After creating a Google Drive `Upload file` action,
the configuration panel shows a button to start configuring the account.

When you click on the button `Configure a Google Drive account`, a popup window will appear that helps you integrate Effektif with your Google Drive account.

Google will check that you have already logged in to Google.
This check has three possible outcomes:

1. If you have already authenticated with a single user to Google, the set-up process skips the log in page and you go straight to the :ref:`permission screen <drive-permission>` below.

2. If you haven’t authenticated with Google, you will see a log in window:

.. figure:: /_static/images/action-types/google-drive/fileupload-3.png

   Google Drive login

3. If you have authenticated with multiple Google accounts, select the account you want to use.

After you have completed authentication, you’ll see the following page that allows you to give Effektif access to your Google account.

.. _drive-permission:
.. figure:: /_static/images/action-types/google-drive/fileupload-5.png

   Google Drive permission grant

After accepting the permissions, the pop up will disappear and Effektif will have completed connecting to your account.

Upload file action
^^^^^^^^^^^^^^^^^^

Once you have configured your Google Drive account,
the `Upload file` action configuration panel displays the account
and also shows the folders in `My Drive` in your Google Drive account.

.. figure:: /_static/images/action-types/google-drive/fileupload-6.png

   Google Drive `Upload file` authenticated configuration

Other people in your organization can see that you have configured an account, but they cannot see your email address or browse your account folders.

In the `Target folder` section you can now browse and select the folder you want to upload the file(s) to.

Next to `Folder name template`, 
you can optionally specify a subfolder name to create inside the target folder.
This name template can include process variables, 
so you can create new subfolders dynamically to organise your files.
For example, if your process variables include a unique customer ID, 
then you can use that to save each customer’s files in a separate folder.
Use a forward slash (``/``) to separate nested subfolder levels.

Next to `Files to upload`, you can select the variable field containing one or more files to upload.
If the process did not already include a file variable, Effektif automatically creates a variable called 'File'.
If the process variables did include a file or list of files, Effektif preselects it.


Google Drive - Print file
-------------------------

.. figure:: /_static/images/action-types/google-drive/print-file-task.png

   A Google Drive *Print file* task in the process editor

The Google Drive `Print File` action
uses `Google Cloud Print <http://www.google.com/cloudprint/learn/>`_
to print a file that has been uploaded to a case.

Configuration
^^^^^^^^^^^^^

After creating a Google Drive `Print file` action,
the configuration panel shows a button to start configuring the account.
This configuration has the same steps as in the `Upload file configuration <upload-file-configuration>`_ (above).

When you have authenticated with a Google account and granted permission,
you can configure the `Print file` action.


Print file action
^^^^^^^^^^^^^^^^^

Once you have configured your Google Drive account,
the `Print file` action configuration panel displays the account,
the printer settings, and the selected file to print.

.. figure:: /_static/images/action-types/google-drive/print-file-configuration.png

   Google Drive `Print file` authenticated configuration

In the section `Files to upload` you can select the file variable
that holds the file you want to print.


.. _add-row-to-sheet:

Google Drive - Add row to sheet
-------------------------------

.. figure:: /_static/images/action-types/google-drive/add-row-task.png

   A Google Drive *Add row to sheet* task in the process editor

The Google Drive *Add row to sheet* action adds a row to a Google Sheets spreadsheet.
You can use this to save the values of process variables at process milestones, and build a custom overview of cases.

Configuration
^^^^^^^^^^^^^

After creating a Google Drive *Add row to sheet* action,
the configuration panel shows a button to start configuring the account.
This configuration has the same steps as in the `Upload file configuration <upload-file-configuration>`_ (above).

When you have authenticated with a Google account and granted permission,
you can configure the *Add row to sheet* action.

Add row to sheet action
^^^^^^^^^^^^^^^^^^^^^^^

Once you have configured your Google Drive account,
the *Add row to sheet* action configuration panel displays the account,
the spreadsheet, the worksheet within the spreadsheet, and the worksheet columns.

.. figure:: /_static/images/action-types/google-drive/add-row-configuration.png

   Google Drive *Add row to sheet* authenticated configuration

Each column name, such as *Customer name* in this example, comes from a column heading in the spreadsheet.
For each column, select one of the :ref:`variables <variables>` from the list.
