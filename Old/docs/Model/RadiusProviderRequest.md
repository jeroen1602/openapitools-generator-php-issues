# RadiusProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**property_mappings** | **string[]** |  | [optional]
**client_networks** | **string** | List of CIDRs (comma-separated) that clients can connect from. A more specific CIDR will match before a looser one. Clients connecting from a non-specified CIDR will be dropped. | [optional]
**shared_secret** | **string** | Shared secret between clients and server to hash packets. | [optional]
**mfa_support** | **bool** | When enabled, code-based multi-factor authentication can be used by appending a semicolon and the TOTP code to the password. This should only be enabled if all users that will bind to this provider have a TOTP device configured, as otherwise a password may incorrectly be rejected if it contains a semicolon. | [optional]
**certificate** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
