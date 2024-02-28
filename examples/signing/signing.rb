require 'turnkey_client'
require 'dotenv'
require 'json'
require 'date'

# Load local .env file
Dotenv.load

raise 'Please set TURNKEY_ORGANIZATION_ID in your .env file' if ENV['TURNKEY_ORGANIZATION_ID'].nil?

# Make a whoami request
begin
  client = TurnkeyClient.configure do |c|
    c.api_public_key = ENV['TURNKEY_API_PUBLIC_KEY']
    c.api_private_key = ENV['TURNKEY_API_PRIVATE_KEY']
  end

  # https://docs.turnkey.com/api#tag/Wallets/operation/CreateWallet
  now_in_ms = DateTime.now.strftime('%Q')

  # We can also use `TurnkeyClient::CreateWalletRequest` to create the request object here
  create_wallet_response = TurnkeyClient::WalletsApi.new(client).create_wallet(
    {
      type: 'ACTIVITY_TYPE_CREATE_WALLET',
      organizationId: ENV['TURNKEY_ORGANIZATION_ID'],
      timestampMs: DateTime.now.strftime('%Q'),
      parameters: {
        walletName: "Wallet @#{now_in_ms}",
        mnemonicLength: 12,
        accounts: [
          {
            curve: 'CURVE_SECP256K1',
            pathFormat: 'PATH_FORMAT_BIP32',
            # Default ETH account
            path: "m/44'/60'/0'/0/0",
            addressFormat: 'ADDRESS_FORMAT_ETHEREUM'
          }
        ]
      }
    }
  )

  created_wallet = create_wallet_response&.activity&.dig(:result, :createWalletResult)
  raise "Something went wrong: no wallet in activity response: #{create_wallet_response.to_hash}" if created_wallet.nil?

  puts 'created new wallet successfully'

  eth_address = created_wallet[:addresses].first

  # Now sign!
  # https://docs.turnkey.com/api#tag/Signing/operation/SignRawPayload
  message = 'hello from Turnkey, in Ruby!'
  eth_message = "\u0019Ethereum Signed Message:\n#{message.size}#{message}"

  signature_response = TurnkeyClient::SigningApi.new(client).sign_raw_payload(
    {
      type: 'ACTIVITY_TYPE_SIGN_RAW_PAYLOAD_V2',
      organizationId: ENV['TURNKEY_ORGANIZATION_ID'],
      timestampMs: DateTime.now.strftime('%Q'),
      parameters: {
        signWith: eth_address,
        payload: eth_message,
        encoding: 'PAYLOAD_ENCODING_TEXT_UTF8',
        hashFunction: 'HASH_FUNCTION_KECCAK256'
      }
    }
  )

  signature = signature_response&.activity&.dig(:result, :signRawPayloadResult)
  raise "Something went wrong: no signature in activity response: #{signature_response.to_hash}" if signature.nil?

  puts 'successful signature'

  eth_v = if signature[:v] == '00'
    '1b' # 27 in hex
  else
    '1c' # 28 in hex
  end
  puts "- address: #{eth_address}"
  puts "- message: \"#{message}\""
  puts "- signature hash: 0x#{signature[:r]}#{signature[:s]}#{eth_v}"
  puts 'You can verify for yourself at https://etherscan.io/verifiedSignatures > "Verify Signature"'
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling Whoami endpoint: #{e}"
end
