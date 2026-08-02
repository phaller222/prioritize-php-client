# Hallerweb\Prioritize\Client\DepartmentsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**departmentCreate()**](DepartmentsApi.md#departmentCreate) | **POST** /api/v1/companies/{companyId}/departments | Create department |
| [**departmentDelete()**](DepartmentsApi.md#departmentDelete) | **DELETE** /api/v1/departments/{id} | Delete department |
| [**departmentGetById()**](DepartmentsApi.md#departmentGetById) | **GET** /api/v1/departments/{id} | Get department by id |
| [**departmentGetDepartmentsByCompany()**](DepartmentsApi.md#departmentGetDepartmentsByCompany) | **GET** /api/v1/companies/{companyId}/departments | Get departments by company |
| [**departmentUpdate()**](DepartmentsApi.md#departmentUpdate) | **PUT** /api/v1/departments/{id} | Update department |


## `departmentCreate()`

```php
departmentCreate($company_id, $department_request): \Hallerweb\Prioritize\Client\Model\DepartmentDTO
```

Create department

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\DepartmentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int
$department_request = new \Hallerweb\Prioritize\Client\Model\DepartmentRequest(); // \Hallerweb\Prioritize\Client\Model\DepartmentRequest

try {
    $result = $apiInstance->departmentCreate($company_id, $department_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DepartmentsApi->departmentCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **company_id** | **int**|  | |
| **department_request** | [**\Hallerweb\Prioritize\Client\Model\DepartmentRequest**](../Model/DepartmentRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DepartmentDTO**](../Model/DepartmentDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `departmentDelete()`

```php
departmentDelete($id)
```

Delete department

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\DepartmentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->departmentDelete($id);
} catch (Exception $e) {
    echo 'Exception when calling DepartmentsApi->departmentDelete: ', $e->getMessage(), PHP_EOL;
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

## `departmentGetById()`

```php
departmentGetById($id): \Hallerweb\Prioritize\Client\Model\DepartmentDTO
```

Get department by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\DepartmentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->departmentGetById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DepartmentsApi->departmentGetById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DepartmentDTO**](../Model/DepartmentDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `departmentGetDepartmentsByCompany()`

```php
departmentGetDepartmentsByCompany($company_id): \Hallerweb\Prioritize\Client\Model\DepartmentDTO[]
```

Get departments by company

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\DepartmentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int

try {
    $result = $apiInstance->departmentGetDepartmentsByCompany($company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DepartmentsApi->departmentGetDepartmentsByCompany: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **company_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DepartmentDTO[]**](../Model/DepartmentDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `departmentUpdate()`

```php
departmentUpdate($id, $department_request): \Hallerweb\Prioritize\Client\Model\DepartmentDTO
```

Update department

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\DepartmentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$department_request = new \Hallerweb\Prioritize\Client\Model\DepartmentRequest(); // \Hallerweb\Prioritize\Client\Model\DepartmentRequest

try {
    $result = $apiInstance->departmentUpdate($id, $department_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DepartmentsApi->departmentUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **department_request** | [**\Hallerweb\Prioritize\Client\Model\DepartmentRequest**](../Model/DepartmentRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\DepartmentDTO**](../Model/DepartmentDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
