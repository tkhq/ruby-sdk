=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AuthenticatorsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticatorsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthenticatorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticatorsApi' do
    it 'should create an instance of AuthenticatorsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthenticatorsApi)
    end
  end

  # unit tests for public_api_service_create_authenticators
  # Create Authenticators
  # Create Authenticators to authenticate requests to Turnkey
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_create_authenticators test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_delete_authenticators
  # Delete Authenticators
  # Remove authenticators from a User
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_delete_authenticators test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_get_authenticator
  # Get Authenticator
  # Get details about an authenticator
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1GetAuthenticatorResponse]
  describe 'public_api_service_get_authenticator test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_get_authenticators
  # Get Authenticators
  # Get details about authenticators for a user
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1GetAuthenticatorsResponse]
  describe 'public_api_service_get_authenticators test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end