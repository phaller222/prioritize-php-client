# Hallerweb\Prioritize\Client\SkillsApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**skillCreateCategory()**](SkillsApi.md#skillCreateCategory) | **POST** /api/v1/skills/categories | Create category |
| [**skillCreateSkill()**](SkillsApi.md#skillCreateSkill) | **POST** /api/v1/skills | Create skill |
| [**skillDeleteCategory()**](SkillsApi.md#skillDeleteCategory) | **DELETE** /api/v1/skills/categories/{categoryId} | Delete category |
| [**skillDeleteSkill()**](SkillsApi.md#skillDeleteSkill) | **DELETE** /api/v1/skills/{skillId} | Delete skill |
| [**skillGetAllCategories()**](SkillsApi.md#skillGetAllCategories) | **GET** /api/v1/skills/categories | Get all categories |
| [**skillGetAllSkills()**](SkillsApi.md#skillGetAllSkills) | **GET** /api/v1/skills | Get all skills |
| [**skillGetCategoryById()**](SkillsApi.md#skillGetCategoryById) | **GET** /api/v1/skills/categories/{categoryId} | Get category by id |
| [**skillGetSkillById()**](SkillsApi.md#skillGetSkillById) | **GET** /api/v1/skills/{skillId} | Get skill by id |
| [**skillUpdateCategory()**](SkillsApi.md#skillUpdateCategory) | **PUT** /api/v1/skills/categories/{categoryId} | Update category |
| [**skillUpdateSkill()**](SkillsApi.md#skillUpdateSkill) | **PUT** /api/v1/skills/{skillId} | Update skill |


## `skillCreateCategory()`

```php
skillCreateCategory($skill_category_request): \Hallerweb\Prioritize\Client\Model\SkillCategoryDTO
```

Create category

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_category_request = new \Hallerweb\Prioritize\Client\Model\SkillCategoryRequest(); // \Hallerweb\Prioritize\Client\Model\SkillCategoryRequest

try {
    $result = $apiInstance->skillCreateCategory($skill_category_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillCreateCategory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_category_request** | [**\Hallerweb\Prioritize\Client\Model\SkillCategoryRequest**](../Model/SkillCategoryRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillCategoryDTO**](../Model/SkillCategoryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillCreateSkill()`

```php
skillCreateSkill($skill_request): \Hallerweb\Prioritize\Client\Model\SkillSummaryDTO
```

Create skill

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_request = new \Hallerweb\Prioritize\Client\Model\SkillRequest(); // \Hallerweb\Prioritize\Client\Model\SkillRequest

try {
    $result = $apiInstance->skillCreateSkill($skill_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillCreateSkill: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_request** | [**\Hallerweb\Prioritize\Client\Model\SkillRequest**](../Model/SkillRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillSummaryDTO**](../Model/SkillSummaryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillDeleteCategory()`

```php
skillDeleteCategory($category_id)
```

Delete category

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$category_id = 56; // int

try {
    $apiInstance->skillDeleteCategory($category_id);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillDeleteCategory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **category_id** | **int**|  | |

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

## `skillDeleteSkill()`

```php
skillDeleteSkill($skill_id)
```

Delete skill

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_id = 56; // int

try {
    $apiInstance->skillDeleteSkill($skill_id);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillDeleteSkill: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_id** | **int**|  | |

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

## `skillGetAllCategories()`

```php
skillGetAllCategories(): \Hallerweb\Prioritize\Client\Model\SkillCategoryDTO[]
```

Get all categories

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->skillGetAllCategories();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillGetAllCategories: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillCategoryDTO[]**](../Model/SkillCategoryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillGetAllSkills()`

```php
skillGetAllSkills(): \Hallerweb\Prioritize\Client\Model\SkillSummaryDTO[]
```

Get all skills

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->skillGetAllSkills();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillGetAllSkills: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillSummaryDTO[]**](../Model/SkillSummaryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillGetCategoryById()`

```php
skillGetCategoryById($category_id): \Hallerweb\Prioritize\Client\Model\SkillCategoryDTO
```

Get category by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$category_id = 56; // int

try {
    $result = $apiInstance->skillGetCategoryById($category_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillGetCategoryById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **category_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillCategoryDTO**](../Model/SkillCategoryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillGetSkillById()`

```php
skillGetSkillById($skill_id): \Hallerweb\Prioritize\Client\Model\SkillSummaryDTO
```

Get skill by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_id = 56; // int

try {
    $result = $apiInstance->skillGetSkillById($skill_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillGetSkillById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillSummaryDTO**](../Model/SkillSummaryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillUpdateCategory()`

```php
skillUpdateCategory($category_id, $skill_category_request): \Hallerweb\Prioritize\Client\Model\SkillCategoryDTO
```

Update category

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$category_id = 56; // int
$skill_category_request = new \Hallerweb\Prioritize\Client\Model\SkillCategoryRequest(); // \Hallerweb\Prioritize\Client\Model\SkillCategoryRequest

try {
    $result = $apiInstance->skillUpdateCategory($category_id, $skill_category_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillUpdateCategory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **category_id** | **int**|  | |
| **skill_category_request** | [**\Hallerweb\Prioritize\Client\Model\SkillCategoryRequest**](../Model/SkillCategoryRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillCategoryDTO**](../Model/SkillCategoryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillUpdateSkill()`

```php
skillUpdateSkill($skill_id, $skill_request): \Hallerweb\Prioritize\Client\Model\SkillSummaryDTO
```

Update skill

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_id = 56; // int
$skill_request = new \Hallerweb\Prioritize\Client\Model\SkillRequest(); // \Hallerweb\Prioritize\Client\Model\SkillRequest

try {
    $result = $apiInstance->skillUpdateSkill($skill_id, $skill_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillUpdateSkill: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_id** | **int**|  | |
| **skill_request** | [**\Hallerweb\Prioritize\Client\Model\SkillRequest**](../Model/SkillRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\SkillSummaryDTO**](../Model/SkillSummaryDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
