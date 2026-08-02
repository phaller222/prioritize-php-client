# Hallerweb\Prioritize\Client\ResourcesApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**resourceAssignSkillToResource()**](ResourcesApi.md#resourceAssignSkillToResource) | **POST** /api/v1/resources/{resourceId}/skills | Assigns a skill to a resource |
| [**resourceCancelReservation()**](ResourcesApi.md#resourceCancelReservation) | **DELETE** /api/v1/reservations/{reservationId} | Cancels a reservation and releases the occupied slot |
| [**resourceCreateResource()**](ResourcesApi.md#resourceCreateResource) | **POST** /api/v1/resourcegroups/{groupId}/resources | Creates a new resource in a specific resource group |
| [**resourceCreateResourceGroup()**](ResourcesApi.md#resourceCreateResourceGroup) | **POST** /api/v1/departments/{deptId}/resourcegroups | Creates a new resource group for a specific department |
| [**resourceDeleteResource()**](ResourcesApi.md#resourceDeleteResource) | **DELETE** /api/v1/resources/{id} | Deletes a resource, if the current user is authorized |
| [**resourceDeleteResourceGroup()**](ResourcesApi.md#resourceDeleteResourceGroup) | **DELETE** /api/v1/resourcegroups/{groupId} | Deletes a resource group, if the current user is authorized |
| [**resourceGetMyActiveReservations()**](ResourcesApi.md#resourceGetMyActiveReservations) | **GET** /api/v1/resources/{id}/reservations/mine | Returns the caller&#39;s own currently active reservations on this resource |
| [**resourceGetReservationsForResource()**](ResourcesApi.md#resourceGetReservationsForResource) | **GET** /api/v1/resources/{id}/reservations | Returns all reservations of a resource (occupancy overview) |
| [**resourceGetResource()**](ResourcesApi.md#resourceGetResource) | **GET** /api/v1/resources/{id} | Retrieves a resource, if the current user is authorized |
| [**resourceGetResourcesByResourceGroup()**](ResourcesApi.md#resourceGetResourcesByResourceGroup) | **GET** /api/v1/resourcegroups/{groupId}/resources | Returns all resources of a specific resource group |
| [**resourceGetSkillsForResource()**](ResourcesApi.md#resourceGetSkillsForResource) | **GET** /api/v1/resources/{resourceId}/skills | Returns all skills of a resource |
| [**resourceGetSkillsForResourceInGroup()**](ResourcesApi.md#resourceGetSkillsForResourceInGroup) | **GET** /api/v1/resourcegroups/{groupId}/resources/{resourceId}/skills | Returns all skills of a resource, filtered by resource group |
| [**resourcePartialUpdateResource()**](ResourcesApi.md#resourcePartialUpdateResource) | **PATCH** /api/v1/resources/{id} | Updates individual fields of a resource (PATCH semantics: null &#x3D; unchanged) |
| [**resourceRecordValue()**](ResourcesApi.md#resourceRecordValue) | **POST** /api/v1/resources/{id}/values | Records a telemetry reading for a resource (REST ingest) |
| [**resourceReserveResource()**](ResourcesApi.md#resourceReserveResource) | **POST** /api/v1/resources/{id}/reserve | Reserves a resource for a specific time span |
| [**resourceSendCommand()**](ResourcesApi.md#resourceSendCommand) | **POST** /api/v1/resources/{id}/command | Sends a control command to a resource |


## `resourceAssignSkillToResource()`

```php
resourceAssignSkillToResource($resource_id, $skill_record_request): \Hallerweb\Prioritize\Client\Model\SkillRecordDTO
```

Assigns a skill to a resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int
$skill_record_request = new \Hallerweb\Prioritize\Client\Model\SkillRecordRequest(); // \Hallerweb\Prioritize\Client\Model\SkillRecordRequest

try {
    $result = $apiInstance->resourceAssignSkillToResource($resource_id, $skill_record_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceAssignSkillToResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |
| **skill_record_request** | [**\Hallerweb\Prioritize\Client\Model\SkillRecordRequest**](../Model/SkillRecordRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillRecordDTO**](../Model/SkillRecordDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceCancelReservation()`

```php
resourceCancelReservation($reservation_id)
```

Cancels a reservation and releases the occupied slot

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$reservation_id = 56; // int

try {
    $apiInstance->resourceCancelReservation($reservation_id);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceCancelReservation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **reservation_id** | **int**|  | |

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

## `resourceCreateResource()`

```php
resourceCreateResource($group_id, $resource_request): \Hallerweb\Prioritize\Client\Model\ResourceDTO
```

Creates a new resource in a specific resource group

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int
$resource_request = new \Hallerweb\Prioritize\Client\Model\ResourceRequest(); // \Hallerweb\Prioritize\Client\Model\ResourceRequest

try {
    $result = $apiInstance->resourceCreateResource($group_id, $resource_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceCreateResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **group_id** | **int**|  | |
| **resource_request** | [**\Hallerweb\Prioritize\Client\Model\ResourceRequest**](../Model/ResourceRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceDTO**](../Model/ResourceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceCreateResourceGroup()`

```php
resourceCreateResourceGroup($dept_id, $name): \Hallerweb\Prioritize\Client\Model\ResourceGroupDTO
```

Creates a new resource group for a specific department

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$dept_id = 56; // int
$name = 'name_example'; // string

try {
    $result = $apiInstance->resourceCreateResourceGroup($dept_id, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceCreateResourceGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dept_id** | **int**|  | |
| **name** | **string**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceGroupDTO**](../Model/ResourceGroupDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceDeleteResource()`

```php
resourceDeleteResource($id)
```

Deletes a resource, if the current user is authorized

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->resourceDeleteResource($id);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceDeleteResource: ', $e->getMessage(), PHP_EOL;
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

## `resourceDeleteResourceGroup()`

```php
resourceDeleteResourceGroup($group_id)
```

Deletes a resource group, if the current user is authorized

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int

try {
    $apiInstance->resourceDeleteResourceGroup($group_id);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceDeleteResourceGroup: ', $e->getMessage(), PHP_EOL;
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

## `resourceGetMyActiveReservations()`

```php
resourceGetMyActiveReservations($id): \Hallerweb\Prioritize\Client\Model\ResourceReservationDTO[]
```

Returns the caller's own currently active reservations on this resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->resourceGetMyActiveReservations($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetMyActiveReservations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceReservationDTO[]**](../Model/ResourceReservationDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceGetReservationsForResource()`

```php
resourceGetReservationsForResource($id): \Hallerweb\Prioritize\Client\Model\ResourceReservationDTO[]
```

Returns all reservations of a resource (occupancy overview)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->resourceGetReservationsForResource($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetReservationsForResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceReservationDTO[]**](../Model/ResourceReservationDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceGetResource()`

```php
resourceGetResource($id): \Hallerweb\Prioritize\Client\Model\ResourceDTO
```

Retrieves a resource, if the current user is authorized

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->resourceGetResource($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceDTO**](../Model/ResourceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceGetResourcesByResourceGroup()`

```php
resourceGetResourcesByResourceGroup($group_id): \Hallerweb\Prioritize\Client\Model\ResourceDTO[]
```

Returns all resources of a specific resource group

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int

try {
    $result = $apiInstance->resourceGetResourcesByResourceGroup($group_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetResourcesByResourceGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **group_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceDTO[]**](../Model/ResourceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceGetSkillsForResource()`

```php
resourceGetSkillsForResource($resource_id): \Hallerweb\Prioritize\Client\Model\SkillRecordDTO[]
```

Returns all skills of a resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$resource_id = 56; // int

try {
    $result = $apiInstance->resourceGetSkillsForResource($resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetSkillsForResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillRecordDTO[]**](../Model/SkillRecordDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceGetSkillsForResourceInGroup()`

```php
resourceGetSkillsForResourceInGroup($group_id, $resource_id): \Hallerweb\Prioritize\Client\Model\SkillRecordDTO[]
```

Returns all skills of a resource, filtered by resource group

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_id = 56; // int
$resource_id = 56; // int

try {
    $result = $apiInstance->resourceGetSkillsForResourceInGroup($group_id, $resource_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceGetSkillsForResourceInGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **group_id** | **int**|  | |
| **resource_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillRecordDTO[]**](../Model/SkillRecordDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourcePartialUpdateResource()`

```php
resourcePartialUpdateResource($id, $resource_request): \Hallerweb\Prioritize\Client\Model\ResourceDTO
```

Updates individual fields of a resource (PATCH semantics: null = unchanged)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$resource_request = new \Hallerweb\Prioritize\Client\Model\ResourceRequest(); // \Hallerweb\Prioritize\Client\Model\ResourceRequest

try {
    $result = $apiInstance->resourcePartialUpdateResource($id, $resource_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourcePartialUpdateResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **resource_request** | [**\Hallerweb\Prioritize\Client\Model\ResourceRequest**](../Model/ResourceRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceDTO**](../Model/ResourceDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceRecordValue()`

```php
resourceRecordValue($id, $resource_value_request)
```

Records a telemetry reading for a resource (REST ingest)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$resource_value_request = new \Hallerweb\Prioritize\Client\Model\ResourceValueRequest(); // \Hallerweb\Prioritize\Client\Model\ResourceValueRequest

try {
    $apiInstance->resourceRecordValue($id, $resource_value_request);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceRecordValue: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **resource_value_request** | [**\Hallerweb\Prioritize\Client\Model\ResourceValueRequest**](../Model/ResourceValueRequest.md)|  | |

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

## `resourceReserveResource()`

```php
resourceReserveResource($id, $from_iso_date, $until_iso_date): \Hallerweb\Prioritize\Client\Model\ResourceReservationDTO
```

Reserves a resource for a specific time span

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$from_iso_date = 'from_iso_date_example'; // string
$until_iso_date = 'until_iso_date_example'; // string

try {
    $result = $apiInstance->resourceReserveResource($id, $from_iso_date, $until_iso_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceReserveResource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **from_iso_date** | **string**|  | |
| **until_iso_date** | **string**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\ResourceReservationDTO**](../Model/ResourceReservationDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `resourceSendCommand()`

```php
resourceSendCommand($id, $resource_command_request)
```

Sends a control command to a resource

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\ResourcesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$resource_command_request = new \Hallerweb\Prioritize\Client\Model\ResourceCommandRequest(); // \Hallerweb\Prioritize\Client\Model\ResourceCommandRequest

try {
    $apiInstance->resourceSendCommand($id, $resource_command_request);
} catch (Exception $e) {
    echo 'Exception when calling ResourcesApi->resourceSendCommand: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **resource_command_request** | [**\Hallerweb\Prioritize\Client\Model\ResourceCommandRequest**](../Model/ResourceCommandRequest.md)|  | |

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
