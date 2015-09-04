Box Upload file
------------------------

The `Box <http://www.box.com/>`_ `Upload file` action saves one or more files to a Box account that you select.


Configuration
`````````````

After creating a Box `Upload file` action,
the configuration panel shows a button to start configuring the account.

When you click the `Configure a Box account` button,
a popup window will open for you to authorise Effektif to use your Box account.
After logging in to your Box account, if you are not already logged in,
Box shows an authorization page.

.. figure:: /_static/images/action-types/box/upload-file-1.png

   Box permission grant, after logging in to Box

After granting access, the pop up will close and Effektif will be connected to your Box account.

Upload file action
````````````````

Once you have configured your Box account,
the `Upload file` action configuration panel displays the account
and also shows the folders in `All Files` in your Box account.

.. figure:: /_static/images/action-types/box/upload-file-2.png

   Box authenticated configuration

Other people in your organization will be able to see that you have configured an account, but they will not be able to see your email address or browse your account folders.

On the configuration panel, next to `Target folder`, you can now browse and select the folder you want to upload the file(s) to.

Next to `Files to upload`, you can select the variable field containing one or more files to be uploaded. If there was no file variable, a variable called 'File' is created automatically. If there was already a file or list of files in the variables, it is preselected.
