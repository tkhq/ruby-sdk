generate:
	swagger-codegen generate -i inputs/public_api.swagger.json -c inputs/config.json -l ruby -o gen --remove-operation-id-prefix true --disable-examples true
	rm -rf gen/docs gen/spec
	cp inputs/README.md gen/README.md

clean:
	rm -rf gen
