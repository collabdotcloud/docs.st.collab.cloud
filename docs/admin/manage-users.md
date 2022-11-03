# Manage your Users

How you manage your Users depends on your Organization Account Type. Follow the steps below to create a new User in your Organization account. If you are a Hybrid customer (you have both an on-premise Domino environment and Mail in _collab.cloud_) you will need to follow the steps for [Hybrid Customers](https://docs.collab.cloud/admin/manage-users-hybrid/)

---

## Adding a new user

1. From the "My Users" page, click the add button (bottom right)

    ![fab](/assets/images/screen-shots/admin/fab.png)

1. Provide all required information for the new user. The email must be unique. Note that you may use this form to create a guest / external user, if you do so that user will be provisioned as a connections guest and will not be able to be changed.

    **Note:** External users cannot be invited directly to the Community. External users needs to be created in the dialog below.

    ![new-user](/assets/images/screen-shots/admin/new-user.png)

---

## Adding a subscription

Locate the new user in your Users list and click them. If you have available subscriptions you will be presented with an option to assign a subscription to the user, click the menu and choose the appropriate subscription then click add.

To remove subscriptions see: [Removing a subscription](#removing-a-subscription)

### Connections

Connections subscriptions that are assigned to your Organization will be presented in the menu. Usually these options will be either: _Connections Engagement Suite_, _Connections Social_ or _Connections Docs_. Assigning a Connections license to a new User will create a new Profile in Connections. </br></br>
    ![add subscription](/assets/images/screen-shots/admin/add-sub.png)

### Mail

**NOTE**: Clustered Mail Cloud subscriptions can not yet be added via the _collab.cloud_ Admin App. For Clustered Mail Cloud subscriptions to be added to your User, please send a request to [support@collab.cloud](mailto:support@collab.cloud). </br>
For Hybrid customers - please follow the steps in the [Hybrid Customers](https://docs.collab.cloud/admin/manage-users-hybrid/) doc.

---

## Set/Reset user password

Clicking the reset password button gives you 2 options as follows

  ![password reset](/assets/images/screen-shots/admin/reset.png)

  Clicking "Send reset email" sends a link to the user at their specified email address that they can click on to set their password.

  Clicking "Set password" allows you to set a temporary password for the user. They will need to change this as soon as they login.

> NOTE: For new Mail users - using the "Set password" function is required as the user will not be able to retrieve the password email if they have never logged in.

---

## Updating user info

You can change a users name or email address by clicking the "EDIT" button from a user's record.

  ![edit user](/assets/images/screen-shots/admin/edit-user.png)

## Changing user role

When editing a user you may make them an organisation admin by changing their role from user to admin. You cannot change the role of a guest (visitor) user.

  ![user role](/assets/images/screen-shots/admin/user-role.png)

## Controlling user access

To disable access to all _collab.cloud_ services you may make a user **Inactive** when editing their details, this will _immediately_ remove them from all relevant groups and block access to logging in, it does not however remove any subscriptions from the user. If you wish to recover and reuse any connections subscriptions, you may also remove their subscriptions. (See: [Removing a subscription](#removing-a-subscription))

You may also update an "Inactive" user by setting them to "Active", this will reinstate any relevant groups and access as required.

  ![user status](/assets/images/screen-shots/admin/user-status.png)

## Removing a subscription

To remove a subscription, click the "x" on the subscription.

  ![Click the x on the subscription you would like to remove](/assets/images/screen-shots/admin/remove-sub.png)

This will **not** delete any data of this user. Everything the user had and did will persist and still be around. The following behaviour can be observed

1. The user will no longer show up in the Directory search and type ahead for mentions

2. The user will still show up in Community membership and on content that they created. However, the profile picture will be greyed out and the user will have an indication in text they are no longer an active user.

![Inactive user](/assets/images/screen-shots/admin/inactive-user-profile.png)

3. All personal files in the person's file library will still be there. This goes for private files, files shared with other users and files shared with a community. No content from the user will be deleted. If you want somebody else to be the owner of the users personal files, please use the [Transfer file ownership](#transfer-file-ownership) functionality.

4. This will **not** keep the user from being able to logon to our systems. To block a user from logging on to our systems see [Controlling user access](#controlling-user-access)

5. The user can be re assigned a Connections subscription through the admin app and will be reconnected to its data.

A way of removing a user in a more permanent manner is on our roadmap!


### Transfer file ownership

The functionality to transfer content of a user to a new user as it existed in IBM Smartcloud does not exist in this version of Connections. The only efficient way of transferring files to another user is the below procedure.

For files, the easiest thing is to transfer ownership to another user. Ideally, a user transfers the ownership of his files before his subscription is removed.

The user that is leaving and has files to transfer to a new user needs to logon to Connections and go to **"Files - My Files"**. Once there, select all files you want to transfer ( please note this page loads content on scroll, so you need to scroll down to make sure you have all of them) and click the **"Transfer Ownership"** button. Search for the user you want to transfer the files to.

![Transfer files](/assets/images/screen-shots/admin/transfer-files.png)
