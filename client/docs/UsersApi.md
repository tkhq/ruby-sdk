# SwaggerClient::UsersApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_api_only_users**](UsersApi.md#public_api_service_create_api_only_users) | **POST** /public/v1/submit/create_api_only_users | Create API-only Users
[**public_api_service_create_users**](UsersApi.md#public_api_service_create_users) | **POST** /public/v1/submit/create_users | Create Users
[**public_api_service_get_user**](UsersApi.md#public_api_service_get_user) | **POST** /public/v1/query/get_user | Get User
[**public_api_service_get_users**](UsersApi.md#public_api_service_get_users) | **POST** /public/v1/query/list_users | List Users
[**public_api_service_update_user**](UsersApi.md#public_api_service_update_user) | **POST** /public/v1/submit/update_user | Update User

# **public_api_service_create_api_only_users**
> V1ActivityResponse public_api_service_create_api_only_users(body)

Create API-only Users

Create API-only Users in an existing Organization

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

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::V1CreateApiOnlyUsersRequest.new # V1CreateApiOnlyUsersRequest | 


begin
  #Create API-only Users
  result = api_instance.public_api_service_create_api_only_users(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->public_api_service_create_api_only_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateApiOnlyUsersRequest**](V1CreateApiOnlyUsersRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_create_users**
> V1ActivityResponse public_api_service_create_users(body)

Create Users

Create Users in an existing Organization

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

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::V1CreateUsersRequest.new # V1CreateUsersRequest | 


begin
  #Create Users
  result = api_instance.public_api_service_create_users(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->public_api_service_create_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateUsersRequest**](V1CreateUsersRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_user**
> V1GetUserResponse public_api_service_get_user(body)

Get User

Get details about a User

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

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::V1GetUserRequest.new # V1GetUserRequest | 


begin
  #Get User
  result = api_instance.public_api_service_get_user(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->public_api_service_get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetUserRequest**](V1GetUserRequest.md)|  | 

### Return type

[**V1GetUserResponse**](V1GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_users**
> V1GetUsersResponse public_api_service_get_users(body)

List Users

List all Users within an Organization

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

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::V1GetUsersRequest.new # V1GetUsersRequest | 


begin
  #List Users
  result = api_instance.public_api_service_get_users(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->public_api_service_get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetUsersRequest**](V1GetUsersRequest.md)|  | 

### Return type

[**V1GetUsersResponse**](V1GetUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_update_user**
> V1ActivityResponse public_api_service_update_user(body)

Update User

Update a User in an existing Organization

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

api_instance = SwaggerClient::UsersApi.new
body = SwaggerClient::V1UpdateUserRequest.new # V1UpdateUserRequest | 


begin
  #Update User
  result = api_instance.public_api_service_update_user(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->public_api_service_update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1UpdateUserRequest**](V1UpdateUserRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



