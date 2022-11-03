# Customize the UI

## What is possible

- change css settings (color,sizes,...)
- change the logo (see Example 1)
- add widgets or additional functions (advanced javascript customizations)
- add additonal links in the header

## What do you need

- time
- CSS and JavaScript know-how
- Browser with WebDeveloper Exensions
- [Chrome User CSS extension](https://chrome.google.com/webstore/detail/user-css/okpjlejfhacmgjkmknjhadmkdbcldfcb?hl=de)
- coffee or tea

## Where to start

Examples are a good way to start.

## Example 1: Change the logo

You need:

- a logo, size 120px X 35px
- a css file
- a json file
- your OrganizationId, in this example its 5000000001  

#### logo.css

The css changes to change the logo.

```css
.lotusui30 div.lotusBanner .lotusLogo {
    background-image: url('/files/customizer/5000000001/logo/images/logo.png');
    background-repeat: no-repeat;
    background-size: 120px 35px;
    background-position-x: center;
    background-position-y: -1px;
    margin-top: 5px;
    border-radius: 5px;
}

.lotusui30 div.lotusBanner .lotusLogo .lotusAltText {
    color: transparent !important;
}
```

URL's to your images need to start with ***/files/customizer/[OrganizationID]***

#### logo.json

```json
{
        "name": "orga.collab.cloud.custom",
        "title": "orga Logo",
        "description": "ORGA logo",
        "services": [
                "Customizer"
        ],
        "extensions": [
                {
                        "name": "orga.collab.cloud.logo",
                        "type": "com.ibm.customizer.ui",
                        "payload": {
                                "include-files": [
                                        "5000000001/logo/css/logo.css"
                                ]
                        },
                        "cache-headers": {
                           "cache-control": "max-age=0"
                        },
                        "path": "global"
                }
        ]
}
```

This json is used to register the customization in the [app registry](/admin/appreg).
A complete reference for the json file can be found [here](https://github.com/hclcnx/customizer/blob/master/docs/HCLConnectionsCustomizer.md)

The files included in the *include-files* statement need to start with your org id

#### Project Structure

Based on the paths in the *logo.css*, *logo.png* and *logo.json* the files need to be put in the following structure:

![Project Structur](/assets/images/customui/tree.png)

### Result

The logo.png is now next to the Home link.

#### Before: No logo

![Before](/assets/images/customui/original.png)

#### After: ThreeThirds logo

![Result](/assets/images/customui/logo.png)

## Example 2: Change the Header/Banner Color

1. Use the WebDeveloper Tools to find the element in the UI.  
![Lotus Banner](/assets/images/customui/banner1.png)
Change the element.style directly in the WebDeveloper Tools to verify that you have the correct element.  
![Lotus Banner](/assets/images/customui/banner2.png)  
That was the wrong element, the header still has the original color:  
![Lotus Banner](/assets/images/customui/banner3.png)  
Finally got the right element:  
![Lotus Banner](/assets/images/customui/banner4.png)  

1. Extract the right CSS selector
From the screenshot above, we get the first css selector below element.style:

```css
.lotusui30 div.lotusBanner .lotusRightCorner
```

Change things in the WebDeveloper Tools is a quick way to get the right CSS selectors. But changes in the WebDeveloper Tools are lost as soon as you reload the page.

1. Put your all your changes in Google Chromes *User CSS* extension.
![User CSS Extension](/assets/images/customui/user-css.png)  
This extension persists your CSS changes between reloads. Even if you restart your browser.
This allows you to test the changes on all pages. Verify that your changes do not accidentially break stuff.

1. Once you're done with the changes, they need to be deployed.

## Deployment process

We don't have an automated way yet. You need to create a support ticket and attach the zipped code (css, js, images) to it.
Once the files are deployed, the change need to be activated in the appreg.
