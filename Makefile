generate:
	swagger-codegen generate -i inputs/public_api.swagger.json -c inputs/config.json -l ruby -o gen --remove-operation-id-prefix true --disable-examples true
