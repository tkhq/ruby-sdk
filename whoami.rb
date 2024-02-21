# Add our lib folder to LOAD_PATH
# Long-term we'll probably want to publish the Ruby stamper as its own package.
$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'

require "turnkey_sdk"
require "stamper"
require "dotenv"
require "json"

# Load local .env file
Dotenv.load

if ENV["TURNKEY_ORGANIZATION_ID"].nil?
    raise "Please set TURNKEY_ORGANIZATION_ID in your .env file"
end

# Make a whoami request
begin
    stamper = ApiKeyStamper.new({
        api_public_key: ENV["TURNKEY_API_PUBLIC_KEY"],
        api_private_key: ENV["TURNKEY_API_PRIVATE_KEY"],
    })

    client = TurnkeyClient::ApiClient.default
    # Unsure why this is the case, but the default "base_path" is set to `https://api.turnkey.com` by the codegen.
    # This results in requests being made to https://api.turnkey.com/https:/api.turnkey.com/<actual_path>
    # Until we find a way to fix this in the codegen, we have to manually set the base_path here.
    client.config.base_path = ""

    request = TurnkeyClient::V1GetWhoamiRequest.new({ organization_id: ENV["TURNKEY_ORGANIZATION_ID"]})
    
    # Note: this works because `to_json` is also called by the client when it computes the HTTP POST body
    # If the body signed here is different than the body actually POSTed as part of the HTTP request, the signature verification will fail
    # This is true even for minor difference such as array ordering, whitespace difference, etc.
    authHeader = stamper.stamp(request.to_body.to_json)

    response = TurnkeyClient::SessionsApi.new(client).get_whoami(request, { header_params: authHeader })
    puts response.to_hash
rescue TurnkeyClient::ApiError => e
    puts "Exception when calling Whoami endpoint: #{e}"
end

