# SwaggerClient::SessionsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_get_whoami**](SessionsApi.md#public_api_service_get_whoami) | **POST** /public/v1/query/whoami | Who am I?

# **public_api_service_get_whoami**
> V1GetWhoamiResponse public_api_service_get_whoami(body)

Who am I?

Get basic information about your current API or WebAuthN user and their organization. Affords Sub-Organization look ups via Parent Organization for WebAuthN users.

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

api_instance = SwaggerClient::SessionsApi.new
body = SwaggerClient::V1GetWhoamiRequest.new # V1GetWhoamiRequest | 


begin
  #Who am I?
  result = api_instance.public_api_service_get_whoami(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SessionsApi->public_api_service_get_whoami: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetWhoamiRequest**](V1GetWhoamiRequest.md)|  | 

### Return type

[**V1GetWhoamiResponse**](V1GetWhoamiResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



