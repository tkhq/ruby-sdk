# SwaggerClient::APIKeysApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_api_keys**](APIKeysApi.md#public_api_service_create_api_keys) | **POST** /public/v1/submit/create_api_keys | Create API Keys
[**public_api_service_delete_api_keys**](APIKeysApi.md#public_api_service_delete_api_keys) | **POST** /public/v1/submit/delete_api_keys | Delete API Keys
[**public_api_service_get_api_key**](APIKeysApi.md#public_api_service_get_api_key) | **POST** /public/v1/query/get_api_key | Get API key
[**public_api_service_get_api_keys**](APIKeysApi.md#public_api_service_get_api_keys) | **POST** /public/v1/query/get_api_keys | Get API key

# **public_api_service_create_api_keys**
> V1ActivityResponse public_api_service_create_api_keys(body)

Create API Keys

Add api keys to an existing User

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

api_instance = SwaggerClient::APIKeysApi.new
body = SwaggerClient::V1CreateApiKeysRequest.new # V1CreateApiKeysRequest | 


begin
  #Create API Keys
  result = api_instance.public_api_service_create_api_keys(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling APIKeysApi->public_api_service_create_api_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateApiKeysRequest**](V1CreateApiKeysRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_delete_api_keys**
> V1ActivityResponse public_api_service_delete_api_keys(body)

Delete API Keys

Remove api keys from a User

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

api_instance = SwaggerClient::APIKeysApi.new
body = SwaggerClient::V1DeleteApiKeysRequest.new # V1DeleteApiKeysRequest | 


begin
  #Delete API Keys
  result = api_instance.public_api_service_delete_api_keys(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling APIKeysApi->public_api_service_delete_api_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1DeleteApiKeysRequest**](V1DeleteApiKeysRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_api_key**
> V1GetApiKeyResponse public_api_service_get_api_key(body)

Get API key

Get details about an API key

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

api_instance = SwaggerClient::APIKeysApi.new
body = SwaggerClient::V1GetApiKeyRequest.new # V1GetApiKeyRequest | 


begin
  #Get API key
  result = api_instance.public_api_service_get_api_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling APIKeysApi->public_api_service_get_api_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetApiKeyRequest**](V1GetApiKeyRequest.md)|  | 

### Return type

[**V1GetApiKeyResponse**](V1GetApiKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_api_keys**
> V1GetApiKeysResponse public_api_service_get_api_keys(body)

Get API key

Get details about API keys for a user

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

api_instance = SwaggerClient::APIKeysApi.new
body = SwaggerClient::V1GetApiKeysRequest.new # V1GetApiKeysRequest | 


begin
  #Get API key
  result = api_instance.public_api_service_get_api_keys(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling APIKeysApi->public_api_service_get_api_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetApiKeysRequest**](V1GetApiKeysRequest.md)|  | 

### Return type

[**V1GetApiKeysResponse**](V1GetApiKeysResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



