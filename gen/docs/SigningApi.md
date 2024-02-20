# SwaggerClient::SigningApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_sign_raw_payload**](SigningApi.md#public_api_service_sign_raw_payload) | **POST** /public/v1/submit/sign_raw_payload | Sign Raw Payload
[**public_api_service_sign_transaction**](SigningApi.md#public_api_service_sign_transaction) | **POST** /public/v1/submit/sign_transaction | Sign Transaction

# **public_api_service_sign_raw_payload**
> V1ActivityResponse public_api_service_sign_raw_payload(body)

Sign Raw Payload

Sign a raw payload

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

api_instance = SwaggerClient::SigningApi.new
body = SwaggerClient::V1SignRawPayloadRequest.new # V1SignRawPayloadRequest | 


begin
  #Sign Raw Payload
  result = api_instance.public_api_service_sign_raw_payload(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SigningApi->public_api_service_sign_raw_payload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1SignRawPayloadRequest**](V1SignRawPayloadRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_sign_transaction**
> V1ActivityResponse public_api_service_sign_transaction(body)

Sign Transaction

Sign a transaction

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

api_instance = SwaggerClient::SigningApi.new
body = SwaggerClient::V1SignTransactionRequest.new # V1SignTransactionRequest | 


begin
  #Sign Transaction
  result = api_instance.public_api_service_sign_transaction(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SigningApi->public_api_service_sign_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1SignTransactionRequest**](V1SignTransactionRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



