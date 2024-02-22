require "turnkey_client"
require "dotenv"
require "json"

# Load local .env file
Dotenv.load

if ENV["TURNKEY_ORGANIZATION_ID"].nil?
  raise "Please set TURNKEY_ORGANIZATION_ID in your .env file"
end

# Make a whoami request
begin
  client = TurnkeyClient.configure do |c|
    c.api_public_key = ENV["TURNKEY_API_PUBLIC_KEY"]
    c.api_private_key = ENV["TURNKEY_API_PRIVATE_KEY"]
  end

  response = TurnkeyClient::SessionsApi.new(client).get_whoami({ organization_id: ENV["TURNKEY_ORGANIZATION_ID"] })
  puts response.to_hash
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling Whoami endpoint: #{e}"
end
