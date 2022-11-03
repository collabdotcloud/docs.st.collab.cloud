# ![SametimeLogo](/assets/images/HCL_Sametime_Master.png){:height="28"} Using Sametime

### Using Sametime from Connections

Once authenticated to Connections the Sametime plugin will automatically be loaded. In the lower right corner the Sametime plugin can be found.

![Connections Status](/assets/images/screen-shots/sametime/connections-status.png){:width="50%"}

Clicking the right icon will open the chat window. Persons can be added to the contact list by searching users by name in the search bar.

![Add Person](/assets/images/screen-shots/sametime/chat-window-addperson.png){:width="50%"}

A double click on a username will then open a chat window with this user.

![Chat Window](/assets/images/screen-shots/sametime/chat-window.png){:width="50%"}

### Using Sametime from Verse/iNotes

Once logged in to mail application Verse/iNotes the Sametime plugin can be found for Verse in upper right corner:

![Verse Status](/assets/images/screen-shots/sametime/verse-status.png){:width="50%"}

### Using Sametime from Notes

[Notes Client Setup](https://docs.collab.cloud/admin/admin-sametime/)

### Using Sametime from Standalone client

On first start of the Sametime standalone client configuration is needed as follows. Please be aware that the login method with SAML SSO is the ONLY method to login to Sametime.
As shown in the following picture set the servername to the appropriate cloud environment:

|Region|Value|
|---------|--------|
|EU|chateu.collab.cloud|
|NA|chatna.collab.cloud|

Put in your email address as username.

![Verse Status](/assets/images/screen-shots/sametime/sametime-rich-step1.png){:width="50%"}

Click on "Settings" to fill in SSO values as follows. For "Authentication server" field set the appropriate values.
Check the box "Use token-based single sign-on".

|Region|Value|
|---------|--------|
EU|https://logineu.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime|
|NA|https://loginna.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime|

Set Authentication type to "SAML" and Login type to "Browser".

![Verse Status](/assets/images/screen-shots/sametime/sametime-rich-step2.png){:width="50%"}

**IMPORTANT:**<br />
Please do NOT check the "Automatically login" checkbox. This will produce issues together with the "remember me" checkbox in login web page from collab.cloud.
Automatically login can be set with the "remember me" checkbox on login web page.

Click OK to close the settings window.
Important: Now restart Sametime client.

After restart the login page will appear. Put in your email address and password and then login. After first start you will be prompted to restart Sametime client. Login again after restart and you are online.

### Using Sametime from Mobile & Table Devices

Attention: As of now the iOS Sametime app is not working. The working app will be released by HCL end June 2020 !!

The mobile app to be installed in HCL Sametime. It can be found in Android store as well as in Apple store for iOS devices.
To enable mobile chat add a new Community and add the appropriate data there:

|Setting|Value|
|-------|-------|
|Community name|any name|
|Server|Depends where your service is located:<br/>webchatna.collab.cloud (North America)<br/>webchateu.collab.cloud (Europe)|
|Port|443|
|User ID|Your email address|
|Secure Connection|check enabled|
|Security|check allow untrusted|
|Save password|your decision|
|Authenticating Proxy|must be disabled|

Save the settings and login to chat.

![Mobile Settings](/assets/images/screen-shots/sametime/mobile-settings.png){:width="50%"}

Go to [HCL's Sametime Documentation site](https://help.hcltechsw.com/sametime/sametime_welcome.html) for more information.
