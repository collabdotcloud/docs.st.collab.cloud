# Integrating Connections and Mail

##Introduction

We offer an integration between HCL Connectiosn and your HCL Verse mail client. It offers the following features

- Single Sign on between Connections and your mail file
- Access to your mail file and calendar integrated int he Connections header
- Usage of the file Preview functionality from within Verse so you can view supported attachments withouth the need to download them
- Profile images in your mail picked up from Connections
- Same login and password on mail and Connections
- Optionally and in proof of concept, the ability to use SAML login into your Notes client so you can use the same password you are using for the web in your Notes client


##How to get it

By request. Please send us a request via [Support](https://support.collab.cloud)


##In the background

We will setup a sync between your Domino directory to sync all the users to our central authentication system. You will now also see al your Domino users in the Admin App, if they already existed with a Connections subscription, a Domino subscription will be added to the current user.
For users that do not exist, a new user will be created and a Domino subscription will be added.
Once this is setup we need to reconfigure both our autnetication server and your Domino environment.

##Experience for the user

Once the setup is done, when a user goes to either their mail or Connections they will be presented with a uniform logon experience and nee dto use the password they were using for Connections, if they don't remember, reset it using the link on the login page.
Below are a couple of screenshots of what it looks like and the added functionality
