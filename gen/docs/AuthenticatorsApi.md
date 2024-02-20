# TurnkeyClient::AuthenticatorsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_authenticators**](AuthenticatorsApi.md#create_authenticators) | **POST** /public/v1/submit/create_authenticators | Create Authenticators
[**delete_authenticators**](AuthenticatorsApi.md#delete_authenticators) | **POST** /public/v1/submit/delete_authenticators | Delete Authenticators
[**get_authenticator**](AuthenticatorsApi.md#get_authenticator) | **POST** /public/v1/query/get_authenticator | Get Authenticator
[**get_authenticators**](AuthenticatorsApi.md#get_authenticators) | **POST** /public/v1/query/get_authenticators | Get Authenticators

# **create_authenticators**
> V1ActivityResponse create_authenticators(body)

Create Authenticators

Create Authenticators to authenticate requests to Turnkey

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

api_instance = TurnkeyClient::AuthenticatorsApi.new
body = TurnkeyClient::V1CreateAuthenticatorsRequest.new # V1CreateAuthenticatorsRequest | 


begin
  #Create Authenticators
  result = api_instance.create_authenticators(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->create_authenticators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateAuthenticatorsRequest**](V1CreateAuthenticatorsRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_authenticators**
> V1ActivityResponse delete_authenticators(body)

Delete Authenticators

Remove authenticators from a User

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

api_instance = TurnkeyClient::AuthenticatorsApi.new
body = TurnkeyClient::V1DeleteAuthenticatorsRequest.new # V1DeleteAuthenticatorsRequest | 


begin
  #Delete Authenticators
  result = api_instance.delete_authenticators(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->delete_authenticators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1DeleteAuthenticatorsRequest**](V1DeleteAuthenticatorsRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_authenticator**
> V1GetAuthenticatorResponse get_authenticator(body)

Get Authenticator

Get details about an authenticator

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

api_instance = TurnkeyClient::AuthenticatorsApi.new
body = TurnkeyClient::V1GetAuthenticatorRequest.new # V1GetAuthenticatorRequest | 


begin
  #Get Authenticator
  result = api_instance.get_authenticator(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->get_authenticator: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetAuthenticatorRequest**](V1GetAuthenticatorRequest.md)|  | 

### Return type

[**V1GetAuthenticatorResponse**](V1GetAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_authenticators**
> V1GetAuthenticatorsResponse get_authenticators(body)

Get Authenticators

Get details about authenticators for a user

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

api_instance = TurnkeyClient::AuthenticatorsApi.new
body = TurnkeyClient::V1GetAuthenticatorsRequest.new # V1GetAuthenticatorsRequest | 


begin
  #Get Authenticators
  result = api_instance.get_authenticators(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->get_authenticators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetAuthenticatorsRequest**](V1GetAuthenticatorsRequest.md)|  | 

### Return type

[**V1GetAuthenticatorsResponse**](V1GetAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



