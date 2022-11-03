# Chat Integration

With the new Chat integration it is possible to add your own chat systems into the ThreeThirds cloud.

[HCL Documentation on Github](https://github.com/hclcnx/global-samples/tree/master/microsoft-teams/Chat%20Integration)

The integration is also possible if your chat system does not use your business email address as the id. Please open a ticket in our support system if you need assistance.
We currently support integrations with Microsoft Teams, Slack and Sametime

If you are integrating with your own Sametime server, it makes sense to remove our integration to our Multi-tenant Sametime server you see bottom right in connections. To do so, see this page:
[Disable Sametime](../../extension-disable-sametime)

## Examples

The following examples show, how to integrate the MS Teams 1:1 chat into our collab.cloud.

### Example 1 : MS Teams in the social Homepage

The first example is the MS Teams integration into the Interesting To Me part of the new Social Homepage.
Hovering over a profile picture, reveals the new chat icon.

![MS Teams - ITM Integration](/assets/images/admin/chat/teams_itm.png)

Add this JSON to your Appregistry:

```json
{
    "name": "MS Teams ITM Integrations",
    "title": "MS Teams ITM Integrations",
    "description": "MS Teams integration actions",
    "services": [
        "ImportantToMe"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "MS Teams Chat and Call Integrations",
            "description": "Enable chat and call from ITM bubbles",
            "translations": {
                "": {
                    "ImportantToMeTeamsIntegrationSIP.label": "Teams call",
                    "ImportantToMeTeamsIntegrationChat.label": "Teams chat",
                    "ImportantToMeTeamsIntegrationWebChat.label": "Teams web chat"
                },
                "en": {
                    "ImportantToMeTeamsIntegrationSIP.label": "Teams call",
                    "ImportantToMeTeamsIntegrationChat.label": "Teams chat",
                    "ImportantToMeTeamsIntegrationWebChat.label": "Teams web chat"
                },
                "fr": {
                    "ImportantToMeTeamsIntegrationSIP.label": "Teams appel",
                    "ImportantToMeTeamsIntegrationChat.label": "Teams bavarder",
                    "ImportantToMeTeamsIntegrationWebChat.label": "Teams bavarder Web"
                }
            },
            "type": "com.ibm.itm.entry.person.default",
            "payload": {
                "actions": [
                    {
                        "type": "sipcall",
                        "label": "%nls:ImportantToMeTeamsIntegrationSIP.label",
                        "icon": {
                            "type": "svg",
                            "data": "data:image/svg+xml;utf8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgNTYuNDUgNTQuOTYiPjxkZWZzPjxzdHlsZT4uY2xzLTEsLmNscy0yLC5jbHMtM3tmaWxsOiM0MTc4YmU7fS5jbHMtMXtjbGlwLXJ1bGU6ZXZlbm9kZDt9LmNscy0ze2ZpbGwtcnVsZTpldmVub2RkO30uY2xzLTR7Y2xpcC1wYXRoOnVybCgjY2xpcC1wYXRoKTt9LmNscy01e2lzb2xhdGlvbjppc29sYXRlO30uY2xzLTZ7Y2xpcC1wYXRoOnVybCgjY2xpcC1wYXRoLTIpO30uY2xzLTd7Y2xpcC1wYXRoOnVybCgjY2xpcC1wYXRoLTMpO308L3N0eWxlPjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg4LjkgOC45MSkiPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTQuNDcsM0ExLjQ5LDEuNDksMCwwLDAsMyw0LjU4Yy42OSw4Ljc5LDUuMDcsMjkuNTgsMzEuMTEsMzEuMDdhMS41MSwxLjUxLDAsMCwwLDEuMTEtLjQsMS41MywxLjUzLDAsMCwwLC40Ni0xLjA5VjI2LjMybC01LjYtMi4yNEwyNS44LDI4LjMxbC0uNzEtLjA5QzEyLjE2LDI2LjYsMTAuNDEsMTMuNjgsMTAuNDEsMTMuNTVsLS4wOS0uNzIsNC4yMi00LjI2TDEyLjMxLDNaTTM0LjE4LDM4LjYyaC0uMjZDNC43NCwzNi45NC41OSwxMi4zMSwwLDQuOEE0LjQ1LDQuNDUsMCwwLDEsNC40NywwSDEyLjNhMywzLDAsMCwxLDIuNzYsMS44N2wyLjI2LDUuNTZhMywzLDAsMCwxLS42NiwzLjIxTDEzLjUsMTMuODNBMTMuOTIsMTMuOTIsMCwwLDAsMjQuNzYsMjUuMTJMMjgsMjEuOTJhMywzLDAsMCwxLDMuMjMtLjZsNS42LDIuMjRhMywzLDAsMCwxLDEuODIsMi43NnY3Ljg0QTQuNDUsNC40NSwwLDAsMSwzNC4xOCwzOC42MloiLz48L2NsaXBQYXRoPjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoLTIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDguOSA4LjkxKSI+PHJlY3QgY2xhc3M9ImNscy0yIiB4PSItOC45IiB5PSItOC45MSIgd2lkdGg9IjU2LjQ1IiBoZWlnaHQ9IjU0Ljk2Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0zIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg4LjkgOC45MSkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iMC4wMSIgd2lkdGg9IjM4LjYyIiBoZWlnaHQ9IjM4LjYyIi8+PC9jbGlwUGF0aD48L2RlZnM+PGcgaWQ9IkxheWVyXzIiIGRhdGEtbmFtZT0iTGF5ZXIgMiI+PGcgaWQ9IkxheWVyXzEtMiIgZGF0YS1uYW1lPSJMYXllciAxIj48cGF0aCBjbGFzcz0iY2xzLTMiIGQ9Ik00LjQ3LDNBMS40OSwxLjQ5LDAsMCwwLDMsNC41OGMuNjksOC43OSw1LjA3LDI5LjU4LDMxLjExLDMxLjA3YTEuNTEsMS41MSwwLDAsMCwxLjExLS40LDEuNTMsMS41MywwLDAsMCwuNDYtMS4wOVYyNi4zMmwtNS42LTIuMjRMMjUuOCwyOC4zMWwtLjcxLS4wOUMxMi4xNiwyNi42LDEwLjQxLDEzLjY4LDEwLjQxLDEzLjU1bC0uMDktLjcyLDQuMjItNC4yNkwxMi4zMSwzWk0zNC4xOCwzOC42MmgtLjI2QzQuNzQsMzYuOTQuNTksMTIuMzEsMCw0LjhBNC40NSw0LjQ1LDAsMCwxLDQuNDcsMEgxMi4zYTMsMywwLDAsMSwyLjc2LDEuODdsMi4yNiw1LjU2YTMsMywwLDAsMS0uNjYsMy4yMUwxMy41LDEzLjgzQTEzLjkyLDEzLjkyLDAsMCwwLDI0Ljc2LDI1LjEyTDI4LDIxLjkyYTMsMywwLDAsMSwzLjIzLS42bDUuNiwyLjI0YTMsMywwLDAsMSwxLjgyLDIuNzZ2Ny44NEE0LjQ1LDQuNDUsMCwwLDEsMzQuMTgsMzguNjJaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg4LjkgOC45MSkiLz48ZyBjbGFzcz0iY2xzLTQiPjxnIGNsYXNzPSJjbHMtNSI+PHJlY3QgY2xhc3M9ImNscy0yIiB3aWR0aD0iNTYuNDUiIGhlaWdodD0iNTQuOTYiLz48ZyBjbGFzcz0iY2xzLTYiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iOC45MSIgeT0iOC45MSIgd2lkdGg9IjM4LjYyIiBoZWlnaHQ9IjM4LjYyIi8+PGcgY2xhc3M9ImNscy03Ij48cmVjdCBjbGFzcz0iY2xzLTIiIHg9IjEuNDciIHk9IjEuNDkiIHdpZHRoPSI1My40OSIgaGVpZ2h0PSI1My40NyIvPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvc3ZnPg"
                        },
                        "url": "sip:${email}",
                        "enabled": false
                    },
                    {
                        "type": "msteams",
                        "label": "%nls:ImportantToMeTeamsIntegrationChat.label",
                        "icon": {
                            "type": "svg",
                            "data": "data:image/svg+xml;utf8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgMjU3LjQ5IDI0My45NCI+PGRlZnM+PHN0eWxlPi5jbHMtMSwuY2xzLTIsLmNscy0ze2ZpbGw6IzQxNzhiZTt9LmNscy0xe2NsaXAtcnVsZTpldmVub2RkO30uY2xzLTN7ZmlsbC1ydWxlOmV2ZW5vZGQ7fS5jbHMtNHtjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgpO30uY2xzLTV7aXNvbGF0aW9uOmlzb2xhdGU7fS5jbHMtNntjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMik7fS5jbHMtN3tjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMyk7fTwvc3R5bGU+PGNsaXBQYXRoIGlkPSJjbGlwLXBhdGgiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMzLjg4IDMzLjg4KSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNDAuNjYsODEuMzFoNjcuNzZWOTQuODZINDAuNjZabTAtNDAuNjVIMTQ5LjA3VjU0LjIxSDQwLjY2Wm02NiwxMzUuNTJMOTQuODYsMTY5LjQsMTIyLDEyMmg0MC42NWExMy41NiwxMy41NiwwLDAsMCwxMy41Ni0xMy41NVYyNy4xYTEzLjU2LDEzLjU2LDAsMCwwLTEzLjU2LTEzLjU1SDI3LjFBMTMuNTUsMTMuNTUsMCwwLDAsMTMuNTUsMjcuMXY4MS4zMkExMy41NSwxMy41NSwwLDAsMCwyNy4xLDEyMmg2MXYxMy41NWgtNjFBMjcuMSwyNy4xLDAsMCwxLDAsMTA4LjQyVjI3LjFBMjcuMSwyNy4xLDAsMCwxLDI3LjEsMEgxNjIuNjJhMjcuMSwyNy4xLDAsMCwxLDI3LjExLDI3LjF2ODEuMzJhMjcuMTEsMjcuMTEsMCwwLDEtMjcuMTEsMjcuMUgxMjkuODNaIi8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iLTMzLjg4IiB5PSItMzMuODgiIHdpZHRoPSIyNTcuNDkiIGhlaWdodD0iMjQzLjk0Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0zIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjE4OS43MyIgaGVpZ2h0PSIxNzYuMTgiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPjxwYXRoIGNsYXNzPSJjbHMtMyIgZD0iTTQwLjY2LDgxLjMxaDY3Ljc2Vjk0Ljg2SDQwLjY2Wm0wLTQwLjY1SDE0OS4wN1Y1NC4yMUg0MC42NlptNjYsMTM1LjUyTDk0Ljg2LDE2OS40LDEyMiwxMjJoNDAuNjVhMTMuNTYsMTMuNTYsMCwwLDAsMTMuNTYtMTMuNTVWMjcuMWExMy41NiwxMy41NiwwLDAsMC0xMy41Ni0xMy41NUgyNy4xQTEzLjU1LDEzLjU1LDAsMCwwLDEzLjU1LDI3LjF2ODEuMzJBMTMuNTUsMTMuNTUsMCwwLDAsMjcuMSwxMjJoNjF2MTMuNTVoLTYxQTI3LjEsMjcuMSwwLDAsMSwwLDEwOC40MlYyNy4xQTI3LjEsMjcuMSwwLDAsMSwyNy4xLDBIMTYyLjYyYTI3LjEsMjcuMSwwLDAsMSwyNy4xMSwyNy4xdjgxLjMyYTI3LjExLDI3LjExLDAsMCwxLTI3LjExLDI3LjFIMTI5LjgzWiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMzMuODggMzMuODgpIi8+PGcgY2xhc3M9ImNscy00Ij48ZyBjbGFzcz0iY2xzLTUiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjI1Ny40OSIgaGVpZ2h0PSIyNDMuOTQiLz48ZyBjbGFzcz0iY2xzLTYiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iMzMuODgiIHk9IjMzLjg4IiB3aWR0aD0iMTg5LjczIiBoZWlnaHQ9IjE3Ni4xOCIvPjxnIGNsYXNzPSJjbHMtNyI+PHJlY3QgY2xhc3M9ImNscy0yIiB3aWR0aD0iMjU3LjQ5IiBoZWlnaHQ9IjI0My45NCIvPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvc3ZnPg"
                        },
                        "url": "msteams:/l/chat/0/0?users=${email}",
                        "enabled": false
                    },
                    {
                        "type": "msteamsweb",
                        "label": "%nls:ImportantToMeTeamsIntegrationWebChat.label",
                        "icon": {
                            "type": "svg",
                            "data": "data:image/svg+xml;utf8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgMjU3LjQ5IDI0My45NCI+PGRlZnM+PHN0eWxlPi5jbHMtMSwuY2xzLTIsLmNscy0ze2ZpbGw6IzQxNzhiZTt9LmNscy0xe2NsaXAtcnVsZTpldmVub2RkO30uY2xzLTN7ZmlsbC1ydWxlOmV2ZW5vZGQ7fS5jbHMtNHtjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgpO30uY2xzLTV7aXNvbGF0aW9uOmlzb2xhdGU7fS5jbHMtNntjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMik7fS5jbHMtN3tjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMyk7fTwvc3R5bGU+PGNsaXBQYXRoIGlkPSJjbGlwLXBhdGgiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMzLjg4IDMzLjg4KSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNDAuNjYsODEuMzFoNjcuNzZWOTQuODZINDAuNjZabTAtNDAuNjVIMTQ5LjA3VjU0LjIxSDQwLjY2Wm02NiwxMzUuNTJMOTQuODYsMTY5LjQsMTIyLDEyMmg0MC42NWExMy41NiwxMy41NiwwLDAsMCwxMy41Ni0xMy41NVYyNy4xYTEzLjU2LDEzLjU2LDAsMCwwLTEzLjU2LTEzLjU1SDI3LjFBMTMuNTUsMTMuNTUsMCwwLDAsMTMuNTUsMjcuMXY4MS4zMkExMy41NSwxMy41NSwwLDAsMCwyNy4xLDEyMmg2MXYxMy41NWgtNjFBMjcuMSwyNy4xLDAsMCwxLDAsMTA4LjQyVjI3LjFBMjcuMSwyNy4xLDAsMCwxLDI3LjEsMEgxNjIuNjJhMjcuMSwyNy4xLDAsMCwxLDI3LjExLDI3LjF2ODEuMzJhMjcuMTEsMjcuMTEsMCwwLDEtMjcuMTEsMjcuMUgxMjkuODNaIi8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iLTMzLjg4IiB5PSItMzMuODgiIHdpZHRoPSIyNTcuNDkiIGhlaWdodD0iMjQzLjk0Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0zIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjE4OS43MyIgaGVpZ2h0PSIxNzYuMTgiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPjxwYXRoIGNsYXNzPSJjbHMtMyIgZD0iTTQwLjY2LDgxLjMxaDY3Ljc2Vjk0Ljg2SDQwLjY2Wm0wLTQwLjY1SDE0OS4wN1Y1NC4yMUg0MC42NlptNjYsMTM1LjUyTDk0Ljg2LDE2OS40LDEyMiwxMjJoNDAuNjVhMTMuNTYsMTMuNTYsMCwwLDAsMTMuNTYtMTMuNTVWMjcuMWExMy41NiwxMy41NiwwLDAsMC0xMy41Ni0xMy41NUgyNy4xQTEzLjU1LDEzLjU1LDAsMCwwLDEzLjU1LDI3LjF2ODEuMzJBMTMuNTUsMTMuNTUsMCwwLDAsMjcuMSwxMjJoNjF2MTMuNTVoLTYxQTI3LjEsMjcuMSwwLDAsMSwwLDEwOC40MlYyNy4xQTI3LjEsMjcuMSwwLDAsMSwyNy4xLDBIMTYyLjYyYTI3LjEsMjcuMSwwLDAsMSwyNy4xMSwyNy4xdjgxLjMyYTI3LjExLDI3LjExLDAsMCwxLTI3LjExLDI3LjFIMTI5LjgzWiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMzMuODggMzMuODgpIi8+PGcgY2xhc3M9ImNscy00Ij48ZyBjbGFzcz0iY2xzLTUiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjI1Ny40OSIgaGVpZ2h0PSIyNDMuOTQiLz48ZyBjbGFzcz0iY2xzLTYiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iMzMuODgiIHk9IjMzLjg4IiB3aWR0aD0iMTg5LjczIiBoZWlnaHQ9IjE3Ni4xOCIvPjxnIGNsYXNzPSJjbHMtNyI+PHJlY3QgY2xhc3M9ImNscy0yIiB3aWR0aD0iMjU3LjQ5IiBoZWlnaHQ9IjI0My45NCIvPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvc3ZnPg"
                        },
                        "url": "https://teams.microsoft.com/l/chat/0/0?users=${email}",
                        "enabled": true
                    }
                ]
            },
            "path": "OrientMe",
            "state": "enabled"
        }
    ]
}
```

It's possible to change or add labels or change the icon if needed.
Enable only one type. In the example above it's *msteamsweb*. Which will generate weblinks for the icons.
If you want to open the teams app directly, just enable the type *msteams* instead.

### Example 2: MS Teams in the Business Card

Similar to the Interesting to Me integration from Example 1, it is also possible to add the chat integration to the businesscard.

```json
{
    "name": "MS Teams Chat Integrations",
    "title": "MS Teams Chat Integrations",
    "description": "MS Teams chat for bizcard and profiles",
    "services": [
        "Connections"
    ],
    "extensions": [
        {
            "ext_id": "com.msteams.v3.bizcard.chat",
            "name": "MS Teams Chat Integration",
            "title": "MS Teams Chat Integration",
            "description": "Enable 1-1 chat from profile and bizcard",
            "translations": {
                "": {
                    "TeamsBizcardChat-Connections_text": "Chat"
                },
                "fr": {
                    "TeamsBizcardChat-Connections_text": "Bavarder"
                },
                "en": {
                    "TeamsBizcardChat-Connections_text": "Chat"
                }
            },
            "type": "com.hcl.appreg.ext.templatedLink",
            "payload": {
                "url": "",
                "text": "%nls:TeamsBizcardChat-Connections_text",
                "href": "https://teams.microsoft.com/l/chat/0/0?users=${email}",
                "locator": "chat",
                "target": "TeamsChat"
            },
            "object": "com.hcl.appreg.object.person",
            "state": "enabled"
        }
    ]
}

```

### Example 3 : Slack in the social Homepage and Business Card

Just like the previous example for MS Teams integration above, this example will insert a similar integration into the Interesting To Me part of the new Social Homepage but for Slack.
Hovering over a profile picture, reveals the new chat icon.
It will also integrate into the business card of a user

Add this JSON to your Appregistry:

```json

{
    "name": "Slack Chat Integration",
    "title": "Slack Chat Integration",
    "description": "Slack chat for profiles",
    "services": [
        "Customizer"
    ],
    "state": "disabled",
    "extensions": [
        {
            "name": "slack",
            "description": "xoxp-1779396678037-1806310693792-1794995783287-7fef9bbed944fbeb0cb69f5cfc4b1eae",
            "type": "com.ibm.customizer.ui",
            "payload": {
                "include-files": [
                    "extensions/slackChat/slackChat.css",
                    "extensions/slackChat/slackChat.js"
                ],
                "cache-headers": {
                    "cache-control": "max-age=0"
                }
            },
            "path": "global",
            "state": "enabled"
        }
    ]
}

```

### Example 5 : Sametime in the social Homepage

Just like the previous example for MS Teams integration above, this example will insert a similar integration into the Interesting To Me part of the new Social Homepage but for Sametime.
Hovering over a profile picture, reveals the new chat icon.

```json

{
    "name": "Sametime ITM Integrations",
    "title": "Sametime ITM Integrations",
    "description": "Sametime integration actions",
    "services": [
        "ImportantToMe"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "Sametime Chat Integrations",
            "description": "Enable chat from ITM bubbles",
            "translations": {
                "": {
                    "ImportantToMeSametimeIntegrationWebChat.label": "Sametime web chat"
                },
                "en": {
                    "ImportantToMeSametimeIntegrationWebChat.label": "Sametime web chat"
                },
                "fr": {
                    "ImportantToMeSametimeIntegrationWebChat.label": "Sametime bavarder Web"
                }
            },
            "type": "com.ibm.itm.entry.person.default",
            "payload": {
                "actions": [
                    {
                        "type": "sametimeweb",
                        "label": "%nls:ImportantToMeSametimeIntegrationWebChat.label",
                        "icon": {
                            "type": "svg",
                            "data": "data:image/svg+xml;utf8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgMjU3LjQ5IDI0My45NCI+PGRlZnM+PHN0eWxlPi5jbHMtMSwuY2xzLTIsLmNscy0ze2ZpbGw6IzQxNzhiZTt9LmNscy0xe2NsaXAtcnVsZTpldmVub2RkO30uY2xzLTN7ZmlsbC1ydWxlOmV2ZW5vZGQ7fS5jbHMtNHtjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgpO30uY2xzLTV7aXNvbGF0aW9uOmlzb2xhdGU7fS5jbHMtNntjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMik7fS5jbHMtN3tjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMyk7fTwvc3R5bGU+PGNsaXBQYXRoIGlkPSJjbGlwLXBhdGgiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMzLjg4IDMzLjg4KSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNDAuNjYsODEuMzFoNjcuNzZWOTQuODZINDAuNjZabTAtNDAuNjVIMTQ5LjA3VjU0LjIxSDQwLjY2Wm02NiwxMzUuNTJMOTQuODYsMTY5LjQsMTIyLDEyMmg0MC42NWExMy41NiwxMy41NiwwLDAsMCwxMy41Ni0xMy41NVYyNy4xYTEzLjU2LDEzLjU2LDAsMCwwLTEzLjU2LTEzLjU1SDI3LjFBMTMuNTUsMTMuNTUsMCwwLDAsMTMuNTUsMjcuMXY4MS4zMkExMy41NSwxMy41NSwwLDAsMCwyNy4xLDEyMmg2MXYxMy41NWgtNjFBMjcuMSwyNy4xLDAsMCwxLDAsMTA4LjQyVjI3LjFBMjcuMSwyNy4xLDAsMCwxLDI3LjEsMEgxNjIuNjJhMjcuMSwyNy4xLDAsMCwxLDI3LjExLDI3LjF2ODEuMzJhMjcuMTEsMjcuMTEsMCwwLDEtMjcuMTEsMjcuMUgxMjkuODNaIi8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iLTMzLjg4IiB5PSItMzMuODgiIHdpZHRoPSIyNTcuNDkiIGhlaWdodD0iMjQzLjk0Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImNsaXAtcGF0aC0zIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMy44OCAzMy44OCkiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjE4OS43MyIgaGVpZ2h0PSIxNzYuMTgiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPjxwYXRoIGNsYXNzPSJjbHMtMyIgZD0iTTQwLjY2LDgxLjMxaDY3Ljc2Vjk0Ljg2SDQwLjY2Wm0wLTQwLjY1SDE0OS4wN1Y1NC4yMUg0MC42NlptNjYsMTM1LjUyTDk0Ljg2LDE2OS40LDEyMiwxMjJoNDAuNjVhMTMuNTYsMTMuNTYsMCwwLDAsMTMuNTYtMTMuNTVWMjcuMWExMy41NiwxMy41NiwwLDAsMC0xMy41Ni0xMy41NUgyNy4xQTEzLjU1LDEzLjU1LDAsMCwwLDEzLjU1LDI3LjF2ODEuMzJBMTMuNTUsMTMuNTUsMCwwLDAsMjcuMSwxMjJoNjF2MTMuNTVoLTYxQTI3LjEsMjcuMSwwLDAsMSwwLDEwOC40MlYyNy4xQTI3LjEsMjcuMSwwLDAsMSwyNy4xLDBIMTYyLjYyYTI3LjEsMjcuMSwwLDAsMSwyNy4xMSwyNy4xdjgxLjMyYTI3LjExLDI3LjExLDAsMCwxLTI3LjExLDI3LjFIMTI5LjgzWiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMzMuODggMzMuODgpIi8+PGcgY2xhc3M9ImNscy00Ij48ZyBjbGFzcz0iY2xzLTUiPjxyZWN0IGNsYXNzPSJjbHMtMiIgd2lkdGg9IjI1Ny40OSIgaGVpZ2h0PSIyNDMuOTQiLz48ZyBjbGFzcz0iY2xzLTYiPjxyZWN0IGNsYXNzPSJjbHMtMiIgeD0iMzMuODgiIHk9IjMzLjg4IiB3aWR0aD0iMTg5LjczIiBoZWlnaHQ9IjE3Ni4xOCIvPjxnIGNsYXNzPSJjbHMtNyI+PHJlY3QgY2xhc3M9ImNscy0yIiB3aWR0aD0iMjU3LjQ5IiBoZWlnaHQ9IjI0My45NCIvPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvc3ZnPg"
                        },
                        "url": "https://webchat.testna.collab.cloud/chat/conversations/${email}",
                        "enabled": true
                    }
                ]
            },
            "path": "OrientMe",
            "state": "enabled"
        }
    ]
}

```

### Example 6: Sametime in the Business Card

Similar to the Interesting to Me integration from Example 1, it is also possible to add the chat integration for Sametime into the businesscard.

```json

{
    "name": "HCL Sametime Chat Integration",
    "title": "HCL Sametime Chat Integration",
    "description": "HCL Sametime chat for bizcard and profiles",
    "services": [
        "Connections"
    ],
    "extensions": [
        {
            "ext_id": "com.hclsametime.v3.bizcard.chat",
            "name": "HCL Sametime Chat Integration",
            "title": "HCL Sametime Chat Integration",
            "description": "Enable 1-1 chat from profile and bizcard",
            "translations": {
                "": {
                    "SametimeBizcardChat-Connections_text": "Chat"
                },
                "fr": {
                    "SametimeBizcardChat-Connections_text": "Bavarder"
                },
                "en": {
                    "SametimeBizcardChat-Connections_text": "Chat"
                }
            },
            "type": "com.hcl.appreg.ext.templatedLink",
            "payload": {
                "url": "",
                "text": "%nls:SametimeBizcardChat-Connections_text",
                "href": "https://webchat.testna.collab.cloud/chat/conversations/${email}",
                "locator": "chat",
                "target": "SametimeChat"
            },
            "object": "com.hcl.appreg.object.person",
            "state": "enabled"
        }
    ]
}

```
