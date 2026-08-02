# Hallerweb\Prioritize\Client\NFCApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**nfcUnitBindTask()**](NFCApi.md#nfcUnitBindTask) | **PUT** /api/v1/nfc-units/{id}/task/{taskId} | Bind task |
| [**nfcUnitDeleteNfcUnit()**](NFCApi.md#nfcUnitDeleteNfcUnit) | **DELETE** /api/v1/nfc-units/{id} | Delete an NFC unit |
| [**nfcUnitGetNfcUnits()**](NFCApi.md#nfcUnitGetNfcUnits) | **GET** /api/v1/resources/{resourceId}/nfc-units | Get the NFC units |
| [**nfcUnitRegisterNfcUnit()**](NFCApi.md#nfcUnitRegisterNfcUnit) | **POST** /api/v1/resources/{resourceId}/nfc-units | Register an NFC unit |
| [**nfcUnitScan()**](NFCApi.md#nfcUnitScan) | **POST** /api/v1/nfc/scan/{uuid} | Process an NFC tag scan by its uuid |
| [**nfcUnitUnbindTask()**](NFCApi.md#nfcUnitUnbindTask) | **DELETE** /api/v1/nfc-units/{id}/task | Unbind task |


## `nfcUnitBindTask()`

```php
nfcUnitBindTask($id, $task_id): \Hallerweb\Prioritize\Client\Model\NfcUnitDTO
```

Bind task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$task_id = 56; // int

try {
    $result = $apiInstance->nfcUnitBindTask($id, $task_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitBindTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **task_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\NfcUnitDTO**](../Model/NfcUnitDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `nfcUnitDeleteNfcUnit()`

```php
nfcUnitDeleteNfcUnit($id)
```

Delete an NFC unit

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->nfcUnitDeleteNfcUnit($id);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitDeleteNfcUnit: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

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

## `nfcUnitGetNfcUnits()`

```php
nfcUnitGetNfcUnits($resource_id): \Hallerweb\Prioritize\Client\Model\NfcUnitDTO[]
```

Get the NFC units

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int

try {
    $result = $apiInstance->nfcUnitGetNfcUnits($resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitGetNfcUnits: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\NfcUnitDTO[]**](../Model/NfcUnitDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `nfcUnitRegisterNfcUnit()`

```php
nfcUnitRegisterNfcUnit($resource_id, $nfc_unit_request): \Hallerweb\Prioritize\Client\Model\NfcUnitDTO
```

Register an NFC unit

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int
$nfc_unit_request = new \Hallerweb\Prioritize\Client\Model\NfcUnitRequest(); // \Hallerweb\Prioritize\Client\Model\NfcUnitRequest

try {
    $result = $apiInstance->nfcUnitRegisterNfcUnit($resource_id, $nfc_unit_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitRegisterNfcUnit: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |
| **nfc_unit_request** | [**\Hallerweb\Prioritize\Client\Model\NfcUnitRequest**](../Model/NfcUnitRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\NfcUnitDTO**](../Model/NfcUnitDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `nfcUnitScan()`

```php
nfcUnitScan($uuid): \Hallerweb\Prioritize\Client\Model\ScanResult
```

Process an NFC tag scan by its uuid

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$uuid = 'uuid_example'; // string

try {
    $result = $apiInstance->nfcUnitScan($uuid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitScan: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **uuid** | **string**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ScanResult**](../Model/ScanResult.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `nfcUnitUnbindTask()`

```php
nfcUnitUnbindTask($id): \Hallerweb\Prioritize\Client\Model\NfcUnitDTO
```

Unbind task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\NFCApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->nfcUnitUnbindTask($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NFCApi->nfcUnitUnbindTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\NfcUnitDTO**](../Model/NfcUnitDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
