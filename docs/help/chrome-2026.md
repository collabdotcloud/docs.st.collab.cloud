# Action required before 17 November: Google Chrome is removing XSLT, and what this means for HCL Connections

HCL has published a support article [KB0135340](https://support.hcl-software.com/csm?id=kb_article&sysparm_article=KB0135340&table=kb_knowledge&searchTerm=KB0135340) about a change in Google Chrome that will affect HCL Connections 7.0 and 8.0 (all CRs). Here is what's happening, what's affected, and what to do.

## What is changing?

For security reasons, Google is removing XSLT from Chrome.  
XSLT is an older browser technology that turns XML into web pages. From Chrome 158, due on 17 November 2026, XSLT stops working unless your administrator turns on a specific enterprise policy. Microsoft Edge is expected to follow in December 2026. Firefox and Safari plan to do the same but haven't set a date yet.

What is the impact on HCL Connections?  
Several Connections widgets use XSLT in the browser to display their content. From Chrome 158, these widgets will show no content and display this error:

**Error transforming xml document**  
**ReferenceError: XSLTProcessor is not defined**

Affected areas:

- Communities: Members, Feeds, Important Bookmarks, Subcommunities
- Blogs and Ideation widgets
- Forums topic list
- Activities community widget
- Files and media gallery
- Search results
- SAND recommendations
- Profiles feed widgets

### What is HCL doing?

HCL is working on a fix that removes Connections' need for XSLT in the browser. We will contact you once it's available and plan the installation with you.

### What should you do now?

Until the fix is ready, you can keep XSLT working on the computers your organisation manages by turning on Google's XSLTEnabled enterprise policy:  

- Windows: set XSLTEnabled to 1, either through Group Policy (Chrome ADMX templates) or in the registry under HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome
- macOS: deploy XSLTEnabled through your MDM solution
- Linux: create /etc/opt/chrome/policies/managed/xslt.json containing { "XSLTEnabled": true }
- Google Admin Console: go to Devices → Chrome → Settings, search for "XSLT" and turn it on 

To check it worked, open chrome://policy, click Reload policies and make sure XSLTEnabled shows the status OK. 
We also recommend preparing the equivalent Edge policy before December.
Please note: 

- This is a short-term workaround only. Google will remove the policy in a later Chrome release, so installing HCL's fix is still required.
- The policy only covers computers your organisation manages. Guests, partners and people on personal devices will still be affected in Chrome 158 and later. Until the fix is installed, they can use Mozilla Firefox or Apple Safari.

## Need assistance?

If you need assistance, please open a support case and we'll happily give you instructions to make sure everything keeps running smoothly.
