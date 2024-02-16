# SwaggerClient::FeaturesApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_remove_organization_feature**](FeaturesApi.md#public_api_service_remove_organization_feature) | **POST** /public/v1/submit/remove_organization_feature | Remove Organization Feature
[**public_api_service_set_organization_feature**](FeaturesApi.md#public_api_service_set_organization_feature) | **POST** /public/v1/submit/set_organization_feature | Set Organization Feature

# **public_api_service_remove_organization_feature**
> V1ActivityResponse public_api_service_remove_organization_feature(body)

Remove Organization Feature

Removes an organization feature

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Stamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp'] = 'Bearer'

  # Configure API key authorization: AuthenticatorAuth
  config.api_key['X-Stamp-WebAuthn'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp-WebAuthn'] = 'Bearer'
end

api_instance = SwaggerClient::FeaturesApi.new
body = SwaggerClient::V1RemoveOrganizationFeatureRequest.new # V1RemoveOrganizationFeatureRequest | 


begin
  #Remove Organization Feature
  result = api_instance.public_api_service_remove_organization_feature(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeaturesApi->public_api_service_remove_organization_feature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1RemoveOrganizationFeatureRequest**](V1RemoveOrganizationFeatureRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_set_organization_feature**
> V1ActivityResponse public_api_service_set_organization_feature(body)

Set Organization Feature

Sets an organization feature

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Stamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp'] = 'Bearer'

  # Configure API key authorization: AuthenticatorAuth
  config.api_key['X-Stamp-WebAuthn'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp-WebAuthn'] = 'Bearer'
end

api_instance = SwaggerClient::FeaturesApi.new
body = SwaggerClient::V1SetOrganizationFeatureRequest.new # V1SetOrganizationFeatureRequest | 


begin
  #Set Organization Feature
  result = api_instance.public_api_service_set_organization_feature(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeaturesApi->public_api_service_set_organization_feature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1SetOrganizationFeatureRequest**](V1SetOrganizationFeatureRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



