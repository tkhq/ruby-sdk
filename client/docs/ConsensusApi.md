# SwaggerClient::ConsensusApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_approve_activity**](ConsensusApi.md#public_api_service_approve_activity) | **POST** /public/v1/submit/approve_activity | Approve Activity
[**public_api_service_reject_activity**](ConsensusApi.md#public_api_service_reject_activity) | **POST** /public/v1/submit/reject_activity | Reject Activity

# **public_api_service_approve_activity**
> V1ActivityResponse public_api_service_approve_activity(body)

Approve Activity

Approve an Activity

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

api_instance = SwaggerClient::ConsensusApi.new
body = SwaggerClient::V1ApproveActivityRequest.new # V1ApproveActivityRequest | 


begin
  #Approve Activity
  result = api_instance.public_api_service_approve_activity(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConsensusApi->public_api_service_approve_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ApproveActivityRequest**](V1ApproveActivityRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_reject_activity**
> V1ActivityResponse public_api_service_reject_activity(body)

Reject Activity

Reject an Activity

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

api_instance = SwaggerClient::ConsensusApi.new
body = SwaggerClient::V1RejectActivityRequest.new # V1RejectActivityRequest | 


begin
  #Reject Activity
  result = api_instance.public_api_service_reject_activity(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConsensusApi->public_api_service_reject_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1RejectActivityRequest**](V1RejectActivityRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



