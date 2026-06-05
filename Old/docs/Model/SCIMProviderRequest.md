# SCIMProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**property_mappings** | **string[]** |  | [optional]
**property_mappings_group** | **string[]** | Property mappings used for group creation/updating. | [optional]
**url** | **string** | Base URL to SCIM requests, usually ends in /v2 |
**verify_certificates** | **bool** |  | [optional]
**token** | **string** | Authentication token | [optional]
**auth_mode** | [**\AuthentikApi\Old\Model\SCIMAuthenticationModeEnum**](SCIMAuthenticationModeEnum.md) |  | [optional]
**auth_oauth** | **string** | OAuth Source used for authentication | [optional]
**auth_oauth_params** | **array<string,mixed>** | Additional OAuth parameters, such as grant_type | [optional]
**compatibility_mode** | [**\AuthentikApi\Old\Model\CompatibilityModeEnum**](CompatibilityModeEnum.md) | Alter authentik behavior for vendor-specific SCIM implementations. | [optional]
**service_provider_config_cache_timeout** | **string** | Cache duration for ServiceProviderConfig responses. Set minutes&#x3D;0 to disable. | [optional]
**exclude_users_service_account** | **bool** |  | [optional]
**sync_page_size** | **int** | Controls the number of objects synced in a single task | [optional]
**sync_page_timeout** | **string** | Timeout for synchronization of a single page | [optional]
**group_filters** | **string[]** | Group filters used to define sync-scope for groups. | [optional]
**dry_run** | **bool** | When enabled, provider will not modify or create objects in the remote system. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
