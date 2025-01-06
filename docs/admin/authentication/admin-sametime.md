# ![Sametime Logo](/assets/images/HCL_Sametime_Master.png){:height="28"} Sametime Client Authentication

Administraton information for Sametime in the ThreeThirds *collab.cloud* environment.

---

## Client Setup using SAML Single Sign-On (SSO)

If you have Notes Federated Login enabled with ThreeThirds Identity Provider (KeyCloak), you can configure your Users' Sametime clients to login automatically to ThreeThirds Multi-Tenant Sametime chat with no password.

> **Note:** If you are a hybrid customer (you maintain your own Domino mail environment) you will need to have SAML authentication with ThreeThirds enabled. See Federated Identity Authentication with SAML for more information.

---

### Client setup - Manual

To manually set up Sametime embedded client for Notes - configure the following settings:

|General||
|-------|-------|
|Server Community name|Depends where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|

|Login||
|-------|-------|
|Name|Your email address (eg. `jroberts@collab.cloud`)|
|Password|-leave blank-|
|Automatically Log In|-check disabled-|
|Use Token Based Single Sign On|-check enabled-|
|Authentication Server|Depends where your service is located:<br/>`https://loginna.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime` (North America)<br/>`https://logineu.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime` (Europe)|
|Authentication Type|`SAML`|
|Login Type|`browser`|
|Username Tag|`email`|

|Server||
|-------|-------|
|Host Server|Depends where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|
|Server Community Port|`1533`|

|Options||
|-------|-------|
|Use this server for awareness status lookup|-check enabled-|
|Use canonical names for status lookup|-leave blank-|

![ST Manual Setup](/assets/images/screen-shots/sametime/st-set-st-1.png)

---

### Client Setup Using MarvelClient Eclipse

> **Note:** This requires a license for MarvelClient Eclipse. Please contact your ThreeThirds account representative for more information.

To auto-configure settings for Sametime embedded client for all users using MarvelClient Eclipse - create a Sametime Eclipse Action (*ESTC - Sametime*) with the following settings:

|What||
|-------|-------|
|Title|collab.cloud chat|
|Action|`Add/Change`|
|Search-->Host Server|check `full match`<br/>Depending where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|
|Search-->Username|check `match communities for ANY username`|
|Search-->Fix Empty?|check `fix empty communities`<br/>check `make default server community`|

|Community||
|-------|-------|
|Community name|check `Community name = Host Server`|
|UserID (not for login)|`<notes:userdetails_internetaddress>`|

|Login||
|-------|-------|
|User Name|`<notes:userdetails_internetaddress>`|
|Password|-leave blank-|
|Automatically Log In|-check disabled-|
|Use Token Based Single Sign On|-check enabled-|
|Authentication Server|Depends where your service is located:<br/>`https://loginna.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime` (North America)<br/>`https://logineu.collab.cloud/auth/realms/connections-mt/protocol/saml/clients/sametime` (Europe)|
|Authentication Type|`SAML`|
|Login Type|`browser`|
|Username Tag|`email`|

|Server||
|-------|-------|
|Host Server|Depends where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|
|Server Community Port|`1533`|

|Options||
|-------|-------|
|Use this server for awareness status lookup|-check enabled-|
|Use canonical names for status lookup|-leave blank-|

> Use the button `Set all Change Options to ∞` to set theese options to be persistent for all users.

![MarvelClient ST 1](/assets/images/screen-shots/sametime/mc-set-st-1.png)

---

### Client setup using Domino Policy/Settings

To configure initial settings for Sametime embedded client for Notes via Policy Settings - create a Desktop settings document with the following settings:
> **Note:** This may not cover all required settings - some manual configuration may be required.

|Basics||How to Apply This Setting|
|-------|-------|-------|
|HCL Sametime Server|Depends where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|Set Initial Value|

|Preferences-->Sametime||How to Apply This Setting|
|-------|-------|-------|
|Sametime Server|Depends where your service is located:<br/>`chatna.collab.cloud` (North America)<br/>`chateu.collab.cloud` (Europe)|Set Initial Value|
|Log Onto Sametime Using Single Sign-On (SSO)|-set Enabled-|Set Initial Value|

![Desktop Policy ST 1](/assets/images/screen-shots/sametime/pol-set-st-1.png)
![Desktop Policy ST 2](/assets/images/screen-shots/sametime/pol-set-st-2.png)
