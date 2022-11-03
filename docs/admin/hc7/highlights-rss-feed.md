# RSS Feeds in Highlights and ICEC

The RSS Widget allows to show external RSS feeds in your ICEC Homepage or on the Highlights Page/new Community Homepage.

Example RSS feed:

![Example RSS Widget](/assets/images/admin/rss/rss-widget.png)

For security reasons all the external URL's or domains need to be whitelisted.

OrgAdmins need to do this in the appregistry.

## Widget

![RSS Widget](/assets/images/admin/rss/rss-widget-2.png)

The RSS feeds are defined as Content sources

![Content Source](/assets/images/admin/rss/content-source-sm.png)

Each of these URL's or domains need to whitelisted in the appregistry

## Whitelist

Create a new app in the appregistry

![Appreg app](/assets/images/admin/rss/appreg-ext1.png)

Service needs to be **Customizer** and the extension point **com.ibm.customizer.proxy**
The Extension name is just for your information and can be set to anything. For example : RSS Whitelist

Enter an URL or a domain and hit the Next button.

![Appreg extension](/assets/images/admin/rss/appreg-ext3.png)

The graphical editor sometimes has issues with cacheing. Adding more url's or domains is easier in the code editor.
The following example shows the whitelist for a url and for a domain. Just add more entries to the *"whitelist":[ ]*

```js
{
    "name": "External RSS Feeds",
    "title": "External RSS Feeds",
    "description": "Whitelist external urls for rss feeds",
    "services": [
        "Customizer"
    ],
    "extensions": [
        {
            "name": "ICEC RSS Feed Whitelist",
            "type": "com.ibm.customizer.proxy",
            "payload": {
                "whitelist": [
                    {
                        "url": "https://vowe.net/index.rdf",
                        "method": [
                            "GET"
                        ]
                    },
                    {
                        "method": [
                            "GET"
                        ],
                        "domain": "herokuapp.com"
                    }
                ]
            }
        }
    ]
}
```
