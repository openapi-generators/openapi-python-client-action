#!/bin/bash

openapi_python_client_version=$1
openapi_file_path=$2
config_file_path=$3

if [[ "$config_file_path" == "NOT_SPECIFIED" ]]; then
    pipx run --spec openapi-python-client==${openapi_python_client_version} openapi-python-client generate --path ${openapi_file_path}
else
    pipx run --spec openapi-python-client==${openapi_python_client_version} openapi-python-client --config ${config_file_path} generate --path ${openapi_file_path}
fi