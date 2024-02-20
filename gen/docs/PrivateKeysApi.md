# TurnkeyClient::PrivateKeysApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_private_keys**](PrivateKeysApi.md#create_private_keys) | **POST** /public/v1/submit/create_private_keys | Create Private Keys
[**export_private_key**](PrivateKeysApi.md#export_private_key) | **POST** /public/v1/submit/export_private_key | Export Private Key
[**get_private_key**](PrivateKeysApi.md#get_private_key) | **POST** /public/v1/query/get_private_key | Get Private Key
[**get_private_keys**](PrivateKeysApi.md#get_private_keys) | **POST** /public/v1/query/list_private_keys | List Private Keys

# **create_private_keys**
> V1ActivityResponse create_private_keys(body)

Create Private Keys

Create new Private Keys

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

api_instance = TurnkeyClient::PrivateKeysApi.new
body = TurnkeyClient::V1CreatePrivateKeysRequest.new # V1CreatePrivateKeysRequest | 


begin
  #Create Private Keys
  result = api_instance.create_private_keys(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->create_private_keys: #{e}"
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



# **export_private_key**
> V1ActivityResponse export_private_key(body)

Export Private Key

Exports a Private Key

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

api_instance = TurnkeyClient::PrivateKeysApi.new
body = TurnkeyClient::V1ExportPrivateKeyRequest.new # V1ExportPrivateKeyRequest | 


begin
  #Export Private Key
  result = api_instance.export_private_key(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->export_private_key: #{e}"
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



# **get_private_key**
> V1GetPrivateKeyResponse get_private_key(body)

Get Private Key

Get details about a Private Key

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

api_instance = TurnkeyClient::PrivateKeysApi.new
body = TurnkeyClient::V1GetPrivateKeyRequest.new # V1GetPrivateKeyRequest | 


begin
  #Get Private Key
  result = api_instance.get_private_key(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->get_private_key: #{e}"
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



# **get_private_keys**
> V1GetPrivateKeysResponse get_private_keys(body)

List Private Keys

List all Private Keys within an Organization

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

api_instance = TurnkeyClient::PrivateKeysApi.new
body = TurnkeyClient::V1GetPrivateKeysRequest.new # V1GetPrivateKeysRequest | 


begin
  #List Private Keys
  result = api_instance.get_private_keys(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeysApi->get_private_keys: #{e}"
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



