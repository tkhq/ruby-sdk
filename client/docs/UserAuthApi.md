# SwaggerClient::UserAuthApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_email_auth**](UserAuthApi.md#public_api_service_email_auth) | **POST** /public/v1/submit/email_auth | Perform Email Auth

# **public_api_service_email_auth**
> V1ActivityResponse public_api_service_email_auth(body)

Perform Email Auth

Authenticate a user via Email

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

api_instance = SwaggerClient::UserAuthApi.new
body = SwaggerClient::V1EmailAuthRequest.new # V1EmailAuthRequest | 


begin
  #Perform Email Auth
  result = api_instance.public_api_service_email_auth(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserAuthApi->public_api_service_email_auth: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1EmailAuthRequest**](V1EmailAuthRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



