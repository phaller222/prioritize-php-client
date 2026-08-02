# Hallerweb\Prioritize\Client\TaskSchedulesApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**taskScheduleCreateSchedule()**](TaskSchedulesApi.md#taskScheduleCreateSchedule) | **POST** /api/v1/projects/{projectId}/task-schedules | Creates a recurring task schedule on a project |
| [**taskScheduleDeleteSchedule()**](TaskSchedulesApi.md#taskScheduleDeleteSchedule) | **DELETE** /api/v1/task-schedules/{id} | Deletes a schedule |
| [**taskScheduleGetSchedule()**](TaskSchedulesApi.md#taskScheduleGetSchedule) | **GET** /api/v1/task-schedules/{id} | Returns a single schedule by id |
| [**taskScheduleGetSchedules()**](TaskSchedulesApi.md#taskScheduleGetSchedules) | **GET** /api/v1/projects/{projectId}/task-schedules | Lists all schedules of a project (enabled or not) |
| [**taskScheduleUpdateSchedule()**](TaskSchedulesApi.md#taskScheduleUpdateSchedule) | **PATCH** /api/v1/task-schedules/{id} | Partially updates a schedule (only the fields present in the body are changed) |


## `taskScheduleCreateSchedule()`

```php
taskScheduleCreateSchedule($project_id, $task_schedule_request): \Hallerweb\Prioritize\Client\Model\TaskScheduleDTO
```

Creates a recurring task schedule on a project

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TaskSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$task_schedule_request = new \Hallerweb\Prioritize\Client\Model\TaskScheduleRequest(); // \Hallerweb\Prioritize\Client\Model\TaskScheduleRequest

try {
    $result = $apiInstance->taskScheduleCreateSchedule($project_id, $task_schedule_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TaskSchedulesApi->taskScheduleCreateSchedule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **task_schedule_request** | [**\Hallerweb\Prioritize\Client\Model\TaskScheduleRequest**](../Model/TaskScheduleRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskScheduleDTO**](../Model/TaskScheduleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskScheduleDeleteSchedule()`

```php
taskScheduleDeleteSchedule($id)
```

Deletes a schedule

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TaskSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->taskScheduleDeleteSchedule($id);
} catch (Exception $e) {
    echo 'Exception when calling TaskSchedulesApi->taskScheduleDeleteSchedule: ', $e->getMessage(), PHP_EOL;
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

## `taskScheduleGetSchedule()`

```php
taskScheduleGetSchedule($id): \Hallerweb\Prioritize\Client\Model\TaskScheduleDTO
```

Returns a single schedule by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TaskSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskScheduleGetSchedule($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TaskSchedulesApi->taskScheduleGetSchedule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskScheduleDTO**](../Model/TaskScheduleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskScheduleGetSchedules()`

```php
taskScheduleGetSchedules($project_id): \Hallerweb\Prioritize\Client\Model\TaskScheduleDTO[]
```

Lists all schedules of a project (enabled or not)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TaskSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int

try {
    $result = $apiInstance->taskScheduleGetSchedules($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TaskSchedulesApi->taskScheduleGetSchedules: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskScheduleDTO[]**](../Model/TaskScheduleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskScheduleUpdateSchedule()`

```php
taskScheduleUpdateSchedule($id, $task_schedule_request): \Hallerweb\Prioritize\Client\Model\TaskScheduleDTO
```

Partially updates a schedule (only the fields present in the body are changed)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TaskSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$task_schedule_request = new \Hallerweb\Prioritize\Client\Model\TaskScheduleRequest(); // \Hallerweb\Prioritize\Client\Model\TaskScheduleRequest

try {
    $result = $apiInstance->taskScheduleUpdateSchedule($id, $task_schedule_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TaskSchedulesApi->taskScheduleUpdateSchedule: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **task_schedule_request** | [**\Hallerweb\Prioritize\Client\Model\TaskScheduleRequest**](../Model/TaskScheduleRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskScheduleDTO**](../Model/TaskScheduleDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
