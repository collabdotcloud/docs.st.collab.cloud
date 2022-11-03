# Frequently Asked Questions

**Q. Community overview page stays empty**  
If I click on Community, only the top header shows and the rest of the page stays empty.  
![Clean communities](/assets/images/faq/empty_community.png)

**A.** This may be caused by your browser cache.  
Try a different browser or clear the local cache.  
Support links for:  

- [Chrome](https://support.google.com/accounts/answer/32050?hl=en&co=GENIE.Platform%3DDesktop){:target="_blank"}
- [FireFox](https://support.mozilla.org/en-US/kb/how-clear-firefox-cache){:target="_blank"}
- [Edge](https://support.microsoft.com/en-us/microsoft-edge/view-and-delete-browser-history-in-microsoft-edge-00cf7943-a9e1-975a-a33d-ac10ce454ca4){:target="_blank"}
- [Safari](https://support.apple.com/guide/safari/clear-your-browsing-history-sfri47acf5d6/mac){:target="_blank"}

Try the clear only the local cached images and files first.  
![Cache only](/assets/images/faq/clear.png){:width="400px"}

**Q. I cannot upload files greater than 50MB in size with the Windows desktop plugin. The plugin returns an error 400.**

**A.** This is a limit imposed by the desktop plugin. It can be changed via a registry key entry detailed here: [HCL Support page](https://support.hcltechsw.com/csm?id=kb_article&sysparm_article=KB0021371&sys_kb_id=475262431b4f7784c1f9759d1e4bcbb7){:target="_blank"}

The maximum allowed upload size is 2000MB.

**Q. What does it mean to make a user inactive?**

**A.** When a user's status is set to inactive via the administration tool, they are unable to log in to Connections or any other Collab.Cloud provided services including their web mail and SameTime. Note that if you have an on-premise Domino environment, setting a user to inactive via the administration tool will not prevent them logging into Notes.

**Q. What does it mean to remove a user's Connections subscription?**

**A.** Currently, removing a user's Connections subscription does not prevent a user from logging in to Connections (to do that, you need to make them inactive, but this will also prevent them logging in to their webmail and SameTime).

**Q. What happens to the files and other shared content of a user after they are set to inactive?**

**A.** When a user is made inactive, all content they have posted publicly will remain visible. It is not deleted, and it can still be interacted with. Any private content the user did not share while they were active will be inaccessible.

**Q. How do I delete Connections users?**

**A.** Deleting users is currently not supported. You can prevent a user from logging in to Collab.Cloud services by making them inactive.

**Q. Are unused accounts ever automatically made inactive?**

**A.** No. There is currently no automatic lockout or disabling feature for accounts that are not logged in to for a period of time.

**Q. Using the HCL Connections Desktop Plugin, can you add desktop shortcuts pointing to files on Connections?**

**A.** This is currently not supported by the plugin.

**Q. What is the Super Admin role that I can see in the administration tool?**

**A.** The Super Admin role is for the Three Thirds support team to manage your organisation and fulfil support requests.

**Q. Why is my Notes plugin for Connections not working?**

**A.** Unfortunately the Notes plugin for Connections is not currently supported by HCL Connections Multi-Tenant.

**Q. When creating new users in the admin app, strange IDs are shown for them. Is this correct?**

![id-comparison](/assets/images/screen-shots/admin/id-comparison.png)

**A.** Yes, this is correct. As you can see in the above screenshot, SmartCloud IDs weren't consistent regarding length. We decided to use a more technical but consistent pattern. As a side effect, you can easely distinguish between migrated and new users.

**Q. How do I remove Connections Cloud from my Windows Connector?**

**A.** Go to Windows Explorer, find the Connector and connected sites in the left navigation pane (usually towards the bottom), right click on the site you want to remove, and click "Disconnect from Site".

**Q. I have configured my Desktop Connector. Why can't I see my communities?**

**A.** Your community information in the desktop plugin is stored client-side. This means we were unable to migrate it and the communities will need to be re-added. Once re-added, you will be able to access your community data.
