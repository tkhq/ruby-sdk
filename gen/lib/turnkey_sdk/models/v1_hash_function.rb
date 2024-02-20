=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'date'

module TurnkeyClient
  class V1HashFunction
    NO_OP = 'HASH_FUNCTION_NO_OP'.freeze
    SHA256 = 'HASH_FUNCTION_SHA256'.freeze
    KECCAK256 = 'HASH_FUNCTION_KECCAK256'.freeze
    NOT_APPLICABLE = 'HASH_FUNCTION_NOT_APPLICABLE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = V1HashFunction.constants.select { |c| V1HashFunction::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #V1HashFunction" if constantValues.empty?
      value
    end
  end
end
