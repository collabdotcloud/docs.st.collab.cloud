# Round Trip editing Connections Files

Requirements:

- Windows
- Microsoft Word
- latest Windows HCL Connections Desktop Plugin

Link to the [Official Documenation](https://help.hcltechsw.com/connections/v7/user/files/t_files_edit_file_local_refresh.html).

Depending on your licence and your document access, you'll see these buttons on the document preview:

![new Button](/assets/images/admin/roundtrip/edit-button.png)

- **Edit in Docs** is visible, if your organization has a valid HCL Docs licence. Opens the online Editor.
- **Upload New Version** is visible if you are an editor for this file.
- ***Edit on Desktop*** is visible if you are an editor for this file.

## Edit on Desktop

This allows you to edit a document in Word from your browser. No need to manually download and re-upload the file.

Edit on Desktop will open this dialog:
![Open on Desktop](/assets/images/admin/roundtrip/dialog1.png)

If the desktop connector is installed, check the *Don't show this message again* and hit the *OK* button.

The document will be downloaded and opened in Word. And if it is a community file, the community will be added to the Desktop Connectors Community list.

If you save the document, it will be stored as a draft. Indicated by the updated Desktop Connector Icon

![Draft Icon](/assets/images/admin/roundtrip/draft.png)

If you close Word, the publish dialog will open:

![Publish dialog](/assets/images/admin/roundtrip/publish-dialog.png)

If you edit a Community File this way, the Community will be automatically added to your Desktop Connector.

## Problems

- If you start the *Edit on Desktop* and you don't have the Desktop Connector installed, you'll get the default Windows Application selector dialog:
![Windows Application Selector](/assets/images/admin/roundtrip/no-connector.png)

- If the connector is installed but not activated in Word or you are using a different Word processor, then the file will not automatically be synched back to connections. It will stay in the draft Monitor and needs to be published manually. Check if the HCL Connections Add-In is listed under active Application-Add-Ins.
