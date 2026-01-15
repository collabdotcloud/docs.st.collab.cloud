# Navbar

The Appregistry already contains the *ThreeThirds V80* app. Which adds custom buttons to the left navigation bar.
The full documentation can be found on [HCL Connections UI docs](https://github.com/HCL-TECH-SOFTWARE/connections-ui-docs/blob/master/main-areas/side-navigation/README.md){target="_blank"}
Having a closer look at the "type":"com.hcl.connections.nav" entry:

```json
{
            "name": "Tasks Nav Button",
            "translations": {
                "": {
                    "nav.name.boards-tasks-nav": "Tasks"
                }
            },
            "type": "com.hcl.connections.nav",
            "payload": {
                "customEntries": [
                    {
                        "id": "boards-tasks-nav2",
                        "name": "Activities Plus",
                        "action": "add",
                        "link": "https://boards.huddo.com/auth/collab/0000000001",
                        "icon": "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' xml:space='preserve'%3E%3Cpath d='M4.5 3h7.3v4.6H4.5zm7.9 0h7.3v4.6h-7.3zm-.6 11.4H4.4V8.9h7.4v5.5zM4.9 14h6.5V9.3H4.9V14zm14.8.4h-7.2V8.9h7.2v5.5zm-6.8-.4h6.3V9.3h-6.3V14zm6.8 7.1h-7.2v-5.5h7.2v5.5zm-6.8-.4h6.3v-4.6h-6.3v4.6z' style='fill:%23ffffff'/%3E%3C/svg%3E",
                        "order": 7000,                        
                        "location": "main"
                    },
                    {
                        "id": "activities",
                        "name": "Logout",
                        "action": "remove",
                        "new_window": true
                    },
                    {
                        "id": "admin-app",
                        "name": "Admin App",
                        "link": "https://admin-threethirdseu.collab.cloud",
                        "action": "add",
                        "new_window": true,
                        "icon": "https://threethirdseu.collab.cloud/files/customizer/threethirdsv80/three-thirds-admin-icon.png",
                        "order": "500",                        
                        "location": "bottom",
                        "requiredRoles": [
                            "admin"
                        ]
                    },
                    {
                        "id": "boards-tasks-nav",
                        "name": "%nls:nav.name.boards-tasks-nav",
                        "action": "add",
                        "icon": "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' xml:space='preserve'%3E%3Cpath d='M4.5 3h7.3v4.6H4.5zm7.9 0h7.3v4.6h-7.3zm-.6 11.4H4.4V8.9h7.4v5.5zM4.9 14h6.5V9.3H4.9V14zm14.8.4h-7.2V8.9h7.2v5.5zm-6.8-.4h6.3V9.3h-6.3V14zm6.8 7.1h-7.2v-5.5h7.2v5.5zm-6.8-.4h6.3v-4.6h-6.3v4.6z' style='fill:%23ffffff'/%3E%3C/svg%3E",
                        "order": 500,                        
                        "location": "bottom"
                    }
                ],
                "cacheExpiration": 20000
            },
            "path": "global",
            "state": "enabled"
        }

```

**Limitations:** The navbar supports only 2 levels.

Example entry with sub-menu, which is not visible for guest users.

```json
 "customEntries": [
                    {
                        "id": "mainentry",
                        "name": "Tools",
                        "action": "add",
                        "icon": "data:image/svg+xml;base64,PHN2ZyBpZD0iU3ZnanNTdmcxMDAxIiB3aWR0aD0iMjg4IiBoZWlnaHQ9IjI4OCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB2ZXJzaW9uPSIxLjEiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWxuczpzdmdqcz0iaHR0cDovL3N2Z2pzLmNvbS9zdmdqcyI+PGRlZnMgaWQ9IlN2Z2pzRGVmczEwMDIiPjwvZGVmcz48ZyBpZD0iU3ZnanNHMTAwOCIgdHJhbnNmb3JtPSJtYXRyaXgoMC45MTY3LDAsMCwwLjkxNjcsMTEuOTk1MjAwMDAwMDAwMDExLDExLjk5NTIwMDAwMDAwMDAxMSkiPjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjg4IiBoZWlnaHQ9IjI4OCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMzIgMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiI+PGNpcmNsZSBjeD0iOCIgY3k9IjE2IiByPSIyIiBmaWxsPSIjZmZmZmZmIiBjbGFzcz0iY29sb3IwMDAgc3ZnU2hhcGUiPjwvY2lyY2xlPjxjaXJjbGUgY3g9IjE2IiBjeT0iMTYiIHI9IjIiIGZpbGw9IiNmZmZmZmYiIGNsYXNzPSJjb2xvcjAwMCBzdmdTaGFwZSI+PC9jaXJjbGU+PGNpcmNsZSBjeD0iMjQiIGN5PSIxNiIgcj0iMiIgZmlsbD0iI2ZmZmZmZiIgY2xhc3M9ImNvbG9yMDAwIHN2Z1NoYXBlIj48L2NpcmNsZT48cmVjdCB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIGZpbGw9Im5vbmUiPjwvcmVjdD48L3N2Zz48L2c+PC9zdmc+",
                        "order": 7000,
                        "forbiddenRoles": [
                            "external"
                        ],
                        "submenu": [
                            {
                                "id": "filesilo",
                                "name": "File Silo",
                                "action": "add",
                                "link": "https://filesilo.collab.cloud",
                                "icon": "/files/customizer/menu/file-transfer.svg",
                                "order": 7110,
                                "new_window": true
                            },
                            {
                                "id": "reporting",
                                "name": "Reporting",
                                "action": "add",
                                "link": "https://apps.collab.cloud/reporting.nsf",
                                "icon": "/files/customizer/menu/reporting.svg",
                                "order": 7120,
                                "forbiddenRoles": [
                                    "external"
                                ],
                                "new_window": true
                            }
                        ]}]
```

> *Note*: The "type":"com.hcl.connections.nav" may only be enabled once. If more than 1 is enabled, the result may be unexpected.
