=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::V1AuthenticatorAttestationResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1AuthenticatorAttestationResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::V1AuthenticatorAttestationResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1AuthenticatorAttestationResponse' do
    it 'should create an instance of V1AuthenticatorAttestationResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::V1AuthenticatorAttestationResponse)
    end
  end
  describe 'test attribute "client_data_json"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "attestation_object"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transports"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "authenticator_attachment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["cross-platform", "platform"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.authenticator_attachment = value }.not_to raise_error
      # end
    end
  end

end