The organisations "Report-to Chain" refers to the organisational tree in the organisation.
It represents the organisational hirarchy and who has to report to whom and who is a manager of who.

The organisation Administrator can update the Report-to Chain for their organisation in
the Admin-App. This can be done in two ways, either by uploading a CSV with the
updated information or directly in the browser by drag and drop, ideal for quick changes.

## Report-to Chain in Connections

The Report to Chain widget is can be found in the top right on the user profile page.

![Report-to Chain in user profile](/assets/images/screen-shots/report-to-chain/user-9-profile.png)

Larger view of the Report-to Chain widget:

![Report-to Chain section in user profile](/assets/images/screen-shots/report-to-chain/user-9-profile-small.png)

From [HCL Support Page](https://opensource.hcltechsw.com/connections-doc/v8-cr6/user/profiles/c_pers_profiles.html?h=report+chain#section_zc5_mm5_sy){target="_blank"}:

Learn more about a person's position in the organizational hierarchy in the **Report-to-Chain** section. Choose one of the following options to open additional information about the people in the reporting structure:

|View|Description|
|----|-----------|
|Full Report-to Chain|Opens a page that shows basic information about the people in the organizational hierarchy.|
|Same Manager|Opens a page that shows basic information about the people who also report to the profile owner's manager.|

To update the Report-to Chain information in HCL Connections, an Administrator can update the Report-to Chain information for their Users in the Admin-App. Look at the [Report-to Chain in AdminApp](#report-to-chain-in-admin-app) section for further details.

## Report-to Chain in Admin-App

The Report-to Chain page in the Admin-App can be accessed by clicking the 'Report-to Chain' button in the 'My Users' view.

![Report-to Chain button in Admin-App](/assets/images/screen-shots/report-to-chain/admin-app.png)

The Report-to Chain start page.

![Report-to Chain page in Admin-App](/assets/images/screen-shots/report-to-chain/page.png)

There are three tabs on the Report-to Chain page:

- View & Export
- Editor
- Update with CSV

### View & Export

The *View and Export* tab shows the current Report-to Chain for your organisation.
The *Export CSV* button download's the current information in [CSV](https://en.wikipedia.org/wiki/Comma-separated_values){target="_blank"} format. The exported CSV can be used as a template to update the Report-to Chain.

The tree displays which users are managed by which.
For example:

- User 1
    - User 2
    - User 3
        - User 4

In this example, User 1 is the manager of Users 2 and 3 and User 3 is the manager of User 4.

### Editor

The hierarchy can be updated directly in the *Editor* tab using Drag and Drop. The tree has the same structure as the one under 'View & Export'.

When dragging users you can think of it as setting a user as managed by another.

To make **User 2** managed by **User 1**, drag **User 2** on **User 1**.

The right side of the drag and drop editor shows the draft changes.

Example:  
"Setting **User 1** as manager of **User 2**"

The button *Save changes* to pushes the updates into the profiles.  
*Discard Changes* will clear all changes.

### Update with CSV

Maintaining your organisational hierarchy manually is cumbersome if there are a lot of changes or a lot of users.

It's also possible to update the Report-to Chain with a [CSV](https://en.wikipedia.org/wiki/Comma-separated_values){target="_blank"}-file.

The current settings can be exported from the *View & Export* tab. This CSV file may be used as a template for the updates.

Also please refer to the [CSV structure](#csv-structure) found in this documentation.

The import updates the Report-to Chain information based on the CSV. Users not in the CSV file will be ignored.

The *Preview changes* section will show you the upcoming changes. After confirming these changes, the profiles in HCL Connections will be updated.

#### CSV structure

Each user has its own row and the columns are the data points for all the users.

The columns are the following in this order:

Columns: `emailAddress`, `uid`, `isManager`, `managerEmail`, `managerUid`

- `emailAddress`: The E-Mail address of the user
- `uid`: The Connections userID of the user
- `isManager`: `Y` for yes or `N` for no
- `managerEmail`: The E-mail address of the manager of this user. Can be empty if the user has no manager
- `managerUid`: The Connections userID of the manager of this user. Can be empty if the user has no manager

#### UIDs vs. E-Mails

To update a user `uid` or `emailAddress` needs to be provided. To set it as managed by some other user, one of `managerUid` or `managerEmail` needs to be provided. Incomplete records will be ignored.

If both  the UID and E-Mail are provided in the CSV, the time for the updates is faster. That's the reason why we provide those uid's in the export.

#### CSV Example

Structure:

- user3@orga.com.au
    - user1@orga.com.au
        - user5@orga.com.au

Preview table:

| emailAddress      | uid        | isManager | managerEmail      | managerUid |
| :---------------- | :--------- | :-------- | :---------------- | :--------- |
| user1@orga.com.au | 1000000001 | Y         | user3@orga.com.au | 1000000003 |
| user3@orga.com.au | 1000000003 | Y         |                   |            |
| user5@orga.com.au | 1000000005 | N         | user1@orga.com.au | 1000000001 |

CSV file content:

```csv
emailAddress,uid,isManager,managerEmail,managerUid
user1@orga.com.au,1000000001,Y,user3@orga.com.au,1000000003
user3@orga.com.au,1000000003,Y,,
user5@orga.com.au,1000000005,N,user1@orga.com.au,1000000001
```

Explanation:

- User 1 (user1@orga.com.au) is managed by user 3 (user3@orga.com.au).
 `isManager` set to `Y` indicates that user 1 is a manager itself.
- User 3 is a manager but is not managed by anyone, indicated by missing `managerEmail` **and** missing `managerUid`.  
This would also remove any existing manager from User 3.

- User 5 is managed by user 1 but is not a manager itself. This is indicated by `isManager` set to `N`.

### Error messages

If you encounter any errors, please don't hesitate to open a ticket on [https://support.collab.cloud](https://support.collab.cloud) with the error message.
