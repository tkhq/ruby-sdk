# Ruby Turnkey SDK

This repository contains a generated Ruby client to interact with the Turnkey API.

Generated with [swagger-codegen](https://github.com/swagger-api/swagger-codegen).

## Generating a new version

* Update the swagger spec in `inputs/`
* Run `make generate`

## Using Turnkey with Ruby

Eventually we'll publish this generated code and you'll be able to simply list it as a dependency in your Gemfile. For now you need to use local installation:

```rb
gem "swagger_client", path: "./gen/"
```

Then `bundle install`. And in your Ruby files:
```rb
require "swagger_client"
```

See the [`example.rb` file](./example.rb) if you're looking for something to copy/paste.
