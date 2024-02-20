# SwaggerClient::AuthenticatorsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_authenticators**](AuthenticatorsApi.md#public_api_service_create_authenticators) | **POST** /public/v1/submit/create_authenticators | Create Authenticators
[**public_api_service_delete_authenticators**](AuthenticatorsApi.md#public_api_service_delete_authenticators) | **POST** /public/v1/submit/delete_authenticators | Delete Authenticators
[**public_api_service_get_authenticator**](AuthenticatorsApi.md#public_api_service_get_authenticator) | **POST** /public/v1/query/get_authenticator | Get Authenticator
[**public_api_service_get_authenticators**](AuthenticatorsApi.md#public_api_service_get_authenticators) | **POST** /public/v1/query/get_authenticators | Get Authenticators

# **public_api_service_create_authenticators**
> V1ActivityResponse public_api_service_create_authenticators(body)

Create Authenticators

Create Authenticators to authenticate requests to Turnkey

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

api_instance = SwaggerClient::AuthenticatorsApi.new
body = SwaggerClient::V1CreateAuthenticatorsRequest.new # V1CreateAuthenticatorsRequest | 


begin
  #Create Authenticators
  result = api_instance.public_api_service_create_authenticators(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->public_api_service_create_authenticators: #{e}"
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



# **public_api_service_delete_authenticators**
> V1ActivityResponse public_api_service_delete_authenticators(body)

Delete Authenticators

Remove authenticators from a User

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

api_instance = SwaggerClient::AuthenticatorsApi.new
body = SwaggerClient::V1DeleteAuthenticatorsRequest.new # V1DeleteAuthenticatorsRequest | 


begin
  #Delete Authenticators
  result = api_instance.public_api_service_delete_authenticators(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->public_api_service_delete_authenticators: #{e}"
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



# **public_api_service_get_authenticator**
> V1GetAuthenticatorResponse public_api_service_get_authenticator(body)

Get Authenticator

Get details about an authenticator

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

api_instance = SwaggerClient::AuthenticatorsApi.new
body = SwaggerClient::V1GetAuthenticatorRequest.new # V1GetAuthenticatorRequest | 


begin
  #Get Authenticator
  result = api_instance.public_api_service_get_authenticator(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->public_api_service_get_authenticator: #{e}"
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



# **public_api_service_get_authenticators**
> V1GetAuthenticatorsResponse public_api_service_get_authenticators(body)

Get Authenticators

Get details about authenticators for a user

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

api_instance = SwaggerClient::AuthenticatorsApi.new
body = SwaggerClient::V1GetAuthenticatorsRequest.new # V1GetAuthenticatorsRequest | 


begin
  #Get Authenticators
  result = api_instance.public_api_service_get_authenticators(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticatorsApi->public_api_service_get_authenticators: #{e}"
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



