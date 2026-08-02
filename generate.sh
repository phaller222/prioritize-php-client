#!/usr/bin/env bash
#
# Regenerate the PHP client from openapi/openapi.json.
#
# Usage:
#   ./generate.sh [path-to-released-openapi.json]
#
# If a path is given, it is copied into openapi/openapi.json first. The OpenAPI
# Generator cannot resolve an "openapi":"3.1.0" header, so this script rewrites
# it to "3.0.1" (lossless — no 3.1-only constructs are used). The 1.3.0+ specs
# are already emitted as 3.0.1, so this becomes a no-op there.
#
# Generated sources under src/ (and composer.json, docs/) are never hand-edited.
set -euo pipefail
cd "$(dirname "$0")"

SPEC="openapi/openapi.json"
if [ "${1:-}" != "" ]; then
  cp "$1" "$SPEC"
fi

# Pin the OpenAPI header to 3.0.1 if the released spec is 3.1.x.
if grep -q '"openapi"[[:space:]]*:[[:space:]]*"3\.1' "$SPEC"; then
  sed -i 's/"openapi"\([[:space:]]*\):\([[:space:]]*\)"3\.1[0-9.]*"/"openapi"\1:\2"3.0.1"/' "$SPEC"
  echo "Pinned openapi header to 3.0.1"
fi

mvn -q generate-sources

# The php generator (7.10.0) omits the top-level composer "name" and stamps
# generic OpenAPI author/homepage fields. Packagist requires "name"; patch these
# in deterministically so the generated composer.json is publishable. Idempotent.
if ! grep -q '"name": "hallerweb/prioritize-php-client"' composer.json; then
  sed -i '0,/^{/s//{\n    "name": "hallerweb\/prioritize-php-client",/' composer.json
fi
sed -i 's#"homepage": "https://openapi-generator.tech"#"homepage": "https://github.com/phaller222/prioritize-php-client"#' composer.json
sed -i 's#"name": "OpenAPI"#"name": "Peter Haller"#' composer.json
sed -i 's#"homepage": "https://openapi-generator.tech"#"homepage": "https://github.com/phaller222"#' composer.json

echo "Done. Generated Composer package into the repo root."
