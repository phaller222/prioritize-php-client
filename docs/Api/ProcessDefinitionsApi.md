# Hallerweb\Prioritize\Client\ProcessDefinitionsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**processDefinitionActivate()**](ProcessDefinitionsApi.md#processDefinitionActivate) | **POST** /api/v1/process-definitions/{id}/activate | Activate a definition (deploy it to the engine and make it startable) |
| [**processDefinitionDeactivate()**](ProcessDefinitionsApi.md#processDefinitionDeactivate) | **POST** /api/v1/process-definitions/{id}/deactivate | Deactivate a definition (stop new instances; running ones continue) |
| [**processDefinitionGet()**](ProcessDefinitionsApi.md#processDefinitionGet) | **GET** /api/v1/process-definitions/{id} | Get a process definition |
| [**processDefinitionGetAll()**](ProcessDefinitionsApi.md#processDefinitionGetAll) | **GET** /api/v1/process-definitions | List all process definitions (deployed or draft) |
| [**processDefinitionRegister()**](ProcessDefinitionsApi.md#processDefinitionRegister) | **POST** /api/v1/documents/{documentInfoId}/process-definition | Register a document as a process definition (draft, not yet deployed) |
| [**processDefinitionUnregister()**](ProcessDefinitionsApi.md#processDefinitionUnregister) | **DELETE** /api/v1/process-definitions/{id} | Remove a definition (drafts freely; deployed only with ?force&#x3D;true) |


## `processDefinitionActivate()`

```php
processDefinitionActivate($id): \Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO
```

Activate a definition (deploy it to the engine and make it startable)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->processDefinitionActivate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionActivate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO**](../Model/ProcessDefinitionDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processDefinitionDeactivate()`

```php
processDefinitionDeactivate($id): \Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO
```

Deactivate a definition (stop new instances; running ones continue)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->processDefinitionDeactivate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionDeactivate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO**](../Model/ProcessDefinitionDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processDefinitionGet()`

```php
processDefinitionGet($id): \Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO
```

Get a process definition

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->processDefinitionGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO**](../Model/ProcessDefinitionDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processDefinitionGetAll()`

```php
processDefinitionGetAll(): \Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO[]
```

List all process definitions (deployed or draft)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->processDefinitionGetAll();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionGetAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO[]**](../Model/ProcessDefinitionDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processDefinitionRegister()`

```php
processDefinitionRegister($document_info_id): \Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO
```

Register a document as a process definition (draft, not yet deployed)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$document_info_id = 56; // int

try {
    $result = $apiInstance->processDefinitionRegister($document_info_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionRegister: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **document_info_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessDefinitionDTO**](../Model/ProcessDefinitionDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processDefinitionUnregister()`

```php
processDefinitionUnregister($id, $force)
```

Remove a definition (drafts freely; deployed only with ?force=true)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessDefinitionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$force = false; // bool

try {
    $apiInstance->processDefinitionUnregister($id, $force);
} catch (Exception $e) {
    echo 'Exception when calling ProcessDefinitionsApi->processDefinitionUnregister: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **force** | **bool**|  | [optional] [default to false] |

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
