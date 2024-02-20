=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PrivateKeyTagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PrivateKeyTagsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PrivateKeyTagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PrivateKeyTagsApi' do
    it 'should create an instance of PrivateKeyTagsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PrivateKeyTagsApi)
    end
  end

  # unit tests for public_api_service_create_private_key_tag
  # Create Private Key Tag
  # Create a private key tag and add it to private keys.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_create_private_key_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_list_private_key_tags
  # List Private Key Tags
  # List all Private Key Tags within an Organization
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ListPrivateKeyTagsResponse]
  describe 'public_api_service_list_private_key_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_update_private_key_tag
  # Update Private Key Tag
  # Update human-readable name or associated private keys. Note that this activity is atomic: all of the updates will succeed at once, or all of them will fail.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_update_private_key_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end