# Hybrid Customers
If you are a "Hybrid" customer (you have both an on-premise Domino environment and Mail in _collab.cloud_) managing your users requires access to both the Admin App and your on-premises Domino Directory.

> New user creation and updates to a user's name or email address should be performed in your on-premises Domino Directory. 

The following is for Administrators to consider:

* Your on-premises Domino Directory is synchronised with the central _collab.cloud_ directory.
* All new users should be registered in the Domino Directory, and a Notes ID password created as normal to be deployed in the ID Vault.
* Notes ID passwords are for Notes only, and are not used to authenticate to Connections, Verse mail, apps in cloud, plugins or other _collab.cloud_ services.
* Administrators need to log into the Admin App to set a password for a new user. (see Directory Sync)

If you are registering an on-premises mail or apps user - this procedure will still apply in most cases. For example:

* You have an on-premises mail user that needs to use Connections in _collab.cloud_. You can assign a Connections license if your Organization is licensed for Connections.
* You have a user that will have no mailbox at all, but needs to use other on-premises Domino services/apps as well as Connections in _collab.cloud_.

---

## Directory Sync

Your mail cluster is configured to synchronize your Domino Directory with the _collab.cloud_ identity management system and the Admin App approximately every **3 minutes**\** </br></br>
    ![domreg-sync](/assets/images/screen-shots/admin/domreg-sync.png)

The Directory Sync process will detect changes in the Domino Directory and perform the following:

* Add new users registered in the Domino Directory to _collab.cloud_ and be visible in the Admin App.
* Assign a _Clustered Mail Cloud_ license to:
    - Any new users who are registered and their mailboxes created on _collab.cloud_ mail servers.
    - Any existing mail users who have been moved/updated to _collab.cloud_ mail servers and mailboxes transferred via Domino (adminP) process.
    - Any existing Connections users in _collab.cloud_ who have later been registered in the Domino Directory for mail. (linked by email address)
* Modify basic name information for a user such as First/Last name, email address. (see Updating User Info)
* Remove _Clustered Mail Cloud_ license from any users who have been deleted from the Domino Directory and set the user status to `Inactive`

> ** The 3 minute Sync heartbeat is being rolled out during May 2021. This will be the default setting but may differ in your Organiztion. Please log a support ticket via [support@collab.cloud](mailto:support@collab.cloud) for more information.

</br>
After the sync process has created/updated the user in the Admin App - you can then set a password and (if required) assign a Connections or other license. </br></br>
    ![domreg-adminapp](/assets/images/screen-shots/admin/domreg-adminapp.png)

You may also notice that the _Shortname/UserID_ field in the Person Document is updated with a unique number or univeral ID value.

* For users migrated from IBM Cloud it may be a value like `200112345`
* For new users it may be a value like `60474dad-d943-404c-8e1a-fb096bc54716`

</br>
    ![domreg-persondoc](/assets/images/screen-shots/admin/domreg-persondoc.png)

> This is the assigned UID from the _collab.cloud_ identity system and is critical for Connections/Mail/IM integration and authentication. </br>

Please do not remove this value! It will just reappear on the next Sync and break functionality in the meantime!

---

## Register user in Domino Directory

Register the user as per your normal process, ensuring that your nominated _collab.cloud_ mail servers have been specified, and that correct Policies are applied. </br></br>
    ![domreg-basics](/assets/images/screen-shots/admin/domreg-basics.png)</br>
    ![domreg-mailserver](/assets/images/screen-shots/admin/domreg-mailserver.png)

---

## Set/Reset user password

Clicking the reset password button gives you 2 options as follows:

  ![password reset](/assets/images/screen-shots/admin/reset.png)

* Use the "Set password" link for new users. This allows you to set a temporary password for the user that they will need to change as soon as they login for the first time.
* Clicking "Send reset email" sends a link to the user at their specified email address that they can click on to set their password.

> PLEASE NOTE: For new mail users - you need to use the "Set password" function. As the user cannot retrieve the password email if they have never logged in to their email!

---

## Updating User Info in Domino Directory

Name changes (such as firstname., lastname and email address) performed via the Domino Administrations Process (adminP) will be synchronized with the _collab.cloud_ Admin App.</br>
**If the user has a Connections license - additonal steps are required**.

If you are renaming a mail & Connections user, you need to log into the Admin App to perform a re-save to update the Connections Profile:

1. Rename/change the user's name information via Domino Administration Process (adminP).
2. Wait for the updates to sync to the _collab.cloud_ Admin App.
3. Select the user in the Admin App, edit the user's record and re-save.
> The re-save triggers the Admin App to update the Connections profile with any name changes including the email address. The user can then login to mail and Connections with their new email address.

Please send a request to [support@collab.cloud](mailto:support@collab.cloud) if you need assistance.

---

## Deleting Users from Domino Directory

When a user is deleted from the Domino Directory. The Directory Sync process will:

* Remove the _Clustered Mail Cloud_ license from the user in the Admin App.
* Set the user to `Inactive` which disables the user from logging into any _collab.cloud_ services.

> An administrator can log into the Admin App and change the user back to `Active` if the user returns to the Organization, or the user needs to retain use of Connections or other _collab.cloud_ services.
