# Connections API

This documentation describes how you can access the Connections API using our environment.

For the documentation for the Connections API please refer to the official Connections API documentation:

[HCL Connections API Documentation](https://ds-infolib.hcltechsw.com/ldd/lcwiki.nsf)

We currently use version 6.5 on our Multi-Tenant environment.

## How do I get access to the API?

The APIs support only Oauth/OIDC access.
Please open a support ticket if you want to use the API's.
You will then be provided with your Client-ID and Client-Secret.

**Important:** Please keep your Client-Secret a secret and only give it to people that need it and store it safely.

To reach us, please use [support.collab.cloud](https://support.collab.cloud) and open a new ticket. Open a request with a subject and description that lets us know that you need access to the API.

We will then provide you with your **Client-ID** and **Client-Secret**.

### Future plans

We know this work-flow isn't ideal, and we are building a better system to manage your API clients and client-secrets right inside the Admin-App.

See our roadmap for more information.

## Service Accounts

We currently don't have dedicated service accounts. However, every normal user can function as a service account and authenticate programmatically. Meaning, you can create a new separate user, dedicated to call the Connections APIs. It needs the same subscriptions as a normal Connections user.

## Authentication & Usage

The [Connections API](https://ds-infolib.hcltechsw.com/ldd/lcwiki.nsf) is the same as on every Connections environment. However, the authentication to Connection is different. We use OAuth 2.0 which is more modern and secure.

After successful authentication, the API calls are exactly as in an On-Prem environment.

### Using OAuth 2.0 for Connections APIs

HCL Connections has APIs that support OAuth 2.0 but also some that don't and only support "Basic Authentication".

We use OAuth 2.0 for all authentication, and basic authentication is not supported.

You can still use the Basic-Auth APIs on our Connections environment like this:

![API Authentication flow](/assets/images/extensions/api_auth_flow.png)

This flow explains how to authenticate to call any API from Connections. If you want to perform calls to HCL Connections API endpoints that require basic authentication, you will need to follow this authentication flow.

If you instead only want to use an OAuth 2.0 capable API endpoints, you can skip step 2 in this flow and simply provide the bearer token.

Basic only API endpoints need to be called with the Ltpa2Token Cookie. If you have the Cookie in your request headers, you won't need to supply credentials in your request. The token in the cookie proves your identity.

### Authentication Manual

#### 1. Make an authentication request to the OIDC Endpoint

Call our Open-ID Connect **token endpoint**. Please, use the correct one for your data centre. [Which one?](#open-id-connect-endpoints)

Use the following OAuth 2.0 config:

- Grant-Type: Client-Credentials
- Username: *Your users' username (E-mail)*
- Password: *Your users' password*
- Client-ID: *Your client ID* - [What is that?](#how-do-i-get-access-to-the-api)
- Client-Secret: *Your client secret* - [Where do I find it?](#how-do-i-get-access-to-the-api)

---

**Example:**

We will use the *EU endpoint* in this example.

- Request:

        POST https://logineu.collab.cloud/auth/realms/connections-mt/protocol/openid-connect/token

    Body: (Content-Type: `application/x-www-form-urlencoded`)

        grant_type:password
        username:*Your username (E-mail)*
        password:*Your user's password*
        client_id:*Your Client-ID*
        client_secret:*Your Client-Secret*
        scope:profile

- Response: (Content-Type: `application/json`)

        {
            "access_token": "... your access token ...",
            "expires_in": 42900,
            "refresh_expires_in": 43200,
            "refresh_token": "... your refresh token ...",
            "token_type": "bearer",
            "not-before-policy": 0,
            "session_state": "... you session state ...",
            "scope": "email connectionsmt profile"
        }

You will then be able to use the access token as a bearer token in the next requests until it expires. When it expires, you will need to perform this request again and get a new token.

#### 2. Call Connections OAuth Endpoint for the LTPA Token

This step is only needed if you want to call a Basic API afterwards. To be able to use the Basic APIs you need the LTPA Token from Connections in its Cookie.

And to get this cookie you need to call an OAuth 2.0 capable endpoint.

Perform a GET request to `/files/oauth/api/nonce` with the Access token from the previous request as the bearer token in the Authorization header.

We are not interested in the body that is returned. It will be an arbitrary Connections ID. We only want the cookie.

---

**Example:**

Please make sure to put your tenant into the subdomain.

- Request:

        GET https://YOUR_TENANT.collab.cloud/files/oauth/api/nonce

    Headers:

        "Authorization": "Bearer <Your token>"

- Response:

    Cookies:

    | Name       | Value                     | Domain       | Path | Expires | HttpOnly | Secure |
    | :--------- | :------------------------ | :----------- | :--- | :------ | :------- | :----- |
    | LtpaToken2 | ***\*Your LTPA Token\**** | collab.cloud | /    | Session | true     | true   |

    The response will be an ID from Connections which we are not interested in. We are only making this request to get the Cookie with the Ltpa2Token.

    The Cookie will be in the response header.

#### 3. Use the Connections API with the LTPA token

If you are using a proper application or library that can handle cookies, the cookie will now automatically be set for the following request to that domain.

As long as your session is active and the cookie is set in the request, you will now be able to call any Connections API you want to.

---

**Example:**

In this example, we are searching for users named Bob.

We use the Profiles search API, as documented [here](https://ds_infolib.hcltechsw.com/ldd/lcwiki.nsf/xpAPIViewer.xsp?lookupName=HCL+Connections+6.5+API+Documentation#action=openDocument&res_title=Searching_Profiles_programmatically_65&content=apicontent).

- Request

        GET https://YOUR_TENANT.collab.cloud/profiles/atom/search.do?name=Bob

    Headers:

        "Cookie": "LtpaToken2=<Your LTPA token>"

- Response (Content-Type: `application/xml`)

        <?xml version="1.0" encoding="UTF-8"?>
        ...
        Here come the Bob's
        ...

### Open-ID Connect Endpoints

There are different endpoint URLs for every data center.

#### Europe

- Authentication endpoint:

        https://logineu.collab.cloud/auth/realms/connections-mt/protocol/openid-connect/auth

- Token endpoint:

        https://logineu.collab.cloud/auth/realms/connections-mt/protocol/openid-connect/token

- Endpoint Configuration:

    [EU Open-ID configuration](https://logineu.collab.cloud/auth/realms/connections-mt/.well-known/openid-configuration)

        https://logineu.collab.cloud/auth/realms/connections-mt/.well-known/openid-configuration

    To see the supported features of the Enpoint and the current configuration, take a look at the JSON response of this URL.

#### North America

- Authentication endpoint:

        https://loginna.collab.cloud/auth/realms/connections-mt/protocol/openid-connect/auth

- Token endpoint:

        https://loginna.collab.cloud/auth/realms/connections-mt/protocol/openid-connect/token

- Endpoint Configuration:

    [US Open-ID configuration](https://loginna.collab.cloud/auth/realms/connections-mt/.well-known/openid-configuration)

        https://loginna.collab.cloud/auth/realms/connections-mt/.well-known/openid-configuration

    To see the supported features of the Enpoint and the current configuration, take a look at the JSON response of this URL.

### Customers with SSO

If your tenant is enabled for Single Sign On (SSO) with your tenant's own IDP and you need to do scheduled updates - not in the users browser session - then you need an admin user and it's credentials need to be set in our directory.

1. create a user in our admin portal and assing him the admin role
2. test the login to your tenants connections site with this admin user
3. goto [EU](https://logineu.collab.cloud) or [US](https://loginna.collab.cloud) page and reset the password there.

## Samples

Both examples use the password grant flow. This flow is used, as both examples run directly on server/client.

### CURL

This example uses CURL to access the Connections Files API. It will get 10 latest files and stores it in myuserlibrary.xml
Replace the URL with your connections collab cloud url.

```sh
#!/bin/sh
# Tested on UBUNTU 20.04
CLIENT_SECRET=<CLIENT-SECRET>
CLIENT_ID=<CLIENT-ID>
USERNAME=<EMAIL-ADDRESS>
# Make sure that the password is properly encoded
# + -> %2B
PASSWORD=<PASSWORD>

URL=https://threethirdseu.collab.cloud
TOKEN_ENDPOINT=https://logineu.collab.cloud

DATA="grant_type=password&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&password=$PASSWORD&username=$USERNAME"
curl -o req1.json -k -H "Content-Type: application/x-www-form-urlencoded" --data $DATA $TOKEN_ENDPOINT/auth/realms/connections-mt/protocol/openid-connect/token -X POST

TOKEN=`jq '.access_token' req1.json`
TOKEN2=${TOKEN%\"}
TOKEN2=${TOKEN2#\"}
NONCE=`curl -k -H "Authorization: Bearer $TOKEN2" $URL/files/oauth/api/nonce -X GET -c cookies.txt`
curl -o myuserlibrary.xml -b cookies.txt -k $URL/files/basic/api/myuserlibrary/feed?includePath=true&includeQuota=true&ps=10&sortBy=updated 

```

### Lotusscript

Sample Implementation using Lotusscript can be found [here](/assets/files/api-connect-3t.nsf).
There's the getProfileAgent which needs to be adjusted to your environment.
In the sub sessionInfo.new set your client-id, client-secret, username and password. Adjust the values for endpoint and user_info endpoint to one of our datacenters.

Make sure that the password is properly encoded ( + -> %2B, Space %20)
