# TurnkeyClient::PublicApiServiceApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**n_oop_codegen_anchor**](PublicApiServiceApi.md#n_oop_codegen_anchor) | **POST** /tkhq/api/v1/noop-codegen-anchor | 

# **n_oop_codegen_anchor**
> V1NOOPCodegenAnchorResponse n_oop_codegen_anchor



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

api_instance = TurnkeyClient::PublicApiServiceApi.new

begin
  result = api_instance.n_oop_codegen_anchor
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PublicApiServiceApi->n_oop_codegen_anchor: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1NOOPCodegenAnchorResponse**](V1NOOPCodegenAnchorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



