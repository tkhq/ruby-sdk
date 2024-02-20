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

# Unit tests for SwaggerClient::V1ExportWalletAccountRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1ExportWalletAccountRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::V1ExportWalletAccountRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1ExportWalletAccountRequest' do
    it 'should create an instance of V1ExportWalletAccountRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::V1ExportWalletAccountRequest)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACTIVITY_TYPE_EXPORT_WALLET_ACCOUNT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "timestamp_ms"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "organization_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "parameters"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end