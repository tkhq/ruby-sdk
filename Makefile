turnkey_client: turnkey_client_inputs
	swagger-codegen generate \
		-l ruby \
		-i turnkey_client_inputs/public_api.swagger.json \
		-o turnkey_client \
		-c turnkey_client_inputs/config.json \
		-t turnkey_client_inputs/templates \
		--remove-operation-id-prefix true \
		--disable-examples true
	rm -rf turnkey_client/docs turnkey_client/spec

clean:
	rm -rf turnkey_client
