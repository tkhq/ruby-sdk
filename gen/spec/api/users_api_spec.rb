=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UsersApi)
    end
  end

  # unit tests for public_api_service_create_api_only_users
  # Create API-only Users
  # Create API-only Users in an existing Organization
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_create_api_only_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_create_users
  # Create Users
  # Create Users in an existing Organization
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_create_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_get_user
  # Get User
  # Get details about a User
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1GetUserResponse]
  describe 'public_api_service_get_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_get_users
  # List Users
  # List all Users within an Organization
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1GetUsersResponse]
  describe 'public_api_service_get_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_api_service_update_user
  # Update User
  # Update a User in an existing Organization
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [V1ActivityResponse]
  describe 'public_api_service_update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end