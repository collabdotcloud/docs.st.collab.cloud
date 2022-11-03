## Removing the Previous Connections Cloud Configuration

### An Important Note on Pinned Folders

Prior to removing the Connections Cloud site from your desktop plugin, please ensure that you have removed all pinned folders pointing to Connections Cloud. It is very difficult to remove these after the Connections Cloud site has been removed from the plugin.

### Standard Method

There are some known issues removing the old Connections Cloud configuration from the desktop connector. The recommended procedure for disconnecting the old Connections Cloud configuration is the following:

1. Open Windows Explorer.
2. In the left navigation pane, find and expand the Connections plugin item.
3. In the expanded menu, identify the site you wish to remove.
4. Right click the site, and in the menu that appears click "Disconnect from site".

### A Workaround for the "Files are in Use" Error

In the majority of cases, the standard method for removing the Connections Cloud configuration works.

However some customers have reported that they cannot disconnect the Connections Cloud site because they receive an error stating that there are files are in use.

This is a known-issue, and the recommended work-around is to open task manager, restart the Windows Explorer task, and then immediately attempt to disconnect from the Connections Cloud site using the standard method detailed above.

Some customers have also reported that they were able to disconnect from the Connections Cloud site if they performed the standard method immediately upon the computer booting.

### A Procedure for Total Removal of the Previous Configuration

The default behaviour of the HCL Connections Desktop Plugin for Windows is to maintain the configuration between installations. If you are experiencing difficulties removing the previous Connections Cloud configuration, then the following procedure will resolve them for you by completely removing the plugin and all configurations.

1. From Windows Explorer, right click the site to remove and select "Stop using sync" and then "Disconnect from site".
2. Uninstall the plugin.
3. If there is still a node (e.g. "My Drive on &lt;Server Name&gt;") in the left navigation pane of Windows Explorer that cannot be deleted, then you must follow the process below. **Otherwise, proceed directly to step four.**

    1. Identify the classid value for the node. This is found under the "RegCLSID" key in the registry at `HKEY_CURRENT_USER\SOFTWARE\IBM\Social Connectors\Servers\<Server Number>\SyncLibraries\1` .

        Alternatively you can find it at: `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace` under a subkey that will have String value data that matches the name of the node you are trying to remove. The name of that subkey is the classid value. Save it somewhere, as you will require it later.

        Note that there is a chance there will not be a subkey with a String value that matches the name of the node you are trying to remove. In this case, the subkey you are looking for is the one which has no default value, and you need to save the name of that subkey.

    2. The HCL Connections Desktop Plugin for Windows sets four registry values when adding a site to the left navigation pane in Windows Explorer that need to be manually deleted. Delete the following four keys:

        1. `HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\<classid>`
        2. `HKEY_CURRENT_USER\SOFTWARE\Classes\Wow6432Node\CLSID\<classid>`
        3. `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\Namespace\<classid>`
        4. `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\<classid>`
    3. Restart Windows Explorer via the Task Manager, or restart the computer and verify that the node is now gone.

4. Delete the LFFiles directory at `C:\Users\%USERNAME%\LFFiles` .

5. Delete the contents of the Windows temp diretory: `C:\Users\%USERNAME%\AppData\Local\Temp`
6. Delete the following registry keys and everything under them.

    1. `HKEY_CURRENT_USER\SOFTWARE\IBM\Social Connectors`
    2. `HKEY_CURRENT_USER\SOFTWARE\IBM\Social Document Management`
    3. `HKEY_LOCAL_MACHINE\SOFTWARE\IBM\Social Connectors`
    4. `HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\IBM\Social Connectors`
7. Delete the following folders if they exist:
    1. `C:\Users\%USERNAME%\AppData\Local\HCL\FileSync`
    2. `C:\Users\%USERNAME%\AppData\Local\IBM\FileSync`
    3. `C:\Users\%USERNAME%\HCL Connections Sync`
    4. `C:\Users\%USERNAME%\IBM Connections Sync`
8. Restart the computer.

9. Reinstall the plugin.

If complete removal of the plugin did not resolve the issue, we recommend opening a support case with HCL.
