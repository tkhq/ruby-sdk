# SwaggerClient::ActivitiesApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_get_activities**](ActivitiesApi.md#public_api_service_get_activities) | **POST** /public/v1/query/list_activities | List Activities
[**public_api_service_get_activity**](ActivitiesApi.md#public_api_service_get_activity) | **POST** /public/v1/query/get_activity | Get Activity

# **public_api_service_get_activities**
> V1GetActivitiesResponse public_api_service_get_activities(body)

List Activities

List all Activities within an Organization

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

api_instance = SwaggerClient::ActivitiesApi.new
body = SwaggerClient::V1GetActivitiesRequest.new # V1GetActivitiesRequest | 


begin
  #List Activities
  result = api_instance.public_api_service_get_activities(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->public_api_service_get_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetActivitiesRequest**](V1GetActivitiesRequest.md)|  | 

### Return type

[**V1GetActivitiesResponse**](V1GetActivitiesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_get_activity**
> V1ActivityResponse public_api_service_get_activity(body)

Get Activity

Get details about an Activity

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

api_instance = SwaggerClient::ActivitiesApi.new
body = SwaggerClient::V1GetActivityRequest.new # V1GetActivityRequest | 


begin
  #Get Activity
  result = api_instance.public_api_service_get_activity(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->public_api_service_get_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetActivityRequest**](V1GetActivityRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



