Google Drive Upload file
------------------------

.. figure:: /_static/images/action-types/google-drive/upload-file-task.png

   A Google Drive upload file task in the process editor

The Google Drive `Upload file` action sends one or more files to an account of your choice.

.. _upload-file-configuration:
Configuration
`````````````

After creating a Google Drive `Upload file` action,
the configuration panel shows a button to start configuring the account.

When you click on the button `Configure a Google Drive account`, a popup window will appear that helps you integrate Effektif with your Google Drive account.

Google will perform a check if you're already logged in to Google in that browser.
There are 3 possible outcomes:

1. If you're already authenticated with a single user to Google, the login screen is skipped and you go straight to the :ref:`permission screen <drive-permission>` below.

2. If you're not yet authenticated to Google in this browser yet, you'll get a login window:

.. TODO update screenshot (use example.com e-mail address)

.. figure:: /_static/images/action-types/google-drive/fileupload-3.png

   Google Drive login

3. If you're authenticated with multiple users to Google in this browser, select the account you want to use.

After authentication is complete, you'll see the following screen that allows you to give Effektif access to your Google account.

.. _drive-permission:
.. figure:: /_static/images/action-types/google-drive/fileupload-5.png

   Google Drive permission grant

After accepting the permissions, the pop up will disappear and the connection with your account is established.

Upload file action
``````````````````

Once you have configured your Google Drive account,
the `Upload file` action configuration panel displays the account
and also shows the folders in `My Drive` in your Google Drive account.

.. figure:: /_static/images/action-types/google-drive/fileupload-6.png

   Google Drive `Upload file` authenticated configuration

Other people in your organization will be able to see that you have configured an account, but they will not be able to see youro email address or browse your account folders.

In the section `Target folder` you can now browse and select the folder you want to upload the file(s) to.

In section `Files to upload`, you can select the variable field containing one or more files to be uploaded. If there was no file variable, a variable called 'File' is created automatically. If there was already a file or list of files in the variables, it is preselected.


Google Drive Print File
-----------------------

.. figure:: /_static/images/action-types/google-drive/print-file-task.png

   A Google Drive print file task in the process editor

The Google Drive `Print File` action
uses `Google Cloud Print <http://www.google.com/cloudprint/learn/>`_
to print a file that has been uploaded to a case.

Configuration
`````````````

After creating a Google Drive `Print file` action,
the configuration panel shows a button to start configuring the account.
This configuration is the same as in the `Upload file configuration <upload-file-configuration>`_ (above).

When you have authenticated with a Google account and granted permission,
you are ready to configure the `Print file` action.


Print file action
`````````````````

Once you have configured your Google Drive account,
the `Print file` action configuration panel displays the account,
the printer settings, and the selected file to print.

.. figure:: /_static/images/action-types/google-drive/print-file-configuration.png

   Google Drive `Print file` authenticated configuration

In the section `Files to upload` you can select the file variable
that holds the file you want to print.

