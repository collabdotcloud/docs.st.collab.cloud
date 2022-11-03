# Disable Sametime integration

If you want to remove the Sametime integratino that sits bottom right on the page inside connections, please follow this document. It wil show you how to disable it.

![Sametime Integration](../assets/images/extensions/disable-sametime.png)

## Installation

Open the Admin app and goto App Registration. And create a new app.

### Open the code editor

Directly open the code editor.

![Code editor](../assets/images/extensions/appreg-code-editor.png)

### Replace the default content

Remove the default content and paste the JSON below into the editor.

```json
{
        "name": "ThreeThirdsSametimeHide",
        "title": "ThreeThirds hide Sametime",
        "description": "Hide Sametime in Connections",
        "services": [
                "Customizer"
        ],
        "extensions": [
                {
                        "name": "ThreeThirds5_sametime",
                        "type": "com.ibm.customizer.ui",
                        "payload": {
                                "exclude": {
                                        "url": "/files/app/file/|/viewer/|/mobileAdmin/"
                                },
                                "include-files": [
                                        "ThreeThirdsHeaderV2/css/ext_sametime.css",
                                        "ThreeThirdsHeaderV2/js/ext_sametime.js"
                                ]
                        },
                        "path": "global"
                }
        ]
}
```

Once the app is enabled, the Sametime Integration should be gone.
