# What is Touchpoint

Onboarding new employees is a challenge many organizations face. With Connections Touchpoint new users are welcomed to Connections and guided through a few simple steps to prepopulate their profiles and select from a few topics they might be interested in. In return, Touchpoint presents the new user with useful communities and colleagues to follow making the first day at work an engaging experience.

Watch [this](https://www.youtube.com/watch?v=W3U4nkSGoDQ) video for more information

## How to enable Touchpoint for your organisation

To enable Touchpoint for your organisation, you will need to add a new Appregistry extension. For more information on Appregistry, see [here](https://docs.collab.cloud/admin/appreg/).

## Example

This is an axample of such an extension for your reference.

```json
{
    "name": "Touchpoint",
    "title": "Touchpoint",
    "description": "Enable Touchpoint for Organisation Y",
    "services": [
        "Connections"
    ],
    "extensions": [
        {
            "name": "Touchpoint",
            "type": "com.ibm.social.apps.touchpoint.config",
            "payload": {
                "uiEnabled": true,
                "steps": {
                    "paths": {
                        "defaultPath": "welcome,editProfile,findColleagues,followCommunities,profileTags",
                        "icExternalPath": "welcome,editProfile,profileTags",
                        "pagStandalone": "pagStandalone"
                    }
                },
                "privacyAndGuidelines": {
                    "enabled": true,
                    "version": "1.0",
                    "externalLink": "https://somesite.com/yourprivacyguidelines",
                    "internalLink": "https://somesite.local/yourprivacyguidelines"
                },
                "maxPromotedExperts": 3,
                "promotedExperts": "",
                "maxPromotedCommunities": 3,
                "promotedCommunities": "",
                "welcomeVideoUrl": "https://collab.cloud/about"
            },
            "path": "touchpoint"
        }
    ]
}
```

## Fields to modify

The following fields are configurable

- uiEnabled

    Determines whether the Touchpoint onboarding feature is displayed to users when they first log in to Connections.

- defaultPath

    Defines the views that internal users are guided through in the onboarding experience. The default value is welcome,editProfile,profileTags,findColleagues,followCommunities.
    You can choose to leave pages out of the experience by removing them.

- icExternalPath

    Defines the views that external users are guided through in the onboarding experience. The default value is welcome,editProfile,profileTags.
    You can choose to leave pages out of the experience by removing them

- pagStandalone

    Defines the view that users are directed to during a privacy policy and guidelines update. The default value is pagStandalone.

- privacyAndGuidelines.enabled

    Prompts user to accept the privacy policy and guidelines as defined by the following properties in this section.

- privacyAndGuidelines.version

    The version of the privacy policy and guidelines that the user will accept. The default value is 1.0. When the document is updated, increasing this value requires the user to accept again.

- privacyAndGuidelines.externalLink

    The link to the document that contains the privacy policy and guidelines for external users.

- privacyAndGuidelines.internalLink

    The link to the document that contains the privacy policy and guidelines for internal users.

- maxPromotedExperts

    The maximum number of colleagues to be suggested to a user as network contacts. The default value is 3.

- promotedExperts

    A comma-separated list of colleagues within your Connections organization, identified by their user-id.
    You can find the users you want to promote user-id in the Admin App by selecting a user in "My Users"

    ![My Users](/assets/images/admin/touchpoint/user-id.png)

- maxPromotedCommunities

    The maximum number of communities to be suggested to a user. The default value is 3.

- promotedCommunitiesItem

    A comma-separated list of communities, identified by their community-id.
    You can find the Communities you want to promote in the Admin App by selecting a Community in "My Communities"

    ![My Communities](/assets/images/admin/touchpoint/community-id.png)

- welcomeVideoUrl

    Link to a welcome video that is displayed to users.
