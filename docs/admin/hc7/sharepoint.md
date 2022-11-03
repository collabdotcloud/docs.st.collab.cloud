# Sharepoint Community widget

***Known Issue:*** If you are not logged in sharepoint the widget sometimes points to the wrong login url. We have a case open with HCL.
Workaround: Either login to the sharepoint site first or open the full sharepoint widget and refresh the page before you try to click the login link.

Official [HCL Documentation](https://opensource.hcltechsw.com/connections-doc/v7/configuringv7features/sharepoint/c_admin_sharepoint_app_container.html)

First you need to configure the [Sharepoint app](https://opensource.hcltechsw.com/connections-doc/v7/configuringv7features/sharepoint/t_admin_sharepoint_app_enabling.html) which returns a client-id. This client-id together with your site url is used to [configure and enable the Sharepoint](https://opensource.hcltechsw.com/connections-doc/v7/configuringv7features/sharepoint/t_admin_sharepoint_app_configure.html) widget in our Appregistry.

The Sharepoint site for your community needs to be set in the community properties
![Site Config](/assets/images/admin/sharepoint/site-config.png)

## Troubleshooting

The sharepoint widget requires you to be allready logged in your sharepoint site.
![Not logged in](/assets/images/admin/sharepoint/not-logged-in.png)
