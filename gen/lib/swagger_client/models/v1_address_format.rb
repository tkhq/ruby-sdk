=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'date'

module SwaggerClient
  class V1AddressFormat
    UNCOMPRESSED = 'ADDRESS_FORMAT_UNCOMPRESSED'.freeze
    COMPRESSED = 'ADDRESS_FORMAT_COMPRESSED'.freeze
    ETHEREUM = 'ADDRESS_FORMAT_ETHEREUM'.freeze
    SOLANA = 'ADDRESS_FORMAT_SOLANA'.freeze
    COSMOS = 'ADDRESS_FORMAT_COSMOS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = V1AddressFormat.constants.select { |c| V1AddressFormat::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #V1AddressFormat" if constantValues.empty?
      value
    end
  end
end