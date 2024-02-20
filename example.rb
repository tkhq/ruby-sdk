require "turnkey_sdk"

# Make a whoami request
begin
    result = TurnkeyClient::SessionsApi.new.get_whoami({
        "organizationId" => "something"
    })
    p result
rescue SwaggerClient::ApiError => e
    puts "Exception when calling Whoami endpoint: #{e}"
end

