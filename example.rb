# TODO: rename this to "turnkey_client"
# Should be doable with codegen!
require "swagger_client"

# Make a whoami request
begin
    # TODO: would be good to have a single "API" class, with uncluttered method names
    # (e.g. `TurnkeyClient::Api.new.whoami`)
    result = SwaggerClient::SessionsApi.new.public_api_service_get_whoami({
        "organizationId" => "something"
    })
    p result
rescue SwaggerClient::ApiError => e
    puts "Exception when calling Whoami endpoint: #{e}"
end

