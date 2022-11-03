**coming soon...**

The "Report-to Chain" of an organisation refers to the organizational tree of
an organisation.
It's about who has to report to whom and who is managed by whom.

An organisation admin can update the Report-to Chain for their organisation in
the admin app. This can be done in two ways, by uploading a CSV with the 
updated information or using drag and drop, for quick and easy changes.

The Report-to Chain page can be accessed by clicking on the Report-to Chain button on the Org-Users page.


On the Report-to Chain page you will see three tabs:

- View & Export
- Editor
- Update with CSV

As an Admin you can update the "Report-to Chain" for your organization here. You can update it using a CSV file.

## View & Export

In the View and Export tab, you can view the current Report-to Chain for your organisation and export it as a CSV. The exported CSV can be used to update the Report-to Chain or simply as a backup of sorts or to compare to Report-to Chains from different points of time.

The tree displays which users are managed by which.
For example:

- User 1
    - User 2
    - User 3
        - User 4

In this example, User 1 is the manager of Users 2 and 3 and User 3 is the manager of User 4.
User 1 could for example be a CEO, User 3 a manager and users 2 and 4 employees managed by the CEO and the manager respectively.

## Editor

In the Editor tab, you can make changes to the current Report-to Chain using Drag and Drop. The tree has the same structure as the one under 'View & Export'.

When dragging users you can think of it as setting a user as managed by another.

Meaning if you drag 'User A' from somewhere and drop it on 'User B' you are setting 'User A' as managed by 'User B'. 

To the right of the drag and drop editor, you can see the exact changes that will be made. It should now read:

"Setting **User A** as manager of **User B**"

You can now click 'Apply changes' to apply your changes or click 'Discard changes' to undo everything.

## Update with CSV

You can also update the Report-to Chain for your organization with a [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)-file.

You can always export the current Report-to Chain in the 'View & Export' tab to get the CSV-file for the full Report-to Chain in the correct format.

Also please refer to the [CSV structure](#csv-structure) found in this documentation.

Note: The CSV does not replace the Report-to chain, it will only update it.
Meaning, if a user is missing in the CSV it won't remove it from the Report-to Chain. It will not touch missing users and leave them as-is.

Therefore you don't need a CSV file with the full Report-to chain and can simply update just a part of the Report-to chain.

We will always show you exactly what changes will be made after uploading the CSV and you will have to confirm the changes before anything is changed in the database.

### CSV structure

Each user has its own row and the columns are the data points for all the users.

The columns are the following in this order:

Columns: `emailAddress`, `uid`, `isManager`, `managerEmail`, `managerUid`

- `emailAddress`: The E-Mail address of the user
- `uid`: The Connections userID of the user
- `isManager`: `Y` for yes or `N` for no
- `managerEmail`: The E-mail address of the manager of this user. Can be empty if the user has no manager
- `managerUid`: The Connections userID of the manager of this user. Can be empty if the user has no manager

### UIDs vs. E-Mails

To update a user either its `uid` or `emailAddress` needs to be given. (Otherwise, the row is ignored) To set it as managed by some other user, one of `managerUid` or `managerEmail` needs to be given, otherwise it is understood as not managed by anyone.

It is best-practise to also supply both if the UID and E-Mail are known. 

It is much quicker to update the Report-to Chain with a CSV that includes UIDs. However, it is perfectly possible to update the Report-to Chain only with E-Mail addresses, but it will take longer. This is because we have to perform a look-up for every user without a UID.

Therefore we suggest exporting and downloading the CSV for the full Report-to Chain after a successful update. It will include all UIDs and E-mail for all the users and you can edit said

### CSV Example

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