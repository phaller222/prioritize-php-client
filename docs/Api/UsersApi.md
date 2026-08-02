# Hallerweb\Prioritize\Client\UsersApi

All URIs are relative to http://localhost:8080, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**userAssignSkillToUser()**](UsersApi.md#userAssignSkillToUser) | **POST** /api/v1/users/{userId}/skills | Assign skill to user |
| [**userCreate()**](UsersApi.md#userCreate) | **POST** /api/v1/users | Create a user |
| [**userDeactivate()**](UsersApi.md#userDeactivate) | **DELETE** /api/v1/users/{id} | Deactivate user |
| [**userGetAllUsers()**](UsersApi.md#userGetAllUsers) | **GET** /api/v1/users | Get all users |
| [**userGetById()**](UsersApi.md#userGetById) | **GET** /api/v1/users/{id} | Get user by id |
| [**userGetByUsername()**](UsersApi.md#userGetByUsername) | **GET** /api/v1/users/by-username | Search a user by username |
| [**userGetSkillsForUser()**](UsersApi.md#userGetSkillsForUser) | **GET** /api/v1/users/{userId}/skills | Get skills for user |
| [**userPartialUpdate()**](UsersApi.md#userPartialUpdate) | **PATCH** /api/v1/users/{id} | Partially update a user |
| [**userUpdate()**](UsersApi.md#userUpdate) | **PUT** /api/v1/users/{id} | Update a user (full replace of the editable profile fields) |


## `userAssignSkillToUser()`

```php
userAssignSkillToUser($user_id, $skill_record_request): \Hallerweb\Prioritize\Client\Model\SkillRecordDTO
```

Assign skill to user

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int
$skill_record_request = new \Hallerweb\Prioritize\Client\Model\SkillRecordRequest(); // \Hallerweb\Prioritize\Client\Model\SkillRecordRequest

try {
    $result = $apiInstance->userAssignSkillToUser($user_id, $skill_record_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userAssignSkillToUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**|  | |
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

## `userCreate()`

```php
userCreate($user_request): \Hallerweb\Prioritize\Client\Model\UserDTO
```

Create a user

Creates a local user record. There is no password field by design (@JsonIgnore on the entity): in production Keycloak owns credentials, and a local record created via REST is passwordless (it exists to carry app relationships). A login-able local user for the Basic-auth/dev mode is created via the admin GUI, which has a password field. See the user-provisioning notes in the project docs.

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_request = new \Hallerweb\Prioritize\Client\Model\UserRequest(); // \Hallerweb\Prioritize\Client\Model\UserRequest

try {
    $result = $apiInstance->userCreate($user_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_request** | [**\Hallerweb\Prioritize\Client\Model\UserRequest**](../Model/UserRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `userDeactivate()`

```php
userDeactivate($id)
```

Deactivate user

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->userDeactivate($id);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userDeactivate: ', $e->getMessage(), PHP_EOL;
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

## `userGetAllUsers()`

```php
userGetAllUsers(): \Hallerweb\Prioritize\Client\Model\UserDTO[]
```

Get all users

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->userGetAllUsers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userGetAllUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO[]**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `userGetById()`

```php
userGetById($id): \Hallerweb\Prioritize\Client\Model\UserDTO
```

Get user by id

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $result = $apiInstance->userGetById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userGetById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `userGetByUsername()`

```php
userGetByUsername($username): \Hallerweb\Prioritize\Client\Model\UserDTO
```

Search a user by username

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = 'username_example'; // string

try {
    $result = $apiInstance->userGetByUsername($username);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userGetByUsername: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `userGetSkillsForUser()`

```php
userGetSkillsForUser($user_id): \Hallerweb\Prioritize\Client\Model\SkillRecordDTO[]
```

Get skills for user

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int

try {
    $result = $apiInstance->userGetSkillsForUser($user_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userGetSkillsForUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**|  | |

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

## `userPartialUpdate()`

```php
userPartialUpdate($id, $user_request): \Hallerweb\Prioritize\Client\Model\UserDTO
```

Partially update a user

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$user_request = new \Hallerweb\Prioritize\Client\Model\UserRequest(); // \Hallerweb\Prioritize\Client\Model\UserRequest

try {
    $result = $apiInstance->userPartialUpdate($id, $user_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userPartialUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **user_request** | [**\Hallerweb\Prioritize\Client\Model\UserRequest**](../Model/UserRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `userUpdate()`

```php
userUpdate($id, $user_request): \Hallerweb\Prioritize\Client\Model\UserDTO
```

Update a user (full replace of the editable profile fields)

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


$apiInstance = new Hallerweb\Prioritize\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$user_request = new \Hallerweb\Prioritize\Client\Model\UserRequest(); // \Hallerweb\Prioritize\Client\Model\UserRequest

try {
    $result = $apiInstance->userUpdate($id, $user_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->userUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **user_request** | [**\Hallerweb\Prioritize\Client\Model\UserRequest**](../Model/UserRequest.md)|  | |

### Return type

[**\Hallerweb\Prioritize\Client\Model\UserDTO**](../Model/UserDTO.md)

### Authorization

[basicAuth](../../README.md#basicAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
