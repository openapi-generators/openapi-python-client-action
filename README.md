# openapi-python-client-action
The official GitHub Action for [openapi-python-client](https://github.com/triaxtec/openapi-python-client) - generates a modern Python client package from an OpenAPI document

## Inputs

### `openapi-python-client-version`

The version of the openapi-python-client package to use. If unspecified the latest released version will be used. **Version 2 of this action only supports version 0.9.0+ of the generator. Use version 1 of this action for older versions of the generator.**

### `openapi-file`

The path (with respect to the current directory/the workspace) to the OpenAPI document (both JSON and YAML are supported). Defaults to just "openapi.json" i.e. a file in the current directory called openapi.json.

### `openapi-url`

The url of the OpenAPI document. Overrides `openapi-file` - If unspecified the value of the `openapi-file` input (which defaults to just `openapi.json`) will be used to generate the client.

### `config-file`

The path (with respect to the current directory/the workspace) to the config.yml to be used with openapi-python-client. Configuaration is not required so if this is unspecified then no configuration will be passed along. See [openapi-python-client's README](https://github.com/triaxtec/openapi-python-client#configuration) for available configuration

## Outputs

No outputs are returned.
The generated client is placed in the current directory. The name of the package (unless configured differently) will be `title-client` where "title" comes from the field with the same name within the `info` section of the openapi document.

## Example usage
```yaml
jobs:
  generate-python-client:
    runs-on: ubuntu-latest
    name: Example
    steps:

      # Checkout your code
      - name: Checkout
        uses: actions/checkout@v2

      # Generate your openapi document (if you don't write it manually)

      # Use the action to generate a client package
      # This uses all defaults (latest version, openapi.json in the current workspace, no configuration)
      - name: Generate Python Client
        uses: triaxtec/openapi-python-client-action@v2

      # Do something with the generated client (likely publishing it somewhere)
      # Here we assume that the info/title in the openapi document was "example-project"
      - name: Do something with the client
        run: |
          cd example-project-client
```
