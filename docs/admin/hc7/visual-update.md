# What is Visual Update

Visual Update is a graphical layer on top of HCL Connections that provides HCL Connections with a fresh, more modern UI.  It can be easily enabled by an org admin using the [App Registry](/admin/appreg.md)

![My Profile](/assets/images/admin/visual-update/visual-update-profile.png)

![My Communities](/assets/images/admin/visual-update/visual-update-communities.png)

![Files](/assets/images/admin/visual-update/visual-update-files.png)

## How to enable

To enable Touchpoint for your organisation, you will need to add a new Appregistry extension. For more information on Appregistry, see [here](https://docs.collab.cloud/admin/appreg/).

## Example

This is the JSON code that must be added

```json

{
    "app_id": "com.ibm.connections.vu1css",
    "name": "Visual Update 1 - Direct CSS",
    "title": "Visual Update 1 - Direct CSS",
    "description": "Customizer extension to re-theme Connections",
    "services": [
        "Customizer"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "AAGlobal Ex",
            "title": "Global Settings",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/global.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "global",
            "state": "enabled"
        },
        {
            "name": "Account Settings",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/settings.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "manage",
            "state": "enabled"
        },
        {
            "name": "Activities",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/activities.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "activities",
            "state": "enabled"
        },
        {
            "name": "Blogs",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/blogs.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "blogs",
            "state": "enabled"
        },
        {
            "name": "Bookmarklet",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/dogear.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "connections",
            "state": "enabled"
        },
        {
            "name": "Bookmarks",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/dogear.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "dogear",
            "state": "enabled"
        },
        {
            "name": "Communities",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/communities.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "communities",
            "state": "enabled"
        },
        {
            "name": "Downloads",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/settings.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "downloads",
            "state": "enabled"
        },
        {
            "name": "Files",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/files.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "files",
            "state": "enabled"
        },
        {
            "name": "Forums",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/forums.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "forums",
            "state": "enabled"
        },
        {
            "name": "Homepage New",
            "title": "OrientMe",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/home.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "social",
            "state": "enabled"
        },
        {
            "name": "Homepage Old",
            "title": "Homepage",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/home.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "homepage",
            "state": "enabled"
        },
        {
            "name": "Meetings",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/meetings.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "meetings",
            "state": "enabled"
        },
        {
            "name": "Metrics",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/metrics.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "metrics",
            "state": "enabled"
        },
        {
            "name": "MyContacts",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/profiles.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "mycontacts",
            "state": "enabled"
        },
        {
            "name": "Notification Settings",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/settings.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "news",
            "state": "enabled"
        },
        {
            "name": "Open social",
            "title": "Open Social Gadgets",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/opensocial.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "connections",
            "state": "enabled"
        },
        {
            "name": "Org page",
            "title": "Organization Page",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/profiles.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "contacts",
            "state": "enabled"
        },
        {
            "name": "Profiles",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/profiles.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "profiles",
            "state": "enabled"
        },
        {
            "name": "Search",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/search.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "search",
            "state": "enabled"
        },
        {
            "name": "Surveys",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/surveys.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "surveys",
            "state": "enabled"
        },
        {
            "name": "Wikis",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "cnx-custom-theme/css/wikis.css"
                ],
                "include-repo": {
                    "name": "cnx-custom-theme"
                }
            },
            "path": "wikis",
            "state": "enabled"
        }
    ]
}

```
