# openapitools/openapi-generator php's generator problem.

The Openapi generator's php generator has a few problems with the openapi docs from [authentik](https://github.com/goauthentik/authentik).

[api.yml](api.yml) contains a small excerpt of the complete authentik openapi docs (version 2026.2.3 in this case).
Almost all the requests have been removed except the requests that have models that contain errors.

The two `generate-*.sh` scripts contain a simple script to use the [openapitools/openapi-generator-cli](https://github.com/openapitools/openapi-generator-cli)
docker container to generate using both the [php-nextgen](https://openapi-generator.tech/docs/generators/php-nextgen) and the old [php](https://openapi-generator.tech/docs/generators/php/) generator.
Both have different problems.

# Old php generator

The old php generator has the problem with the [UsedBy](Old/lib/Model/UsedBy.php) model. This model has the field
`model_name` which generates the getter `getModleName` however this is also the name of a function in the
[ModelInterface](Old/lib/Model/ModelInterface.php).
This causes a collision and makes the final model unusable in PHP.

# Nextgen php generator

The nextgen generator also has the name collision in [UsedBy](NextGen/src/Model/UsedBy.php).
However, it has an extra issue in the [ModelRequest](NextGen/src/Model/ModelRequest.php) model.
This model describes discriminators in the [api.yml](api.yml) which get added to the generated model.
The discriminators contain a `.` which is converted to a `/` in the final generated code.
This is however not allowed in a PHP constant.
