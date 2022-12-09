# What is the Outlook plugin

The Outlook plugin allows you to interact with HCL Connections directly from your Outlook client. This works for the installed client and the web client.
Setup is needed to make this work, an extension needs to be added

[Following page](https://help.hcltechsw.com/connections/v7/connectors/enduser/t_ms_plugins_outlook_add_in_features.html) from the HCL documentation explains how to use this feature.

## Installing the plugin
### As an Exchange Administrator

As an Exchange administrator you can deploy the plugin for all your users. See [this](https://help.hcltechsw.com/connections/v7/admin/install/cp_3p_outlook_make_available_to_users.html) document from HCL for reference.

### As a user

- Select *Get add-ins* from the ribbon or overflow menu

![Get Addins](/assets/images/admin/outlook-plugin/GetAddins.png)

- Go to "My add-ins" and select " Add a custom add-in

![Custom Addin](/assets/images/admin/outlook-plugin/AddCustomAddin.png)  

- Choose "Add frim URL"

![Add From URL](/assets/images/admin/outlook-plugin/AddFromUrl.png )  

- Enter the manifest URL or upload the manifest file
https://{yourtenant}.collab.cloud/outlook-addin/{yourtenant}/manifest.xml

![Url](/assets/images/admin/outlook-plugin/url.png )

- Click "Install"

![Confirm](/assets/images/admin/outlook-plugin/confirm.png )  

- You will now see the new add-in in "My add-ins"

![Added](/assets/images/admin/outlook-plugin/Added.png ) 

- You will now see the Connections add-in in all the documented spots like here

![Result](/assets/images/admin/outlook-plugin/result.png )

- Once you use the plugin the first time after logging into Outlook you will be prompted to login to Connections

![Login](/assets/images/admin/outlook-plugin/Login.png )




