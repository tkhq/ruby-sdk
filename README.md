# Turnkey Ruby SDK

This repository contains Ruby gems to interact with Turnkey.

* `turnkey_client` provides `TurnkeyClient`
* `turnkey_api_key_stamper` provides `ApiKeyStamper`

## Using Turnkey in your Ruby projects

Eventually we'll publish this generated code and you'll be able to simply list it as a dependency in your Gemfile. For now you need to use local installation:

```rb
gem "turnkey_sdk", path: "./gen/"
```

Then `bundle install`. And in your Ruby files:

```rb
require "turnkey_sdk"
```

See the [`whoami.rb` file](./whoami.rb) if you're looking for something to copy/paste. To run it:

```ruby
$ bundle exec ruby whoami.rb
{:organizationId=>"4ecd2483-49db-4d63-bc2a-f70f122c3044", :organizationName=>"Ruby", :userId=>"1299d44a-339d-497d-867c-b78c047a8622", :username=>"Root user"}
```

## Generating `turnkey_client`

We use a swagger spec and [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) to generate `turnkey_client`. To update this gem:
* Update the swagger spec in [`turnkey_client_inputs`](./turnkey_client_inputs/)
* Bump `gemVersion` in [`config.json`](./turnkey_client_inputs/config.json)
* Run `make`
