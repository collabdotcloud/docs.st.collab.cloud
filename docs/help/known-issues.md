# Known Issues

This page documents the issues on the ThreeThirds collaboration platform that we are aware of, in the interest of providing transparency and maintaining communication with our customers.

Please open a support ticket on our [support site](https://support.collab.cloud/)  to report any defects that are not listed here.

Thank you for your continued patience and understanding!

---

## Sametime does not show profile pictures

Sametime standalone and Notes Plugin does not show the profile pictures.

*We are working on a solution together with HCL and will deploy once it is ready.*

## External Feeds in ICEC

Some external feeds don't show at the moment.

*This is an issue with the HCL Connections for Multi-Tenant code. There are some workarounds available, so please reach out to us if you run into this through support so we can investigate your specific use case.*

## Activities Plus Community Widget doesn't work in Safari

There is a limitation imposed by Apple which stops the Kudos Boards Community Widget from getting users cookies and therefore is stopping Authentication between Kudos Boards Cloud and HCL Connections.
The only solution is to disable the "Prevent cross-site tracking" option on the user's computer under Safari => Preferences => Privacy.
![Safari Privacy](/assets/images/screen-shots/aplus/safari_cookies.png)

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

## HCl Connections Plugin for Outlook does not authenticate

If you are blocking 3th party cookies in your browser you will face an issue where the authentication flow will never finish:

Solution:

- Go to Settings - Privacy and security - Cookies and other site data
- Add the following URLs in the section "Sites that can always use cookies":

![id-comparison](/assets/images/screen-shots/outlook/Chrome3thPartyCookies_2.png)

- Please note: You have to enable "Including third-party cookies on this site"