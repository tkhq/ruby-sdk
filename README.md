# Turnkey Ruby SDK

This repository contains a Ruby gem (`turnkey_client`) to interact with Turnkey.

## Using Turnkey in your Ruby projects

To install `turnkey_client`, install it with bundler:

```rb
bundle install turnkey_client
```

Then `require` it in Ruby files and use it:

```rb
require "turnkey_sdk"

client = TurnkeyClient.configure do |c|
    c.api_public_key = "your API public key"
    c.api_private_key = "your API private key"
end

response = TurnkeyClient::SessionsApi.new(client).get_whoami({ organization_id: "your organization ID"})
puts response
```

See the [`whoami.rb` file](./whoami.rb) if you're looking for something to copy/paste. To run it:

```ruby
$ bundle exec ruby whoami.rb
{:organizationId=>"4ecd2483-49db-4d63-bc2a-f70f122c3044", :organizationName=>"Ruby", :userId=>"1299d44a-339d-497d-867c-b78c047a8622", :username=>"Root user"}
```

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
