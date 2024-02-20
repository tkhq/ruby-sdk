# SwaggerClient::PublicApiServiceApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_noop_codegen_anchor**](PublicApiServiceApi.md#public_api_service_noop_codegen_anchor) | **POST** /tkhq/api/v1/noop-codegen-anchor | 

# **public_api_service_noop_codegen_anchor**
> V1NOOPCodegenAnchorResponse public_api_service_noop_codegen_anchor



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

api_instance = SwaggerClient::PublicApiServiceApi.new

begin
  result = api_instance.public_api_service_noop_codegen_anchor
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApiServiceApi->public_api_service_noop_codegen_anchor: #{e}"
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



