# AuthentikApi\Old\CoreApi



All URIs are relative to /api/v3, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**coreApplicationsUsedByList()**](CoreApi.md#coreApplicationsUsedByList) | **GET** /core/applications/{slug}/used_by/ |  |
| [**coreTransactionalApplicationsUpdate()**](CoreApi.md#coreTransactionalApplicationsUpdate) | **PUT** /core/transactional/applications/ |  |


## `coreApplicationsUsedByList()`

```php
coreApplicationsUsedByList($slug): \AuthentikApi\Old\Model\UsedBy[]
```



Get a list of all objects that use this object

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: authentik
$config = AuthentikApi\Old\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new AuthentikApi\Old\Api\CoreApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$slug = 'slug_example'; // string

try {
    $result = $apiInstance->coreApplicationsUsedByList($slug);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CoreApi->coreApplicationsUsedByList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **slug** | **string**|  | |

### Return type

[**\AuthentikApi\Old\Model\UsedBy[]**](../Model/UsedBy.md)

### Authorization

[authentik](../../README.md#authentik)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `coreTransactionalApplicationsUpdate()`

```php
coreTransactionalApplicationsUpdate($transaction_application_request): \AuthentikApi\Old\Model\TransactionApplicationResponse
```



Convert data into a blueprint, validate it and apply it

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: authentik
$config = AuthentikApi\Old\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new AuthentikApi\Old\Api\CoreApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transaction_application_request = new \AuthentikApi\Old\Model\TransactionApplicationRequest(); // \AuthentikApi\Old\Model\TransactionApplicationRequest

try {
    $result = $apiInstance->coreTransactionalApplicationsUpdate($transaction_application_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CoreApi->coreTransactionalApplicationsUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **transaction_application_request** | [**\AuthentikApi\Old\Model\TransactionApplicationRequest**](../Model/TransactionApplicationRequest.md)|  | |

### Return type

[**\AuthentikApi\Old\Model\TransactionApplicationResponse**](../Model/TransactionApplicationResponse.md)

### Authorization

[authentik](../../README.md#authentik)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
