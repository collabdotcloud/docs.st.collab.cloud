The "Report-to Chain" of an organisation refers to the organizational tree of
an organisation.
It represents the organizational hirarchy and who has to report to whom and who is a manager of who.

An organisation Administrator can update the Report-to Chain for their organisation in
the Admin-App. This can be done in two ways, either by uploading a CSV with the
updated information or directly in the browser by drag and drop, ideal for quick changes.

## Report-to Chain in Connections

Every Connections user has a profile page that looks similar to this one:

![Report-to Chain in user profile](/assets/images/screen-shots/report-to-chain/user-9-profile.png)

The sidebar to the right contains a section about the Report-to Chain, relevant
to the current user we are viewing. 

![Report-to Chain section in user profile](/assets/images/screen-shots/report-to-chain/user-9-profile-small.png)

If the Report-to Chain information is missing, there is no Report-to Chain information for the current user.
To update the Report-to Chain information for users in our cloud, a Administrator of an organization in our cloud
can update the Report-to Chain information for their whole organization. This can be done in our Admin-App and one
can find more information on this process in the [Report-to Chain in AdminApp](#report-to-chain-in-adminapp) section.

The Report-to Chain section in the sidebar shows only a section of the full Report-to Chain of a user.
In this example we can see that 'User 9' has a manager called 'User 8'. 'User 8' is managed by 'User 7' and so on.
It is now clear to us how 'User 9' would have to escalate and what manager they have to report to.

By clicking on 'Full Report-to Chain' we can switch to the 'Full Report-to Chain' view, a seperate page showing
the full Report-to Chain for this user, beyond what is visible in the sidebar.

![Report-to Chain section in user profile](/assets/images/screen-shots/report-to-chain/user-9-full.png)

In the 'Reporting Structure for *User*' we can see the full Report-to Chain.

The view is structured in a top-down fashion. Meaning at the top we will see the currently selected user
and below it, its manager. Below them will be the manager of the selcted users manager and so on.

There are however, up to two more tabs for a selected user, one being the 'Same manager' tab, showing all
the users with the same manager as the selected user.
And another tab called 'People managed' showing all the users that are directly managed by the selected users.

![Report-to Chain section in user profile](/assets/images/screen-shots/report-to-chain/user-2-managed.png)

We will now go over how we can view and update this information in our cloud using the Admin-App.

## Report-to Chain in Admin-App

The Report-to Chain page in the Admin-App can be accessed by clicking the 'Report-to Chain' button in the Organizations users overview

![Report-to Chain button in Admin-App](/assets/images/screen-shots/report-to-chain/admin-app.png)

Which will redirect you to the Report-to Chain page.

![Report-to Chain page in Admin-App](/assets/images/screen-shots/report-to-chain/page.png)

On the Report-to Chain page you will see three tabs:

- View & Export
- Editor
- Update with CSV

Below we will describe what each tab is for and how to use the features in all
of them.

### View & Export

In the View and Export tab, you can view the current Report-to Chain for your organisation and export it as a CSV. The exported CSV can be used to update the Report-to Chain or simply as a backup of sorts or to compare to Report-to Chains from different points of time.

The tree displays which users are managed by which.
For example:

- User 1
    - User 2
    - User 3
        - User 4

In this example, User 1 is the manager of Users 2 and 3 and User 3 is the manager of User 4.
User 1 could for example be a CEO, User 3 a manager and users 2 and 4 employees managed by the CEO and the manager respectively.

### Editor

In the Editor tab, you can make changes to the current Report-to Chain using Drag and Drop. The tree has the same structure as the one under 'View & Export'.

When dragging users you can think of it as setting a user as managed by another.

Meaning if you drag 'User A' from somewhere and drop it on 'User B' you are setting 'User A' as managed by 'User B'.

To the right of the drag and drop editor, you can see the exact changes that will be made. It should now read:

"Setting **User A** as manager of **User B**"

You can now click 'Apply changes' to apply your changes or click 'Discard changes' to undo everything.

### Update with CSV

You can also update the Report-to Chain for your organization with a [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)-file.

You can always export the current Report-to Chain in the 'View & Export' tab to get the CSV-file for the full Report-to Chain in the correct format.

Also please refer to the [CSV structure](#csv-structure) found in this documentation.

Note: The CSV does not replace the Report-to chain, it will only update it.
Meaning, if a user is missing in the CSV it won't remove it from the Report-to Chain. It will not touch missing users and leave them as-is.

Therefore you don't need a CSV file with the full Report-to chain and can simply update just a part of the Report-to chain.

We will always show you exactly what changes will be made after uploading the CSV and you will have to confirm the changes before anything is changed in the database.

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

To update a user either its `uid` or `emailAddress` needs to be given. (Otherwise, the row is ignored) To set it as managed by some other user, one of `managerUid` or `managerEmail` needs to be given, otherwise it is understood as not managed by anyone.

It is best-practise to also supply both if the UID and E-Mail are known.

It is much quicker to update the Report-to Chain with a CSV that includes UIDs. However, it is perfectly possible to update the Report-to Chain only with E-Mail addresses, but it will take longer. This is because we have to perform a look-up for every user without a UID.

Therefore we suggest exporting and downloading the CSV for the full Report-to Chain after a successful update. It will include all UIDs and E-mail for all the users and you can edit said

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

Explaination:

- User 1 is managed by user 3 but is also a manager itself. The `managerEmail` and `managerUid` indicate who user 1 is managed by. `isManager` set to `Y` indicates that user 1 is a manager itself.
- User 3 is a manager but is not managed by anyone, indicated by missing `managerEmail` **and** missing `managerUid`.
- User 5 is managed by user 1 but is not a manager itself. This is indicated by `isManager` set to `N`.

### Error messages

If you encounter any errors, please don't hesitate to open a ticket on [https://support.collab.cloud](https://support.collab.cloud) with the error message.
