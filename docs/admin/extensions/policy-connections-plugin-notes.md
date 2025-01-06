# Policy to disable activities Tab on Connection Plugin for HCL Notes

The function "activities" in Connection Plugin for HCL Notes does not work. This documentation describes how you can configure a policy on your Domino server to disable this option in the Connections Plugin for HCL Notes. 

### Create and configure new Desktop Settings to disable the function "activities" on Connection Plugin for HCL Notes

Open your addressbook with your Domino Administrator and go to "Settings" and add new Desktop Settings by using the Button "Add Settings..." -> "Desktop"

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes5.png)

In the new Page under Basics set the Name of the Desktop Settings for example "activities" and use the description to describe the new settings.

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes6.png)

Go to Tab preferences and in the tabs below to Windows Management. Set the option Hide "Activities" to Yes. Set in How to apply this setting to "Set value and prevent changes". Save and close the window.

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes4.png)

### Create and assign the policy to Users or Groups to disable function "activities" on Connection Plugin for HCL Notes

Go to addressbook within your Domino Adminisrator and go to Policies to create a new Policy which we can assign to users. Set a new name for the Policy, policy typ set to Explicit and add a description to it.

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes8.png)

In the Basic Tab add a new Policy name, policy type (Explicit) and add a description to it. Go to Setting Type in Section Desktop and select "activities" trom the drop down menu.

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes9.png)

Go to the tab Policy Assignment and Add the Users or Groups. Save and close the window.

![Configure](/assets/images/screen-shots/connections-plugin/admin-policy-connectionplugin-notes1.png)

Now the selected users or groups will not see the Tab Activities in the Connections Plugin for HCL Notes









