# ModelRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**property_mappings** | **string[]** |  | [optional]
**property_mappings_group** | **string[]** | Property mappings used for group creation/updating. | [optional]
**delegated_subject** | **string** |  |
**credentials** | **array<string,object>** |  |
**scopes** | **string** |  | [optional]
**exclude_users_service_account** | **bool** |  | [optional]
**filter_group** | **string** |  | [optional]
**user_delete_action** | [**\AuthentikApi\Old\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**group_delete_action** | [**\AuthentikApi\Old\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**default_group_email_domain** | **string** |  |
**sync_page_size** | **int** | Controls the number of objects synced in a single task | [optional]
**sync_page_timeout** | **string** | Timeout for synchronization of a single page | [optional]
**dry_run** | **bool** | When enabled, provider will not modify or create objects in the remote system. | [optional]
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**base_dn** | **string** | DN under which objects are accessible. | [optional]
**certificate** | **string** |  | [optional]
**tls_server_name** | **string** |  | [optional]
**uid_start_number** | **int** | The start for uidNumbers, this number is added to the user.pk to make sure that the numbers aren&#39;t too low for POSIX users. Default is 2000 to ensure that we don&#39;t collide with local users uidNumber | [optional]
**gid_start_number** | **int** | The start for gidNumbers, this number is added to a number generated from the group.pk to make sure that the numbers aren&#39;t too low for POSIX groups. Default is 4000 to ensure that we don&#39;t collide with local groups or users primary groups gidNumber | [optional]
**search_mode** | [**\AuthentikApi\Old\Model\LDAPAPIAccessMode**](LDAPAPIAccessMode.md) |  | [optional]
**bind_mode** | [**\AuthentikApi\Old\Model\LDAPAPIAccessMode**](LDAPAPIAccessMode.md) |  | [optional]
**mfa_support** | **bool** | When enabled, code-based multi-factor authentication can be used by appending a semicolon and the TOTP code to the password. This should only be enabled if all users that will bind to this provider have a TOTP device configured, as otherwise a password may incorrectly be rejected if it contains a semicolon. | [optional]
**client_id** | **string** |  |
**client_secret** | **string** |  |
**tenant_id** | **string** |  |
**client_type** | [**\AuthentikApi\Old\Model\ClientTypeEnum**](ClientTypeEnum.md) | Confidential clients are capable of maintaining the confidentiality of their credentials. Public clients are incapable | [optional]
**access_code_validity** | **string** | Access codes not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**access_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**refresh_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**refresh_token_threshold** | **string** | When refreshing a token, if the refresh token is valid for less than this duration, it will be renewed. When set to seconds&#x3D;0, token will always be renewed. (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**include_claims_in_id_token** | **bool** | Include User claims from scopes in the id_token, for applications that don&#39;t access the userinfo endpoint. | [optional]
**signing_key** | **string** | Key used to sign the SSF Events. |
**encryption_key** | **string** | Key used to encrypt the tokens. When set, tokens will be encrypted and returned as JWEs. | [optional]
**redirect_uris** | [**\AuthentikApi\Old\Model\RedirectURIRequest[]**](RedirectURIRequest.md) |  |
**logout_uri** | **string** |  | [optional]
**logout_method** | [**\AuthentikApi\Old\Model\SAMLLogoutMethods**](SAMLLogoutMethods.md) | Method to use for logout. Front-channel iframe loads all logout URLs simultaneously in hidden iframes. Front-channel native uses your active browser tab to send post requests and redirect to providers. Back-channel sends logout requests directly from the server without user interaction (requires POST SLS binding). | [optional]
**sub_mode** | [**\AuthentikApi\Old\Model\SubModeEnum**](SubModeEnum.md) | Configure what data should be used as unique User Identifier. For most cases, the default should be fine. | [optional]
**issuer_mode** | [**\AuthentikApi\Old\Model\IssuerModeEnum**](IssuerModeEnum.md) | Configure how the issuer field of the ID Token should be filled. | [optional]
**jwt_federation_sources** | **string[]** |  | [optional]
**jwt_federation_providers** | **int[]** |  | [optional]
**internal_host** | **string** |  | [optional]
**external_host** | **string** |  |
**internal_host_ssl_validation** | **bool** | Validate SSL Certificates of upstream servers | [optional]
**skip_path_regex** | **string** | Regular expressions for which authentication is not required. Each new line is interpreted as a new Regular Expression. | [optional]
**basic_auth_enabled** | **bool** | Set a custom HTTP-Basic Authentication header based on values from authentik. | [optional]
**basic_auth_password_attribute** | **string** | User/Group Attribute used for the password part of the HTTP-Basic Header. | [optional]
**basic_auth_user_attribute** | **string** | User/Group Attribute used for the user part of the HTTP-Basic Header. If not set, the user&#39;s Email address is used. | [optional]
**mode** | [**\AuthentikApi\Old\Model\ProxyMode**](ProxyMode.md) | Enable support for forwardAuth in traefik and nginx auth_request. Exclusive with internal_host. | [optional]
**intercept_header_auth** | **bool** | When enabled, this provider will intercept the authorization header and authenticate requests based on its value. | [optional]
**cookie_domain** | **string** |  | [optional]
**settings** | **array<string,object>** |  | [optional]
**connection_expiry** | **string** | Determines how long a session lasts. Default of 0 means that the sessions lasts until the browser is closed. (Format: hours&#x3D;-1;minutes&#x3D;-2;seconds&#x3D;-3) | [optional]
**delete_token_on_disconnect** | **bool** | When set to true, connection tokens will be deleted upon disconnect. | [optional]
**client_networks** | **string** | List of CIDRs (comma-separated) that clients can connect from. A more specific CIDR will match before a looser one. Clients connecting from a non-specified CIDR will be dropped. | [optional]
**shared_secret** | **string** | Shared secret between clients and server to hash packets. | [optional]
**acs_url** | **string** |  |
**sls_url** | **string** | Single Logout Service URL where the logout response should be sent. | [optional]
**audience** | **string** | Value of the audience restriction field of the assertion. When left empty, no audience restriction will be added. | [optional]
**issuer** | **string** | Also known as EntityID | [optional]
**assertion_valid_not_before** | **string** | Assertion valid not before current time + this value (Format: hours&#x3D;-1;minutes&#x3D;-2;seconds&#x3D;-3). | [optional]
**assertion_valid_not_on_or_after** | **string** | Assertion not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**session_valid_not_on_or_after** | **string** | Session not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**name_id_mapping** | **string** | Configure how the NameID value will be created. When left empty, the NameIDPolicy of the incoming request will be considered | [optional]
**authn_context_class_ref_mapping** | **string** | Configure how the AuthnContextClassRef value will be created. When left empty, the AuthnContextClassRef will be set based on which authentication methods the user used to authenticate. | [optional]
**digest_algorithm** | [**\AuthentikApi\Old\Model\DigestAlgorithmEnum**](DigestAlgorithmEnum.md) |  | [optional]
**signature_algorithm** | [**\AuthentikApi\Old\Model\SignatureAlgorithmEnum**](SignatureAlgorithmEnum.md) |  | [optional]
**signing_kp** | **string** | Keypair used to sign outgoing Responses going to the Service Provider. | [optional]
**verification_kp** | **string** | When selected, incoming assertion&#39;s Signatures will be validated against this certificate. To allow unsigned Requests, leave on default. | [optional]
**encryption_kp** | **string** | When selected, incoming assertions are encrypted by the IdP using the public key of the encryption keypair. The assertion is decrypted by the SP using the the private key. | [optional]
**sign_assertion** | **bool** |  | [optional]
**sign_response** | **bool** |  | [optional]
**sign_logout_request** | **bool** |  | [optional]
**sp_binding** | [**\AuthentikApi\Old\Model\SAMLBindingsEnum**](SAMLBindingsEnum.md) | This determines how authentik sends the response back to the Service Provider. | [optional]
**sls_binding** | [**\AuthentikApi\Old\Model\SAMLBindingsEnum**](SAMLBindingsEnum.md) | This determines how authentik sends the logout response back to the Service Provider. | [optional]
**default_relay_state** | **string** | Default relay_state value for IDP-initiated logins | [optional]
**default_name_id_policy** | [**\AuthentikApi\Old\Model\SAMLNameIDPolicyEnum**](SAMLNameIDPolicyEnum.md) |  | [optional]
**url** | **string** | Base URL to SCIM requests, usually ends in /v2 |
**verify_certificates** | **bool** |  | [optional]
**token** | **string** | Authentication token | [optional]
**auth_mode** | [**\AuthentikApi\Old\Model\SCIMAuthenticationModeEnum**](SCIMAuthenticationModeEnum.md) |  | [optional]
**auth_oauth** | **string** | OAuth Source used for authentication | [optional]
**auth_oauth_params** | **array<string,object>** | Additional OAuth parameters, such as grant_type | [optional]
**compatibility_mode** | [**\AuthentikApi\Old\Model\CompatibilityModeEnum**](CompatibilityModeEnum.md) | Alter authentik behavior for vendor-specific SCIM implementations. | [optional]
**service_provider_config_cache_timeout** | **string** | Cache duration for ServiceProviderConfig responses. Set minutes&#x3D;0 to disable. | [optional]
**group_filters** | **string[]** | Group filters used to define sync-scope for groups. | [optional]
**oidc_auth_providers** | **int[]** |  | [optional]
**event_retention** | **string** |  | [optional]
**reply_url** | **string** |  |
**wtrealm** | **string** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
