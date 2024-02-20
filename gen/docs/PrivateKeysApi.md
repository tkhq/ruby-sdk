# SwaggerClient::PrivateKeysApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_private_keys**](PrivateKeysApi.md#public_api_service_create_private_keys) | **POST** /public/v1/submit/create_private_keys | Create Private Keys
[**public_api_service_export_private_key**](PrivateKeysApi.md#public_api_service_export_private_key) | **POST** /public/v1/submit/export_private_key | Export Private Key
[**public_api_service_get_private_key**](PrivateKeysApi.md#public_api_service_get_private_key) | **POST** /public/v1/query/get_private_key | Get Private Key
[**public_api_service_get_private_keys**](PrivateKeysApi.md#public_api_service_get_private_keys) | **POST** /public/v1/query/list_private_keys | List Private Keys

# **public_api_service_create_private_keys**
> V1ActivityResponse public_api_service_create_private_keys(body)

Create Private Keys

Create new Private Keys

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

api_instance = SwaggerClient::PrivateKeysApi.new
body = SwaggerClient::V1CreatePrivateKeysRequest.new # V1CreatePrivateKeysRequest | 


begin
  #Create Private Keys
  result = api_instance.public_api_service_create_private_keys(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->public_api_service_create_private_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreatePrivateKeysRequest**](V1CreatePrivateKeysRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_export_private_key**
> V1ActivityResponse public_api_service_export_private_key(body)

Export Private Key

Exports a Private Key

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

api_instance = SwaggerClient::PrivateKeysApi.new
body = SwaggerClient::V1ExportPrivateKeyRequest.new # V1ExportPrivateKeyRequest | 


begin
  #Export Private Key
  result = api_instance.public_api_service_export_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->public_api_service_export_private_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ExportPrivateKeyRequest**](V1ExportPrivateKeyRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_private_key**
> V1GetPrivateKeyResponse public_api_service_get_private_key(body)

Get Private Key

Get details about a Private Key

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

api_instance = SwaggerClient::PrivateKeysApi.new
body = SwaggerClient::V1GetPrivateKeyRequest.new # V1GetPrivateKeyRequest | 


begin
  #Get Private Key
  result = api_instance.public_api_service_get_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->public_api_service_get_private_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetPrivateKeyRequest**](V1GetPrivateKeyRequest.md)|  | 

### Return type

[**V1GetPrivateKeyResponse**](V1GetPrivateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_private_keys**
> V1GetPrivateKeysResponse public_api_service_get_private_keys(body)

List Private Keys

List all Private Keys within an Organization

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

api_instance = SwaggerClient::PrivateKeysApi.new
body = SwaggerClient::V1GetPrivateKeysRequest.new # V1GetPrivateKeysRequest | 


begin
  #List Private Keys
  result = api_instance.public_api_service_get_private_keys(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->public_api_service_get_private_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetPrivateKeysRequest**](V1GetPrivateKeysRequest.md)|  | 

### Return type

[**V1GetPrivateKeysResponse**](V1GetPrivateKeysResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



