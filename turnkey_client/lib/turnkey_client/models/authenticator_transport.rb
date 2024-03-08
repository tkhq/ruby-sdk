=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'date'

module TurnkeyClient
  class AuthenticatorTransport
    BLE = 'AUTHENTICATOR_TRANSPORT_BLE'.freeze
    INTERNAL = 'AUTHENTICATOR_TRANSPORT_INTERNAL'.freeze
    NFC = 'AUTHENTICATOR_TRANSPORT_NFC'.freeze
    USB = 'AUTHENTICATOR_TRANSPORT_USB'.freeze
    HYBRID = 'AUTHENTICATOR_TRANSPORT_HYBRID'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AuthenticatorTransport.constants.select { |c| AuthenticatorTransport::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AuthenticatorTransport" if constantValues.empty?
      value
    end
  end
end
