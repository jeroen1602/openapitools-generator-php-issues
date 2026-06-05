# GoogleWorkspaceProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**property_mappings** | **string[]** |  | [optional]
**property_mappings_group** | **string[]** | Property mappings used for group creation/updating. | [optional]
**delegated_subject** | **string** |  |
**credentials** | **array<string,mixed>** |  |
**scopes** | **string** |  | [optional]
**exclude_users_service_account** | **bool** |  | [optional]
**filter_group** | **string** |  | [optional]
**user_delete_action** | [**\AuthentikApi\NextGen\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**group_delete_action** | [**\AuthentikApi\NextGen\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**default_group_email_domain** | **string** |  |
**sync_page_size** | **int** | Controls the number of objects synced in a single task | [optional]
**sync_page_timeout** | **string** | Timeout for synchronization of a single page | [optional]
**dry_run** | **bool** | When enabled, provider will not modify or create objects in the remote system. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
