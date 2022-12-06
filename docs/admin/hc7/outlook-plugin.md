# What is the Outlook plugin

The Outlook plugin allows you to interact with HCL Connections directly from your Outlook client. This works for the installed client and the web client.
Setup is needed to make this work, an extension needs to be added

[Following page](https://help.hcltechsw.com/connections/v7/connectors/enduser/t_ms_plugins_outlook_add_in_features.html) from the HCL documentation explains how to use this feature.

## Installing the plugin
### As an Exchange Administrator

As an Exchange administrator you can deploy the plugin for all your users. See [this](https://help.hcltechsw.com/connections/v7/admin/install/cp_3p_outlook_make_available_to_users.html) document from HCL for reference.

### As a user

- Select *Get add-ins* from the ribbon or overflow menu
- Enter the manifest URL or upload the manifest file
https://{yourtenant}.collab.cloud/outlook-addin/{yourtenant}/manifest.xml
