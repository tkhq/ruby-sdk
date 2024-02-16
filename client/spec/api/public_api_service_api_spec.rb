=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PublicApiServiceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PublicApiServiceApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PublicApiServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicApiServiceApi' do
    it 'should create an instance of PublicApiServiceApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PublicApiServiceApi)
    end
  end

  # unit tests for public_api_service_noop_codegen_anchor
  # @param [Hash] opts the optional parameters
  # @return [V1NOOPCodegenAnchorResponse]
  describe 'public_api_service_noop_codegen_anchor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
