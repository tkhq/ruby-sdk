# Turnkey Ruby SDK

This repository contains a Ruby gem (`turnkey_client`) to interact with Turnkey.

## Using Turnkey in your Ruby projects

To install `turnkey_client`, install it with bundler:

```rb
bundle install turnkey_client
```

Then `require` it in Ruby files and use it:

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

You can also update the templates if you want to tweak something related to codegen itself ([here](./turnkey_client_inputs/templates/)).
