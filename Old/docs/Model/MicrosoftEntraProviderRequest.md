# MicrosoftEntraProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**property_mappings** | **string[]** |  | [optional]
**property_mappings_group** | **string[]** | Property mappings used for group creation/updating. | [optional]
**client_id** | **string** |  |
**client_secret** | **string** |  |
**tenant_id** | **string** |  |
**exclude_users_service_account** | **bool** |  | [optional]
**filter_group** | **string** |  | [optional]
**user_delete_action** | [**\AuthentikApi\Old\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**group_delete_action** | [**\AuthentikApi\Old\Model\OutgoingSyncDeleteAction**](OutgoingSyncDeleteAction.md) |  | [optional]
**sync_page_size** | **int** | Controls the number of objects synced in a single task | [optional]
**sync_page_timeout** | **string** | Timeout for synchronization of a single page | [optional]
**dry_run** | **bool** | When enabled, provider will not modify or create objects in the remote system. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
