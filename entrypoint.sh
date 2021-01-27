#!/bin/sh -l

openapi_python_client_version = $1
openapi_file_path = $2
config_file_path = $3

pip install openapi-python-client==${openapi_python_client_version}

if [[ "$config_file_path" == "NOT_SPECIFIED" ]]; then
    python -m openapi-python-client generate --path ${openapi_file_path}
else
    python -m openapi-python-client generate --path ${openapi_file_path} --config ${config_file_path}
fi