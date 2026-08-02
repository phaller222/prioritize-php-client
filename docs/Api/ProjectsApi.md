# Hallerweb\Prioritize\Client\ProjectsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**projectAddDocument()**](ProjectsApi.md#projectAddDocument) | **POST** /api/v1/projects/{id}/documents/{documentInfoId} | Add document |
| [**projectAddMember()**](ProjectsApi.md#projectAddMember) | **POST** /api/v1/projects/{id}/members/{userId} | Add member |
| [**projectAddResource()**](ProjectsApi.md#projectAddResource) | **POST** /api/v1/projects/{id}/resources/{resourceId} | Add resource |
| [**projectCreateProject()**](ProjectsApi.md#projectCreateProject) | **POST** /api/v1/projects | Creates a new project (the caller becomes manager and first member) |
| [**projectDeleteProject()**](ProjectsApi.md#projectDeleteProject) | **DELETE** /api/v1/projects/{id} | Delete project |
| [**projectGetMyProjects()**](ProjectsApi.md#projectGetMyProjects) | **GET** /api/v1/projects | Returns the projects the caller manages or participates in |
| [**projectGetProject()**](ProjectsApi.md#projectGetProject) | **GET** /api/v1/projects/{id} | Get project |
| [**projectGetTasks()**](ProjectsApi.md#projectGetTasks) | **GET** /api/v1/projects/{id}/tasks | Returns all tasks of a project (caller must be manager or member) |
| [**projectRemoveDocument()**](ProjectsApi.md#projectRemoveDocument) | **DELETE** /api/v1/projects/{id}/documents/{documentInfoId} | Remove document |
| [**projectRemoveMember()**](ProjectsApi.md#projectRemoveMember) | **DELETE** /api/v1/projects/{id}/members/{userId} | Remove member |
| [**projectRemoveResource()**](ProjectsApi.md#projectRemoveResource) | **DELETE** /api/v1/projects/{id}/resources/{resourceId} | Remove resource |
| [**projectTransferManager()**](ProjectsApi.md#projectTransferManager) | **PUT** /api/v1/projects/{id}/manager/{userId} | Hands the project over to another of its members |
| [**projectUpdateProject()**](ProjectsApi.md#projectUpdateProject) | **PATCH** /api/v1/projects/{id} | Update project |


## `projectAddDocument()`

```php
projectAddDocument($id, $document_info_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Add document

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$document_info_id = 56; // int

try {
    $result = $apiInstance->projectAddDocument($id, $document_info_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectAddDocument: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **document_info_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectAddMember()`

```php
projectAddMember($id, $user_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Add member

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$user_id = 56; // int

try {
    $result = $apiInstance->projectAddMember($id, $user_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectAddMember: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **user_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectAddResource()`

```php
projectAddResource($id, $resource_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Add resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$resource_id = 56; // int

try {
    $result = $apiInstance->projectAddResource($id, $resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectAddResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectCreateProject()`

```php
projectCreateProject($project_request): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Creates a new project (the caller becomes manager and first member)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_request = new \Hallerweb\Prioritize\Client\Model\ProjectRequest(); // \Hallerweb\Prioritize\Client\Model\ProjectRequest

try {
    $result = $apiInstance->projectCreateProject($project_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectCreateProject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_request** | [**\Hallerweb\Prioritize\Client\Model\ProjectRequest**](../Model/ProjectRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectDeleteProject()`

```php
projectDeleteProject($id)
```

Delete project

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->projectDeleteProject($id);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectDeleteProject: ', $e->getMessage(), PHP_EOL;
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

## `projectGetMyProjects()`

```php
projectGetMyProjects(): \Hallerweb\Prioritize\Client\Model\ProjectDTO[]
```

Returns the projects the caller manages or participates in

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->projectGetMyProjects();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectGetMyProjects: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO[]**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGetProject()`

```php
projectGetProject($id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Get project

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->projectGetProject($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectGetProject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectGetTasks()`

```php
projectGetTasks($id): \Hallerweb\Prioritize\Client\Model\TaskDTO[]
```

Returns all tasks of a project (caller must be manager or member)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->projectGetTasks($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectGetTasks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\TaskDTO[]**](../Model/TaskDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectRemoveDocument()`

```php
projectRemoveDocument($id, $document_info_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Remove document

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$document_info_id = 56; // int

try {
    $result = $apiInstance->projectRemoveDocument($id, $document_info_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectRemoveDocument: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **document_info_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectRemoveMember()`

```php
projectRemoveMember($id, $user_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Remove member

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$user_id = 56; // int

try {
    $result = $apiInstance->projectRemoveMember($id, $user_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectRemoveMember: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **user_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectRemoveResource()`

```php
projectRemoveResource($id, $resource_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Remove resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$resource_id = 56; // int

try {
    $result = $apiInstance->projectRemoveResource($id, $resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectRemoveResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectTransferManager()`

```php
projectTransferManager($id, $user_id): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Hands the project over to another of its members

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$user_id = 56; // int

try {
    $result = $apiInstance->projectTransferManager($id, $user_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectTransferManager: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **user_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectUpdateProject()`

```php
projectUpdateProject($id, $project_request): \Hallerweb\Prioritize\Client\Model\ProjectDTO
```

Update project

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$project_request = new \Hallerweb\Prioritize\Client\Model\ProjectRequest(); // \Hallerweb\Prioritize\Client\Model\ProjectRequest

try {
    $result = $apiInstance->projectUpdateProject($id, $project_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectUpdateProject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **project_request** | [**\Hallerweb\Prioritize\Client\Model\ProjectRequest**](../Model/ProjectRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ProjectDTO**](../Model/ProjectDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
