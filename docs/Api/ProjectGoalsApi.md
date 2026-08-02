# Hallerweb\Prioritize\Client\ProjectGoalsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**projectGoalCreateGoal()**](ProjectGoalsApi.md#projectGoalCreateGoal) | **POST** /api/v1/projects/{projectId}/goals | Create goal |
| [**projectGoalDeleteGoal()**](ProjectGoalsApi.md#projectGoalDeleteGoal) | **DELETE** /api/v1/projects/{projectId}/goals/{goalId} | Delete goal |
| [**projectGoalGetGoal()**](ProjectGoalsApi.md#projectGoalGetGoal) | **GET** /api/v1/projects/{projectId}/goals/{goalId} | Get goal |
| [**projectGoalGetGoals()**](ProjectGoalsApi.md#projectGoalGetGoals) | **GET** /api/v1/projects/{projectId}/goals | Get goals |
| [**projectGoalGetProgress()**](ProjectGoalsApi.md#projectGoalGetProgress) | **GET** /api/v1/projects/{projectId}/progress | Returns the project&#39;s progress derived from its goals and their tasks |
| [**projectGoalUpdateGoal()**](ProjectGoalsApi.md#projectGoalUpdateGoal) | **PATCH** /api/v1/projects/{projectId}/goals/{goalId} | Update goal |


## `projectGoalCreateGoal()`

```php
projectGoalCreateGoal($project_id, $goal_request): \Hallerweb\Prioritize\Client\Model\ProjectGoalDTO
```

Create goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$goal_request = new \Hallerweb\Prioritize\Client\Model\GoalRequest(); // \Hallerweb\Prioritize\Client\Model\GoalRequest

try {
    $result = $apiInstance->projectGoalCreateGoal($project_id, $goal_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalCreateGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **goal_request** | [**\Hallerweb\Prioritize\Client\Model\GoalRequest**](../Model/GoalRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectGoalDTO**](../Model/ProjectGoalDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGoalDeleteGoal()`

```php
projectGoalDeleteGoal($project_id, $goal_id)
```

Delete goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$goal_id = 56; // int

try {
    $apiInstance->projectGoalDeleteGoal($project_id, $goal_id);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalDeleteGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **goal_id** | **int**|  | |

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

## `projectGoalGetGoal()`

```php
projectGoalGetGoal($project_id, $goal_id): \Hallerweb\Prioritize\Client\Model\ProjectGoalDTO
```

Get goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$goal_id = 56; // int

try {
    $result = $apiInstance->projectGoalGetGoal($project_id, $goal_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalGetGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **goal_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectGoalDTO**](../Model/ProjectGoalDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGoalGetGoals()`

```php
projectGoalGetGoals($project_id): \Hallerweb\Prioritize\Client\Model\ProjectGoalDTO[]
```

Get goals

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int

try {
    $result = $apiInstance->projectGoalGetGoals($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalGetGoals: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectGoalDTO[]**](../Model/ProjectGoalDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGoalGetProgress()`

```php
projectGoalGetProgress($project_id): \Hallerweb\Prioritize\Client\Model\ProjectProgress
```

Returns the project's progress derived from its goals and their tasks

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int

try {
    $result = $apiInstance->projectGoalGetProgress($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalGetProgress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectProgress**](../Model/ProjectProgress.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGoalUpdateGoal()`

```php
projectGoalUpdateGoal($project_id, $goal_id, $goal_request): \Hallerweb\Prioritize\Client\Model\ProjectGoalDTO
```

Update goal

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectGoalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 56; // int
$goal_id = 56; // int
$goal_request = new \Hallerweb\Prioritize\Client\Model\GoalRequest(); // \Hallerweb\Prioritize\Client\Model\GoalRequest

try {
    $result = $apiInstance->projectGoalUpdateGoal($project_id, $goal_id, $goal_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectGoalsApi->projectGoalUpdateGoal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **int**|  | |
| **goal_id** | **int**|  | |
| **goal_request** | [**\Hallerweb\Prioritize\Client\Model\GoalRequest**](../Model/GoalRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectGoalDTO**](../Model/ProjectGoalDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
