# Turnkey Ruby SDK

[![CI](https://github.com/tkhq/ruby-sdk/actions/workflows/rubocop.yml/badge.svg)](https://github.com/tkhq/ruby-sdk/actions/workflows/rubocop.yml) [![Gem Version](https://img.shields.io/gem/v/turnkey_client.svg)](https://rubygems.org/gems/turnkey_client)

This repository contains a Ruby gem, [`turnkey_client`](https://rubygems.org/gems/turnkey_client) to interact with the Turnkey API.

## Using Turnkey in your Ruby projects

To install `turnkey_client`, install it with bundler:

```rb
bundle add turnkey_client
```

Then `require` it in Ruby files to use it:

```rb
require "turnkey_client"

client = TurnkeyClient.configure do |c|
    c.api_public_key = "your API public key"
    c.api_private_key = "your API private key"
end

response = TurnkeyClient::SessionsApi.new(client).get_whoami({ organization_id: "your organization ID"})
puts response
```

See the [examples](./examples/) folder if you're looking for a complete sample project

## Examples

* [Whoami](./examples/whoami/): example showcasing API request signing in its simplest form
* [Signing](./examples/signing/): example showcasing wallet creation and ETH message signing

## Using Turnkey in your Rails projects

To use in Rails we recommend creating a new `config/initializers/turnkey.rb` file:

```rb
require 'turnkey_client'

TURNKEY_CLIENT = TurnkeyClient.configure do |config|
  c.api_public_key = "your API public key"
  c.api_private_key = "your API private key"
end
```

You can then use this in your controller or models with:
```rb
require 'turnkey_client'

TurnkeyClient::SessionsApi.new(TURNKEY_CLIENT).get_whoami({ organization_id: "your organization ID"})
```

## Re-generating `turnkey_client`

We use a swagger spec and [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) to generate `turnkey_client`. To update this gem:
* Update the swagger spec in [`turnkey_client_inputs`](./turnkey_client_inputs/)
* Bump `gemVersion` in [`config.json`](./turnkey_client_inputs/config.json)
* Run `make`

## Updating codegen templates

We use custom templates to insert custom functionality, namely:
* added `openssl` as a dependency to load API keys
* added functionality to insert `X-Stamp` headers to requests for authentication
* modified `configure` function to require a valid P256 public/private key pair at initialization time

If you want to tweak something related to codegen itself, head ([here](./turnkey_client_inputs/templates/)), make the desired change, and re-generate `turnkey_client`

If you want to update templates with upstream this is a bit harder but possible: these templates were downloaded from [this folder](https://github.com/swagger-api/swagger-codegen-generators/tree/0f7eeb2ca53e5fff886ce1a609bce1b1e75063fe/src/main/resources/handlebars/ruby) (this is a permalink to the right git SHA). You can see all the changes made to these by looking at the history of changes in the templates folder: https://github.com/tkhq/ruby-sdk/commits/main/turnkey_client_inputs/templates.

## Ruby

On Mac, Ruby will come installed automatically. However, the default version might not be compatible with certain gems, nor will it allow you to modify the default gems directory. To set up Ruby, there are many options: rbenv, rvm, asdf, chruby, etc. For example, rbenv can be set up by following the instructions [here](https://github.com/rbenv/rbenv?tab=readme-ov-file#installation).

## Rubocop

We use Rubocop for linting. To install:

```sh
$ gem install rubocop
```

And run:

```sh
$ rubocop
```

## Releasing on Rubygems.org

To build and release:

```sh
$ cd turnkey_client
$ gem build turnkey_client.gemspec
$ gem push turnkey_client-x.y.z.gem 
```
