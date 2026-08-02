# Hallerweb\Prioritize\Client\TelemetryRulesApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**telemetryRuleCreateRule()**](TelemetryRulesApi.md#telemetryRuleCreateRule) | **POST** /api/v1/resources/{resourceId}/telemetry-rules | Creates a monitoring rule on a resource |
| [**telemetryRuleDeleteRule()**](TelemetryRulesApi.md#telemetryRuleDeleteRule) | **DELETE** /api/v1/telemetry-rules/{id} | Deletes a rule |
| [**telemetryRuleGetRule()**](TelemetryRulesApi.md#telemetryRuleGetRule) | **GET** /api/v1/telemetry-rules/{id} | Returns a single rule by id |
| [**telemetryRuleGetRules()**](TelemetryRulesApi.md#telemetryRuleGetRules) | **GET** /api/v1/resources/{resourceId}/telemetry-rules | Lists all monitoring rules of a resource (any data point, enabled or not) |
| [**telemetryRuleUpdateRule()**](TelemetryRulesApi.md#telemetryRuleUpdateRule) | **PATCH** /api/v1/telemetry-rules/{id} | Partially updates a rule (only the fields present in the body are changed) |


## `telemetryRuleCreateRule()`

```php
telemetryRuleCreateRule($resource_id, $telemetry_rule_request): \Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO
```

Creates a monitoring rule on a resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TelemetryRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int
$telemetry_rule_request = new \Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest(); // \Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest

try {
    $result = $apiInstance->telemetryRuleCreateRule($resource_id, $telemetry_rule_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TelemetryRulesApi->telemetryRuleCreateRule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |
| **telemetry_rule_request** | [**\Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest**](../Model/TelemetryRuleRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO**](../Model/TelemetryRuleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `telemetryRuleDeleteRule()`

```php
telemetryRuleDeleteRule($id)
```

Deletes a rule

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TelemetryRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->telemetryRuleDeleteRule($id);
} catch (Exception $e) {
    echo 'Exception when calling TelemetryRulesApi->telemetryRuleDeleteRule: ', $e->getMessage(), PHP_EOL;
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

## `telemetryRuleGetRule()`

```php
telemetryRuleGetRule($id): \Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO
```

Returns a single rule by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TelemetryRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->telemetryRuleGetRule($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TelemetryRulesApi->telemetryRuleGetRule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO**](../Model/TelemetryRuleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `telemetryRuleGetRules()`

```php
telemetryRuleGetRules($resource_id): \Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO[]
```

Lists all monitoring rules of a resource (any data point, enabled or not)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TelemetryRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int

try {
    $result = $apiInstance->telemetryRuleGetRules($resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TelemetryRulesApi->telemetryRuleGetRules: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO[]**](../Model/TelemetryRuleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `telemetryRuleUpdateRule()`

```php
telemetryRuleUpdateRule($id, $telemetry_rule_request): \Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO
```

Partially updates a rule (only the fields present in the body are changed)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TelemetryRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$telemetry_rule_request = new \Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest(); // \Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest

try {
    $result = $apiInstance->telemetryRuleUpdateRule($id, $telemetry_rule_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TelemetryRulesApi->telemetryRuleUpdateRule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **telemetry_rule_request** | [**\Hallerweb\Prioritize\Client\Model\TelemetryRuleRequest**](../Model/TelemetryRuleRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TelemetryRuleDTO**](../Model/TelemetryRuleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
