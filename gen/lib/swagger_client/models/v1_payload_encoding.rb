=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'date'

module SwaggerClient
  class V1PayloadEncoding
    HEXADECIMAL = 'PAYLOAD_ENCODING_HEXADECIMAL'.freeze
    TEXT_UTF8 = 'PAYLOAD_ENCODING_TEXT_UTF8'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = V1PayloadEncoding.constants.select { |c| V1PayloadEncoding::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #V1PayloadEncoding" if constantValues.empty?
      value
    end
  end
end