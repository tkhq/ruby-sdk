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
	cp turnkey_client_inputs/README.md turnkey_client/README.md
	@# Remove the "test_files" section of the gemspec given we've removed specs.
	sed -i '' '/test_files/d' ./turnkey_client/turnkey_client.gemspec

clean:
	rm -rf turnkey_client
