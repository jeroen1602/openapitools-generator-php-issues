# LDAPProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**property_mappings** | **string[]** |  | [optional]
**base_dn** | **string** | DN under which objects are accessible. | [optional]
**certificate** | **string** |  | [optional]
**tls_server_name** | **string** |  | [optional]
**uid_start_number** | **int** | The start for uidNumbers, this number is added to the user.pk to make sure that the numbers aren&#39;t too low for POSIX users. Default is 2000 to ensure that we don&#39;t collide with local users uidNumber | [optional]
**gid_start_number** | **int** | The start for gidNumbers, this number is added to a number generated from the group.pk to make sure that the numbers aren&#39;t too low for POSIX groups. Default is 4000 to ensure that we don&#39;t collide with local groups or users primary groups gidNumber | [optional]
**search_mode** | [**\AuthentikApi\Old\Model\LDAPAPIAccessMode**](LDAPAPIAccessMode.md) |  | [optional]
**bind_mode** | [**\AuthentikApi\Old\Model\LDAPAPIAccessMode**](LDAPAPIAccessMode.md) |  | [optional]
**mfa_support** | **bool** | When enabled, code-based multi-factor authentication can be used by appending a semicolon and the TOTP code to the password. This should only be enabled if all users that will bind to this provider have a TOTP device configured, as otherwise a password may incorrectly be rejected if it contains a semicolon. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
