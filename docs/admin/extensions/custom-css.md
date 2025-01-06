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

## Example 1: Componay Logo

You need:

- a logo, size 120px X 35px or similiar
- a json file

Steps:

- create a ticket with the logo
- add the following app in the appregistry

```json
{
    "name": "style-customization",
    "title": "style-customization",
    "description": "Set the company logo",
    "services": [
        "Connections"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "connections-custom-config-extension",
            "type": "com.hcl.connections.custom.style",
            "payload": {
                "style-customization": {                    
                    "top-navigation": {
                        "logo": {
                            "position": "left",
                            "order": "1",
                            "src": "/files/customizer/logo/logo.png"
                        }
                    }
                },
                "cacheExpiration": 2000000
            },
            "path": "global",
            "state": "enabled"
        }
    ]
}
```

This json is used to register the customization in the [app registry](/admin/appreg).
A reference and examples are located in [HCL Connections UI components](https://github.com/HCL-TECH-SOFTWARE/connections-ui-docs)

### Result

The new logo is now in the top left corner.

#### Before: HCL Connections logo

![Before](/assets/images/customui/logo-1.png)

#### After: ThreeThirds logo

![Result](/assets/images/customui/logo-2.png)

## Example 2: Change the Header/Banner Color

Example from the HCL Connections UI Documentation

Add this to the style customization app.

```json
"style-customization": {
        "generic": {
            "--color-header": "red",
            "--color-navigation": "yellow",
            "--color-footer": "pink",
            "--color-itmbar": "cyan",
            "--size-itmbar-icon": "30px"
        }
}
```

complete example:

```json
{
    "name": "style-customization",
    "title": "style-customization",
    "description": "Set the company logo",
    "services": [
        "Connections"
    ],
    "state": "enabled",
    "extensions": [
        {
            "name": "connections-custom-config-extension",
            "type": "com.hcl.connections.custom.style",
            "payload": {
                "style-customization": {
                    "generic": {
                        "--color-header": "red",
                        "--color-navigation": "yellow",
                        "--color-footer": "pink",
                        "--color-itmbar": "cyan",
                        "--size-itmbar-icon": "30px"
                    },
                    "top-navigation": {
                        "logo": {
                            "position": "left",
                            "order": "1",
                            "src": "/files/customizer/logo/logo.png"
                        }
                    }
                },
                "cacheExpiration": 2000000
            },
            "path": "global",
            "state": "enabled"
        }
    ]
}
```

### Result: Ugly colors

![Result](/assets/images/customui/custom-colors.png)

## Cache

For testing the cacheExpiration (in seconds) should be low.

For production the cacheExpiration value should be very high. Connections 8 - with the current fixpack 8 - loads the customizations dynamically. If the cache is not set or too low you'll notice that the original UI will load first and your changes will be applied after the page has loaded. This leads to an annoying flicker the first time connections is loaded in your browser.





## Deployment process

We don't have an automated way yet. You need to create a support ticket and attach the zipped code (css, js, images) to it.
Once the files are deployed, the change need to be activated in the appreg.
