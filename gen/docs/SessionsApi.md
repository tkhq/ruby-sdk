# TurnkeyClient::SessionsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_whoami**](SessionsApi.md#get_whoami) | **POST** /public/v1/query/whoami | Who am I?

# **get_whoami**
> V1GetWhoamiResponse get_whoami(body)

Who am I?

Get basic information about your current API or WebAuthN user and their organization. Affords Sub-Organization look ups via Parent Organization for WebAuthN users.

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

api_instance = TurnkeyClient::SessionsApi.new
body = TurnkeyClient::V1GetWhoamiRequest.new # V1GetWhoamiRequest | 


begin
  #Who am I?
  result = api_instance.get_whoami(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling SessionsApi->get_whoami: #{e}"
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



