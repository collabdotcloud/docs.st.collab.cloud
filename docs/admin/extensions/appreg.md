# Connections Application Register (AppReg)

## Where to find

Organization Administrators (orgadmin) can add custom Extensions via the admin portal. As an orgadmin you will have an icon in connections' left navigation bar.

![appreg link](/assets/images/extensions/admin-app-location.png)

This will open the adminapp.
![appreg](/assets/images/admin/appreg/appreg.png)

## What is it for

With the appregistry you're able to enable or disable customizations.

There is a "ThreeThirds v80" app already there. This integrates our changes into connections.

- link to admin app
- integration with huddo boards

**Disabling or deleting this app is not recommended.**

The second app is the "Connections Tours Config". Which disables the initial Connection Tour.

The official HCL documentation to the appregistry can be found [here](https://github.com/hclcnxdev/customizer/blob/master/docs/HCLConnectionsCustomizer.md){target="_blank"} and examples are on the [HCL github](https://github.com/hclcnxdev){target="_blank"} page.

## What is possible

Anything that can be done with javascript and css on the connections pages.

- add items to the header like links to other apps
- hide or change the images and logos
- add a link to your online meeting tool
- see the documentation for more samples

## Limitations

There's no automatic way to upload the additional files - JavaScript and/or CSS - for your extension.

Please create a ticket for that. So we're able to upload them to the right position and provide you with the correct paths for the appregistry entry.

## Common Issues with the editor

- An app (json) can't be saved if the json is not valid => will be indicated in the UI. Use a lint tool like [Jsonlint.com](https://jsonlint.com){target="_blank"} to verify the json syntax.

- An app can't be saved if some parts are not recognized. No indication here. It will just not save.

- It's a good practice to reload the appregistry page after each save.

- Write the json in your favorite editor and copy&paste it into the appreg editor.
