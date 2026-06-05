#!/bin/bash

set -e

set -x

DIR="Old"

rm -rf "$DIR"
mkdir -p "$DIR"

docker run --rm --user "$UID:$(id -g)" \
    -v "$PWD":/local \
    openapitools/openapi-generator-cli:v7.22.0 generate \
    -i "/local/api.yml" \
    -g php \
    -c /local/generate-old.json \
    -o /local/"$DIR"/
