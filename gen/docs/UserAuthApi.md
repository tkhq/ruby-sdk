# TurnkeyClient::UserAuthApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_auth**](UserAuthApi.md#email_auth) | **POST** /public/v1/submit/email_auth | Perform Email Auth

# **email_auth**
> V1ActivityResponse email_auth(body)

Perform Email Auth

Authenticate a user via Email

### Example
```ruby
# load the gem
require 'turnkey_sdk'
# setup authorization
TurnkeyClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Stamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp'] = 'Bearer'

  # Configure API key authorization: AuthenticatorAuth
  config.api_key['X-Stamp-WebAuthn'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Stamp-WebAuthn'] = 'Bearer'
end

api_instance = TurnkeyClient::UserAuthApi.new
body = TurnkeyClient::V1EmailAuthRequest.new # V1EmailAuthRequest | 


begin
  #Perform Email Auth
  result = api_instance.email_auth(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserAuthApi->email_auth: #{e}"
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



