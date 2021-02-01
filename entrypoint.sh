#!/bin/bash

openapi_python_client_version=$1
openapi_file_path=$2
openapi_url=$3
config_file_path=$4

if [[ "$openapi_python_client_version" != "NOT_SPECIFIED" ]]; then
    version_arg="--spec openapi-python-client==${openapi_python_client_version}"
else
    version_arg=""
fi

if [[ "$config_file_path" != "NOT_SPECIFIED" ]]; then
    config_arg="--config ${config_file_path}"
else
    config_arg=""
fi

openapi_document_path_or_url_arg="--path ${openapi_file_path}"
if [[ "$openapi_url" != "NOT_SPECIFIED" ]]; then
    openapi_document_path_or_url_arg="--url ${openapi_url}"
fi

pipx run ${version_arg} openapi-python-client ${config_arg} generate ${openapi_document_path_or_url_arg}