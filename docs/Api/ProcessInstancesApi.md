# Hallerweb\Prioritize\Client\ProcessInstancesApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**processInstanceCancel()**](ProcessInstancesApi.md#processInstanceCancel) | **POST** /api/v1/process-instances/{id}/cancel | Stops a running instance |
| [**processInstanceGet()**](ProcessInstancesApi.md#processInstanceGet) | **GET** /api/v1/process-instances/{id} | A single instance by its engine id |
| [**processInstanceGetForProject()**](ProcessInstancesApi.md#processInstanceGetForProject) | **GET** /api/v1/projects/{projectId}/process-instances | All instances belonging to a project — its own and those of its tasks, running or finished |
| [**processInstanceGetForTask()**](ProcessInstancesApi.md#processInstanceGetForTask) | **GET** /api/v1/tasks/{taskId}/process-instance | The instance a task is linked to |
| [**processInstanceStartForProject()**](ProcessInstancesApi.md#processInstanceStartForProject) | **POST** /api/v1/projects/{projectId}/process-instances | Starts a process for a whole project |
| [**processInstanceStartForTask()**](ProcessInstancesApi.md#processInstanceStartForTask) | **POST** /api/v1/tasks/{taskId}/process-instances | Starts a process for a single task and links the two |


## `processInstanceCancel()`

```php
processInstanceCancel($id, $cancel_process_instance_request)
```

Stops a running instance

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$cancel_process_instance_request = new \Hallerweb\Prioritize\Client\Model\CancelProcessInstanceRequest(); // \Hallerweb\Prioritize\Client\Model\CancelProcessInstanceRequest

try {
    $apiInstance->processInstanceCancel($id, $cancel_process_instance_request);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceCancel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **cancel_process_instance_request** | [**\Hallerweb\Prioritize\Client\Model\CancelProcessInstanceRequest**](../Model/CancelProcessInstanceRequest.md)|  | [optional] |

### Return type

void (empty response body)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processInstanceGet()`

```php
processInstanceGet($id): \Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO
```

A single instance by its engine id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->processInstanceGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO**](../Model/ProcessInstanceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processInstanceGetForProject()`

```php
processInstanceGetForProject($project_id): \Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO[]
```

All instances belonging to a project — its own and those of its tasks, running or finished

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int

try {
    $result = $apiInstance->processInstanceGetForProject($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceGetForProject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO[]**](../Model/ProcessInstanceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processInstanceGetForTask()`

```php
processInstanceGetForTask($task_id): \Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO
```

The instance a task is linked to

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$task_id = 56; // int

try {
    $result = $apiInstance->processInstanceGetForTask($task_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceGetForTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **task_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO**](../Model/ProcessInstanceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processInstanceStartForProject()`

```php
processInstanceStartForProject($project_id, $start_process_instance_request): \Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO
```

Starts a process for a whole project

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$start_process_instance_request = new \Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest(); // \Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest

try {
    $result = $apiInstance->processInstanceStartForProject($project_id, $start_process_instance_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceStartForProject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **start_process_instance_request** | [**\Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest**](../Model/StartProcessInstanceRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO**](../Model/ProcessInstanceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `processInstanceStartForTask()`

```php
processInstanceStartForTask($task_id, $start_process_instance_request): \Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO
```

Starts a process for a single task and links the two

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProcessInstancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$task_id = 56; // int
$start_process_instance_request = new \Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest(); // \Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest

try {
    $result = $apiInstance->processInstanceStartForTask($task_id, $start_process_instance_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProcessInstancesApi->processInstanceStartForTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **task_id** | **int**|  | |
| **start_process_instance_request** | [**\Hallerweb\Prioritize\Client\Model\StartProcessInstanceRequest**](../Model/StartProcessInstanceRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProcessInstanceDTO**](../Model/ProcessInstanceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
