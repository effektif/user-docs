Google Drive file upload
------------------------

The Google Drive file upload sends one or more files to an account of your choice.
After creating a Google Drive file upload action, the configuration panel shows a button to start configuring the account.

.. figure:: /_static/images/google.drive.fileupload.1.png

   Initial configuration file upload

When you click on the button `Configure a Google Drive account`, a popup window will appear that helps you setup authentication and integrate Effektif with your Google Drive account.
The first screen shows what steps that will happen in the authentication popup window.

.. figure:: /_static/images/google.drive.fileupload.2.png

   Google Drive authentication flow

After clicking `Click to continue`, the popup window will be redirected to Google.
Google will perform a check if you're already logged in to Google in that browser.
There are 3 possible outcomes:

1. If you're already authenticated with a single user to Google, the login screen is skipped and you go straight to the :ref:`permission screen <drive-permission>` below.

2. If you're not yet authenticated to Google in this browser yet, you'll get a login window like this:

.. TODO update screenshot (use example.com e-mail address)

.. figure:: /_static/images/google.drive.fileupload.3.png

   Google Drive login

3. If you're authenticated with multiple users to Google in this browser, select the account you want to use.

After authentication is complete, you'll see the following screen that allows you to give Effektif access to your Google account.

.. _drive-permission:
.. figure:: /_static/images/google.drive.fileupload.5.png

   Google Drive permission grant

After accepting the permissions, the pop up will disappear and the connection with your account is established.
The Google Drive file upload configuration will now display the account and also show the folders in 'My Drive' in your Google Drive account.

.. TODO update screenshot (use example.com e-mail address)

.. figure:: /_static/images/google.drive.fileupload.6.png

   Google Drive authenticated configuration

Other people in your organization will be able to see that you have configured an account, but they will not be able to see youro email address or browse your account folders.

In the section `Target folder` you can now browse and select the folder you want to upload the file(s) to.

In section `Files to upload`, you can select the variable field containing one or more files to be uploaded. If there was no file variable, a variable called 'File' is created automatically. If there was already a file or list of files in the variables, it is preselected.
