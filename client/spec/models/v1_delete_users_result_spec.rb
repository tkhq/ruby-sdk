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

# Unit tests for SwaggerClient::V1DeleteUsersResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1DeleteUsersResult' do
  before do
    # run before each test
    @instance = SwaggerClient::V1DeleteUsersResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1DeleteUsersResult' do
    it 'should create an instance of V1DeleteUsersResult' do
      expect(@instance).to be_instance_of(SwaggerClient::V1DeleteUsersResult)
    end
  end
  describe 'test attribute "user_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
