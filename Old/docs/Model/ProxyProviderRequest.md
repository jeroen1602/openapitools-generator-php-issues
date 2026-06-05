# ProxyProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**property_mappings** | **string[]** |  | [optional]
**internal_host** | **string** |  | [optional]
**external_host** | **string** |  |
**internal_host_ssl_validation** | **bool** | Validate SSL Certificates of upstream servers | [optional]
**certificate** | **string** |  | [optional]
**skip_path_regex** | **string** | Regular expressions for which authentication is not required. Each new line is interpreted as a new Regular Expression. | [optional]
**basic_auth_enabled** | **bool** | Set a custom HTTP-Basic Authentication header based on values from authentik. | [optional]
**basic_auth_password_attribute** | **string** | User/Group Attribute used for the password part of the HTTP-Basic Header. | [optional]
**basic_auth_user_attribute** | **string** | User/Group Attribute used for the user part of the HTTP-Basic Header. If not set, the user&#39;s Email address is used. | [optional]
**mode** | [**\AuthentikApi\Old\Model\ProxyMode**](ProxyMode.md) | Enable support for forwardAuth in traefik and nginx auth_request. Exclusive with internal_host. | [optional]
**intercept_header_auth** | **bool** | When enabled, this provider will intercept the authorization header and authenticate requests based on its value. | [optional]
**cookie_domain** | **string** |  | [optional]
**jwt_federation_sources** | **string[]** |  | [optional]
**jwt_federation_providers** | **int[]** |  | [optional]
**access_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**refresh_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
