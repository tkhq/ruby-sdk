require 'turnkey_client'
require 'dotenv'
require 'json'
require 'date'

# Load local .env file
Dotenv.load

raise 'Please set TURNKEY_ORGANIZATION_ID in your .env file' if ENV['TURNKEY_ORGANIZATION_ID'].nil?
raise 'Please set SUB_ORGANIZATION_ROOT_PUBLIC_KEY in your .env file' if ENV['SUB_ORGANIZATION_ROOT_PUBLIC_KEY'].nil?
raise 'SUB_ORGANIZATION_ROOT_PUBLIC_KEY should be different from TURNKEY_API_PUBLIC_KEY' if ENV['SUB_ORGANIZATION_ROOT_PUBLIC_KEY'] == ENV['TURNKEY_API_PUBLIC_KEY']

# Make a whoami request
begin
  client = TurnkeyClient.configure do |c|
    c.api_public_key = ENV['TURNKEY_API_PUBLIC_KEY']
    c.api_private_key = ENV['TURNKEY_API_PRIVATE_KEY']
  end

  now_in_ms = DateTime.now.strftime('%Q')
  
  # https://docs.turnkey.com/api#tag/Organizations/operation/CreateSubOrganization
  create_sub_organization_response = TurnkeyClient::OrganizationsApi.new(client).create_sub_organization(
    {
      type: 'ACTIVITY_TYPE_CREATE_SUB_ORGANIZATION_V4',
      organizationId: ENV['TURNKEY_ORGANIZATION_ID'],
      timestampMs: now_in_ms,
      parameters: {
        subOrganizationName: "Sub-Organization @#{now_in_ms}",
        rootUsers: [
          {
            userName: "Root User",
            apiKeys: [{
              apiKeyName: "Root User API key",
              publicKey: ENV['SUB_ORGANIZATION_ROOT_PUBLIC_KEY'],
            }],
            authenticators: [],
            userEmail: nil,
          }
        ],
        rootQuorumThreshold: 1,
        wallet: {
          walletName: "Tron Wallet",
          mnemonicLength: 12,
          accounts: [
            {
              curve: 'CURVE_SECP256K1',
              pathFormat: 'PATH_FORMAT_BIP32',
              # Default Tron account in the standard: https://github.com/tronprotocol/tips/blob/master/tip-01.md
              path: "m/44'/195'/0'",
              addressFormat: 'ADDRESS_FORMAT_TRON'
            }
          ]
        }
      }
    }
  )

  created_sub_organization = create_sub_organization_response&.activity&.dig(:result, :createSubOrganizationResultV4)
  raise "Something went wrong: no sub-organization in activity response: #{create_sub_organization_response.to_hash}" if created_sub_organization.nil?

  sub_organization_id = created_sub_organization[:subOrganizationId]
  tron_address = created_sub_organization[:wallet][:addresses].first
  puts 'Created new Turnkey sub-organization successfully'
  puts "Sub-Organization ID: #{sub_organization_id}"
  puts "Tron wallet address: #{tron_address}"
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling create sub-organization endpoint: #{e}"
end
