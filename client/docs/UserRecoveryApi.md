# SwaggerClient::UserRecoveryApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_init_user_email_recovery**](UserRecoveryApi.md#public_api_service_init_user_email_recovery) | **POST** /public/v1/submit/init_user_email_recovery | Init Email Recovery
[**public_api_service_recover_user**](UserRecoveryApi.md#public_api_service_recover_user) | **POST** /public/v1/submit/recover_user | Recover a user

# **public_api_service_init_user_email_recovery**
> V1ActivityResponse public_api_service_init_user_email_recovery(body)

Init Email Recovery

Initializes a new email recovery

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

api_instance = SwaggerClient::UserRecoveryApi.new
body = SwaggerClient::V1InitUserEmailRecoveryRequest.new # V1InitUserEmailRecoveryRequest | 


begin
  #Init Email Recovery
  result = api_instance.public_api_service_init_user_email_recovery(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserRecoveryApi->public_api_service_init_user_email_recovery: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1InitUserEmailRecoveryRequest**](V1InitUserEmailRecoveryRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_recover_user**
> V1ActivityResponse public_api_service_recover_user(body)

Recover a user

Completes the process of recovering a user by adding an authenticator

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

api_instance = SwaggerClient::UserRecoveryApi.new
body = SwaggerClient::V1RecoverUserRequest.new # V1RecoverUserRequest | 


begin
  #Recover a user
  result = api_instance.public_api_service_recover_user(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserRecoveryApi->public_api_service_recover_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1RecoverUserRequest**](V1RecoverUserRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



