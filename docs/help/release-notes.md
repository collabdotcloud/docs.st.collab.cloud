# Release Notes

## HCL Connections Desktop Plug-ins for Microsoft Windows

**Version 21.07 (July, 2021) update**

- Allow multi-select operatons in sync folder
- Customer reported problems and bug fixes
    - Drag file from namespace into browser drop target fails. Fixed for IE, Chrome, and Edge browsers. Firefox uses a different drop type and will not work with the plugin.
    - Local create and updated timestamps not always set correctly When uploading files and folders from the windows plugin, the new item on the server did not always reflect the local create and updated timestamps.
    - Allow a lower policy setting (10M) for the large file upload API threshhold.
    - Rebuild badges db on startup (under beta flag)
    - Sync actions can 'hang' in rare scenarios. This could occur in edge cases when an action requires no processing (eg delete of a local folder that was already deleted) and is followed by another action for the same item.
    - Sync edge case with multiple copies of same file dragged into folder and renamed.
    - Sync edge case with a copy of same file dragged onto another copy

## HCL Connections for Mac

**Version 21.08 (August, 2021) update**

- Fixes an issue where unavailable actions may appear in the context menu shown when multi-selecting a mix of folders and files in the sync folder. 

**Version 21.07 (July, 2021) update (included in the August update)**

- Allow multi-select operatons in sync folder
- Customer reported problems and bug fixes
    - Added a policy entry that can be used to set the default Sync folder name (DefaultSyncFolderName)
    - Sync issues with temp files. Code was attempting to sync temporary files which should have been ignored.
    - Local create and updated timestamps not always set correctly When uploading files and folders from the plugin, the new item on the server did not always reflect the local create and updated timestamps.
    - Allow a lower policy setting (10M) for the large file upload API threshhold.
    - Rebuild badges db on startup (under beta flag)
    - Fix for sync actions that can 'hang' in rare scenarios. This could occur in edge cases when an action requires no processing (eg delete of a local folder that was already deleted) and is followed by another action for the same item.
    - Fixed sync edge case with multiple copies of same file dragged into folder and renamed.
    - Fixed sync edge case with a copy of same file dragged onto another copy
    - Sync issue when dragging in folder tree. In some cases, all subitems weren't detected.
    - Performance improvements in sync when moving large folders.
    Features added under the beta flag (Set in Preferences to use. Note: beta features may not be fully translated and are intended as a way to try out new featues)
    - Allow users to change ownership on files
    - Improved 'Add account' configuration user experience

## HCL Connections Plug-ins for HCL Notes

**Apr 1, 2021**

- The Connections Notes Plugin now supports connecting to a Connections Multi-tenant server configurations.
    - To connect to a multi-tenant server, enter the server URL, select Advanced and choose OAUTH as the authentication type. After closing the preferences panel, you will be prompted to authenticate with a popup browser window.
    - Support for Connections v7
- Customer reported problems and bug fixes:
    - Fixed issue with closing Notes tabs when working with Activities
    - Some complex status updates can prevent status updates feed from loading
    - In status updates, thumbnails fail to load for unfurled URLs with long thumbnail URL length
    - Fix scenario in activities where Add Comment button on activity entry fails
    - Activity entry slide out panel Add Response button does not work
    - Status updates People search only worked for email addresses, not user names
