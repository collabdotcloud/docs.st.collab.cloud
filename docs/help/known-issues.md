# Known Issues

This page documents the issues on the ThreeThirds collaboration platform that we are aware of, in the interest of providing transparency and maintaining communication with our customers.

Please email [support@collab.cloud](mailto:support@collab.cloud) to report any defects that are not listed here. Please also feel welcome to email if you are unsure, or feel that the issue you are experiencing does not quite match up with a known issue documented on this page.

Please keep in mind that we have started with a fresh empty environment and have imported thousands of users and a massive amount of data into it in a very short time. During the migration period this temporarily caused slowness and other hiccups on the platform that should now be resolved.

Thank you for your continued patience and understanding!

---

## Internet Explorer 11 is not Supported

Internet Explorer 11 is not supported in our environment. While we realise it is supported in HCL Connections 6.5 on premise, it is not in HCL Connections 6.5 Multi-Tenant.

For now, customers have to use a supported browser such as Google Chrome, Firefox, or Safari.

*We have filed a request with HCL to support this in future versions of the Connections application.*

## The Survey Functionality is not Available

In the previous Connections Cloud platform, there was a survey feature. This is unfortunately not available in the HCL Connections 6.5 Multi-Tenant code. We understand that some customers made significant use of this feature and will want to know whether the functionality will be provided in the future.

*We have contacted HCL regarding this and will update customers as soon as we receive further information.*

*UPDATE: Statement from HCL:
Survey data was excluded from the beginning. I remember that we discussed the feasibility a couple of times but we decided not to pursue survey export with the approaching deadline. This has also been communicated in various calls. Our [documentation](https://www.cwpcollaboration.com/blogs/a-qa-about-moving-ahead-with-connections-cloud-practical-next-steps) also lists Surveys as out of scope.*

## Performance Issues when Viewing Documents

Our infrastructure has adequate capacity to support the document viewing and editing capabilities of Connections. However there are two issues causing noticable performance issues when working with documents:

1. File thumbnails are constantly being generated for the millions of files we are importing.
2. There may be a bug or configuration issue on one of the servers.

We are prioritising this issue as we realise the importance of the document capabilities to our customers.

## Indefinite Reloads when Starting Sametime in both HCL Notes and the Standalone Client

The "Remember me" function in login page is not working and will result in a indefinite reload on starting the app on next day. This issue will appear in the embedded Sametime within the Notes client as well as in the Sametime standalone client.

Please do not use the "Remember me" function until this issue is resolved.

## The Sametime Connections Plugin is Unavailable

The Sametime Connections plugin that provides instant messaging capabilities within your Connections site is currently not working as expected. You will be able to login, however you will not be able to receive messages.

Please use Sametime webchat available at [webchatna.collab.cloud](https://webchatna.collab.cloud) (for US-based customers) or [webchateu.collab.cloud](https://webchateu.collab.cloud) (for EU-based customers) until this issue is resolved.

## Sametime does not show profile pictures

Sametime standalone and Notes Plugin does not show the profile pictures.

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*

## Verse integration

For customers who have Verse and Connections, the Connections integration in Verse fails if a user starts with Verse.

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*

## Wiki

Wrong links in Apps menu and API calls to oauth endpoints in wikis return wrong links

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*

## External Feeds in ICEC

Some external feeds don't show at the moment.

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*

## Long Descriptions in Activities Plus are Unavailable

The "long description" field is not currently available in Activities Plus. Customers may experience either missing data or an error 404 when trying to access the long description field of an Activity. This is due to a problem we are experiencing with the HCL Connections API which is preventing us from importing the long description data into Activities Plus.

*This is an issue that is occurring with the HCL Connections API. We currently have an open case with HCL to resolve this issue.*

## Activities Plus Community Widget doesn't work in Safari

There is a limitation imposed by Apple which stops the Kudos Boards Community Widget from getting users cookies and therefore is stopping Authentication between Kudos Boards Cloud and HCL Connections.
The only solution is to disable the "Prevent cross-site tracking" option on the user's computer under Safari => Preferences => Privacy.
![Safari Privacy](/assets/images/screen-shots/aplus/safari_cookies.png)

## Error 500 in Desktop plugin when trying to connect **Delete cache in Internet Options**

- Open "Internet Options" either via Internet Explorer - Tools, or via searching for it in Windows

- Click "Delete..."

![id-comparison](/assets/images/screen-shots/desktopplugin/inet-options2.png)

- Make sure you select at least "Temporary Internet files and website files" and "Cookies and website data"

- Click "Delete

![id-comparison](/assets/images/screen-shots/desktopplugin/inet-options3.png)

- Try again to connect

## Very Short Timeouts in the Connections Engagement Center

There is an issue with very short session timeouts in the Connections Engagement Center which is affecting a number of customers in both the EU and US data centres. This results in a login box appearing which does not accept any credentials.

*We have taken a number of steps ourselves to resolve this issue and we have now opened a case with HCL. Updates will be provided as soon as the problem is resolved.*

## Activities Plus (Huddo Boards) not shown correctly

If you are using Chrome (or Brave) browser you might have faced the following issues with Activities Plus:

- Doesn't open in the widget
- Connections header not shown while in the app itself

![id-comparison](/assets/images/screen-shots/aplus/aplus-third-party-cookie.png)

Solution:

- Go to Settings - Privacy and security - Cookies and other site data
- Add the following URLs in the section "Sites that can always use cookies":

![id-comparison](/assets/images/screen-shots/aplus/aplus-sites-that-can-always-use-cookies.png)

- Please note: You have to enable "Including third-party cookies on this site"

## Files search results

Occasionally when searching for files in Community Files, there will be invalid links in the search results. Clicking the link will lead to an access denied error.

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*

## Invalid Links in the Connections Newsletter

There is currently an issue with the Connections newsletter sent out by the platform.

Some links redirect to the Sorry page, if you are not already logged in. Once you are logged in, the link should work.

*This is an issue with the HCL Connections for Multi-Tenant code. We currently have an open case with HCL to resolve this issue and will deploy a fix once it is made available to us.*
