#!/bin/bash

set -e

set -x

DIR="NextGen"

rm -rf "$DIR"
mkdir -p "$DIR"

docker run --rm --user "$UID:$(id -g)" \
    -v "$PWD":/local \
    openapitools/openapi-generator-cli:v7.22.0 generate \
    -i "/local/api.yml" \
    -g php-nextgen \
    -c /local/generate-nextgen.json \
    -o /local/"$DIR"/

rm -rf "$DIR/test" "$DIR/docs"
