# Hide the "Create a Community" button

Connections MT allows everyone to create new communities. If you need to limit this to only a limited number of users. This extension in the [appreg](/admin/appreg.md) may help.

```json
{
    "name": "ttt.hideCreateCommunity",
    "title": "hide Create Community Button",
    "description": "Hide Create Community Button for everyone except the list of users defined in the exclude part.",
    "services": [
        "Customizer"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "ttt.hideCreateCommunity.Extension",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "exclude": {
                    "user-email": [
                        "user@domain.com",
                        "user@domain.com"
                    ]
                },
                "include-files": [
                    "extensions/ttt.hidecommunitycreate/css/hidecommunity.css"
                ],
                "cache-headers": {
                    "cache-control": "max-age=42"
                }
            },
            "path": "communities",
            "state": "enabled"
        }
    ]
}

```

The user on top part on the screenshot below, is listed in the exclude list. Whereas to bottom part shows a user who is not in the exclude list.
![Create Community Button](/assets/images/extensions/community-hide.png)
