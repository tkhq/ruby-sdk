=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
=end

require 'date'

module TurnkeyClient
  class TransactionType
    ETHEREUM = 'TRANSACTION_TYPE_ETHEREUM'.freeze
    SOLANA = 'TRANSACTION_TYPE_SOLANA'.freeze
    TRON = 'TRANSACTION_TYPE_TRON'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TransactionType.constants.select { |c| TransactionType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TransactionType" if constantValues.empty?
      value
    end
  end
end
