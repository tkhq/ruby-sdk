# TurnkeyClient::UserRecoveryApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**init_user_email_recovery**](UserRecoveryApi.md#init_user_email_recovery) | **POST** /public/v1/submit/init_user_email_recovery | Init Email Recovery
[**recover_user**](UserRecoveryApi.md#recover_user) | **POST** /public/v1/submit/recover_user | Recover a user

# **init_user_email_recovery**
> V1ActivityResponse init_user_email_recovery(body)

Init Email Recovery

Initializes a new email recovery

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

api_instance = TurnkeyClient::UserRecoveryApi.new
body = TurnkeyClient::V1InitUserEmailRecoveryRequest.new # V1InitUserEmailRecoveryRequest | 


begin
  #Init Email Recovery
  result = api_instance.init_user_email_recovery(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserRecoveryApi->init_user_email_recovery: #{e}"
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



# **recover_user**
> V1ActivityResponse recover_user(body)

Recover a user

Completes the process of recovering a user by adding an authenticator

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

api_instance = TurnkeyClient::UserRecoveryApi.new
body = TurnkeyClient::V1RecoverUserRequest.new # V1RecoverUserRequest | 


begin
  #Recover a user
  result = api_instance.recover_user(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserRecoveryApi->recover_user: #{e}"
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



