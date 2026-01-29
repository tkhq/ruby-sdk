turnkey_client: turnkey_client_inputs/public_api.swagger.json turnkey_client_inputs/config.json turnkey_client_inputs/templates/*
	swagger-codegen generate \
		-l ruby \
		-i turnkey_client_inputs/public_api.swagger.json \
		-o turnkey_client \
		-c turnkey_client_inputs/config.json \
		-t turnkey_client_inputs/templates \
		--remove-operation-id-prefix true \
		--disable-examples true
	rm -rf turnkey_client/docs turnkey_client/spec
	rm turnkey_client/.rubocop.yml

clean:
	rm -rf turnkey_client

.PHONY: changeset
changeset:
	ruby tool/changeset.rb

.PHONY: version
version:
	ruby tool/changeset_version.rb

.PHONY: changelog
changelog:
	ruby tool/changeset_changelog.rb

.PHONY: prepare-release
prepare-release:
	ruby tool/changeset_version.rb
	ruby tool/changeset_changelog.rb
