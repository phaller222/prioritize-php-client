# Hallerweb\Prioritize\Client\DocumentGroupsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**documentGroupCreateGroup()**](DocumentGroupsApi.md#documentGroupCreateGroup) | **POST** /api/v1/document-groups | Create document group |
| [**documentGroupDeleteGroup()**](DocumentGroupsApi.md#documentGroupDeleteGroup) | **DELETE** /api/v1/document-groups/{groupId} | Delete document group |
| [**documentGroupGetAllGroups()**](DocumentGroupsApi.md#documentGroupGetAllGroups) | **GET** /api/v1/document-groups | Get all document groups |
| [**documentGroupGetDocumentsInGroup()**](DocumentGroupsApi.md#documentGroupGetDocumentsInGroup) | **GET** /api/v1/document-groups/{groupId}/documents | Get the documents in a document group |


## `documentGroupCreateGroup()`

```php
documentGroupCreateGroup($document_group_request): \Hallerweb\Prioritize\Client\Model\DocumentGroupDTO
```

Create document group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Hallerweb\Prioritize\Client\Api\DocumentGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$document_group_request = new \Hallerweb\Prioritize\Client\Model\DocumentGroupRequest(); // \Hallerweb\Prioritize\Client\Model\DocumentGroupRequest

try {
    $result = $apiInstance->documentGroupCreateGroup($document_group_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DocumentGroupsApi->documentGroupCreateGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **document_group_request** | [**\Hallerweb\Prioritize\Client\Model\DocumentGroupRequest**](../Model/DocumentGroupRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DocumentGroupDTO**](../Model/DocumentGroupDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentGroupDeleteGroup()`

```php
documentGroupDeleteGroup($group_id)
```

Delete document group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Hallerweb\Prioritize\Client\Api\DocumentGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int

try {
    $apiInstance->documentGroupDeleteGroup($group_id);
} catch (Exception $e) {
    echo 'Exception when calling DocumentGroupsApi->documentGroupDeleteGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **group_id** | **int**|  | |

### Return type

void (empty response body)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentGroupGetAllGroups()`

```php
documentGroupGetAllGroups(): \Hallerweb\Prioritize\Client\Model\DocumentGroupDTO[]
```

Get all document groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Hallerweb\Prioritize\Client\Api\DocumentGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->documentGroupGetAllGroups();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DocumentGroupsApi->documentGroupGetAllGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\DocumentGroupDTO[]**](../Model/DocumentGroupDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentGroupGetDocumentsInGroup()`

```php
documentGroupGetDocumentsInGroup($group_id): \Hallerweb\Prioritize\Client\Model\DocumentSummaryDTO[]
```

Get the documents in a document group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Hallerweb\Prioritize\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Hallerweb\Prioritize\Client\Api\DocumentGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int

try {
    $result = $apiInstance->documentGroupGetDocumentsInGroup($group_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DocumentGroupsApi->documentGroupGetDocumentsInGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **group_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DocumentSummaryDTO[]**](../Model/DocumentSummaryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
