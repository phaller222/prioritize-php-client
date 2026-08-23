# Hallerweb\Prioritize\Client\TasksApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**taskAddTrackingSession()**](TasksApi.md#taskAddTrackingSession) | **POST** /api/v1/tasks/{id}/tracking/sessions | Books a work session by hand that was never clocked |
| [**taskAssignGoal()**](TasksApi.md#taskAssignGoal) | **PUT** /api/v1/tasks/{id}/goal/{goalId} | Assign goal |
| [**taskAssignTask()**](TasksApi.md#taskAssignTask) | **PUT** /api/v1/tasks/{id}/assignee/{actorId} | Assign task |
| [**taskChangeStatus()**](TasksApi.md#taskChangeStatus) | **PUT** /api/v1/tasks/{id}/status | Change status |
| [**taskCreateTask()**](TasksApi.md#taskCreateTask) | **POST** /api/v1/projects/{projectId}/tasks | Creates a task on the given project&#39;s blackboard |
| [**taskDeleteTask()**](TasksApi.md#taskDeleteTask) | **DELETE** /api/v1/tasks/{id} | Delete task |
| [**taskDeleteTrackingSession()**](TasksApi.md#taskDeleteTrackingSession) | **DELETE** /api/v1/tasks/{id}/tracking/sessions/{sessionId} | Removes a completed work session |
| [**taskGetTask()**](TasksApi.md#taskGetTask) | **GET** /api/v1/tasks/{id} | Get task |
| [**taskGetTracking()**](TasksApi.md#taskGetTracking) | **GET** /api/v1/tasks/{id}/tracking | Returns the total time tracked on the task (completed spans plus the running one, live) |
| [**taskGetTrackingSessions()**](TasksApi.md#taskGetTrackingSessions) | **GET** /api/v1/tasks/{id}/tracking/sessions | Returns the individual tracked work sessions of the task (completed spans plus the running one) |
| [**taskStartTracking()**](TasksApi.md#taskStartTracking) | **POST** /api/v1/tasks/{id}/tracking/start | Start tracking |
| [**taskStopTracking()**](TasksApi.md#taskStopTracking) | **POST** /api/v1/tasks/{id}/tracking/stop | Stop tracking |
| [**taskStopTrackingAt()**](TasksApi.md#taskStopTrackingAt) | **POST** /api/v1/tasks/{id}/tracking/stop-at | Stops the running work session at an earlier point in time |
| [**taskToggleTracking()**](TasksApi.md#taskToggleTracking) | **POST** /api/v1/tasks/{id}/tracking/toggle | Toggle tracking |
| [**taskUnassignGoal()**](TasksApi.md#taskUnassignGoal) | **DELETE** /api/v1/tasks/{id}/goal | Unassign goal |
| [**taskUnassignTask()**](TasksApi.md#taskUnassignTask) | **DELETE** /api/v1/tasks/{id}/assignee | Unassign task |
| [**taskUpdateTask()**](TasksApi.md#taskUpdateTask) | **PATCH** /api/v1/tasks/{id} | Update task |
| [**taskUpdateTrackingSession()**](TasksApi.md#taskUpdateTrackingSession) | **PUT** /api/v1/tasks/{id}/tracking/sessions/{sessionId} | Corrects the start and end of a completed work session |


## `taskAddTrackingSession()`

```php
taskAddTrackingSession($id, $work_session_request): \Hallerweb\Prioritize\Client\Model\WorkSession
```

Books a work session by hand that was never clocked

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$work_session_request = new \Hallerweb\Prioritize\Client\Model\WorkSessionRequest(); // \Hallerweb\Prioritize\Client\Model\WorkSessionRequest

try {
    $result = $apiInstance->taskAddTrackingSession($id, $work_session_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskAddTrackingSession: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **work_session_request** | [**\Hallerweb\Prioritize\Client\Model\WorkSessionRequest**](../Model/WorkSessionRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\WorkSession**](../Model/WorkSession.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskAssignGoal()`

```php
taskAssignGoal($id, $goal_id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Assign goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$goal_id = 56; // int

try {
    $result = $apiInstance->taskAssignGoal($id, $goal_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskAssignGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **goal_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskAssignTask()`

```php
taskAssignTask($id, $actor_id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Assign task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$actor_id = 56; // int

try {
    $result = $apiInstance->taskAssignTask($id, $actor_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskAssignTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **actor_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskChangeStatus()`

```php
taskChangeStatus($id, $task_status_request): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Change status

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$task_status_request = new \Hallerweb\Prioritize\Client\Model\TaskStatusRequest(); // \Hallerweb\Prioritize\Client\Model\TaskStatusRequest

try {
    $result = $apiInstance->taskChangeStatus($id, $task_status_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskChangeStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **task_status_request** | [**\Hallerweb\Prioritize\Client\Model\TaskStatusRequest**](../Model/TaskStatusRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskCreateTask()`

```php
taskCreateTask($project_id, $task_request): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Creates a task on the given project's blackboard

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$task_request = new \Hallerweb\Prioritize\Client\Model\TaskRequest(); // \Hallerweb\Prioritize\Client\Model\TaskRequest

try {
    $result = $apiInstance->taskCreateTask($project_id, $task_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskCreateTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **task_request** | [**\Hallerweb\Prioritize\Client\Model\TaskRequest**](../Model/TaskRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskDeleteTask()`

```php
taskDeleteTask($id)
```

Delete task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->taskDeleteTask($id);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskDeleteTask: ', $e->getMessage(), PHP_EOL;
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

## `taskDeleteTrackingSession()`

```php
taskDeleteTrackingSession($id, $session_id)
```

Removes a completed work session

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$session_id = 56; // int

try {
    $apiInstance->taskDeleteTrackingSession($id, $session_id);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskDeleteTrackingSession: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **session_id** | **int**|  | |

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

## `taskGetTask()`

```php
taskGetTask($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Get task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskGetTask($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskGetTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskGetTracking()`

```php
taskGetTracking($id): \Hallerweb\Prioritize\Client\Model\TrackingSummary
```

Returns the total time tracked on the task (completed spans plus the running one, live)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskGetTracking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskGetTracking: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TrackingSummary**](../Model/TrackingSummary.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskGetTrackingSessions()`

```php
taskGetTrackingSessions($id): \Hallerweb\Prioritize\Client\Model\WorkSession[]
```

Returns the individual tracked work sessions of the task (completed spans plus the running one)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskGetTrackingSessions($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskGetTrackingSessions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\WorkSession[]**](../Model/WorkSession.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskStartTracking()`

```php
taskStartTracking($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Start tracking

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskStartTracking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskStartTracking: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskStopTracking()`

```php
taskStopTracking($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Stop tracking

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskStopTracking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskStopTracking: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskStopTrackingAt()`

```php
taskStopTrackingAt($id, $stop_at_request): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Stops the running work session at an earlier point in time

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$stop_at_request = new \Hallerweb\Prioritize\Client\Model\StopAtRequest(); // \Hallerweb\Prioritize\Client\Model\StopAtRequest

try {
    $result = $apiInstance->taskStopTrackingAt($id, $stop_at_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskStopTrackingAt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **stop_at_request** | [**\Hallerweb\Prioritize\Client\Model\StopAtRequest**](../Model/StopAtRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskToggleTracking()`

```php
taskToggleTracking($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Toggle tracking

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskToggleTracking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskToggleTracking: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskUnassignGoal()`

```php
taskUnassignGoal($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Unassign goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskUnassignGoal($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskUnassignGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskUnassignTask()`

```php
taskUnassignTask($id): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Unassign task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->taskUnassignTask($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskUnassignTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskUpdateTask()`

```php
taskUpdateTask($id, $task_request): \Hallerweb\Prioritize\Client\Model\TaskDTO
```

Update task

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$task_request = new \Hallerweb\Prioritize\Client\Model\TaskRequest(); // \Hallerweb\Prioritize\Client\Model\TaskRequest

try {
    $result = $apiInstance->taskUpdateTask($id, $task_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskUpdateTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **task_request** | [**\Hallerweb\Prioritize\Client\Model\TaskRequest**](../Model/TaskRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `taskUpdateTrackingSession()`

```php
taskUpdateTrackingSession($id, $session_id, $work_session_request): \Hallerweb\Prioritize\Client\Model\WorkSession
```

Corrects the start and end of a completed work session

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\TasksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$session_id = 56; // int
$work_session_request = new \Hallerweb\Prioritize\Client\Model\WorkSessionRequest(); // \Hallerweb\Prioritize\Client\Model\WorkSessionRequest

try {
    $result = $apiInstance->taskUpdateTrackingSession($id, $session_id, $work_session_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TasksApi->taskUpdateTrackingSession: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **session_id** | **int**|  | |
| **work_session_request** | [**\Hallerweb\Prioritize\Client\Model\WorkSessionRequest**](../Model/WorkSessionRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\WorkSession**](../Model/WorkSession.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
