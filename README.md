# Prioritize PHP Client

Official PHP client library for the [Prioritize](https://github.com/phaller222/Prioritize) REST API (`/api/v1`).

The client is **spec-first**: every API and model class under `src/` is generated at build
time from the frozen OpenAPI specification in `openapi/openapi.json` (a copy of the
`docs/openapi.json` released from the main Prioritize repo) and is **never hand-edited**.
The client version tracks the API version — `1.x` of the client targets API `1.x`.

## Install

```bash
composer require hallerweb/prioritize-php-client
```

Published on [Packagist](https://packagist.org/packages/hallerweb/prioritize-php-client).

## Usage

```php
use Hallerweb\Prioritize\Client\Configuration;
use Hallerweb\Prioritize\Client\Api\ProjectApi;
use GuzzleHttp\Client;

$config = Configuration::getDefaultConfiguration()
    ->setHost('http://localhost:8080')      // /api/v1 is already part of the spec paths
    ->setUsername('admin')                  // HTTP Basic
    ->setPassword('p@ssword');
// or Bearer (Keycloak): $config->setAccessToken('<token>');

$projects = new ProjectApi(new Client(), $config);
$mine = $projects->projectGetMyProjects();
```

- Transport: Guzzle (`guzzlehttp/guzzle`)
- Auth: HTTP Basic (`setUsername`/`setPassword`) or Bearer (`setAccessToken`)
- Namespaces: `Hallerweb\Prioritize\Client\{Api,Model}`
- License: Apache-2.0 · PHP 7.4+

## Regenerating

To move the client to a new API version, drop the released `openapi.json` into `openapi/`
and regenerate — the generated sources are never edited by hand:

```bash
./generate.sh
```

`generate.sh` pins the spec's `openapi` header to `3.0.1` if needed (the OpenAPI Generator
cannot resolve a `3.1.0` header), then runs the generator via the Maven harness in `pom.xml`.
