# TurnkeyClient::UserTagsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_tag**](UserTagsApi.md#create_user_tag) | **POST** /public/v1/submit/create_user_tag | Create User Tag
[**list_user_tags**](UserTagsApi.md#list_user_tags) | **POST** /public/v1/query/list_user_tags | List User Tags
[**update_user_tag**](UserTagsApi.md#update_user_tag) | **POST** /public/v1/submit/update_user_tag | Update User Tag

# **create_user_tag**
> V1ActivityResponse create_user_tag(body)

Create User Tag

Create a user tag and add it to users.

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

api_instance = TurnkeyClient::UserTagsApi.new
body = TurnkeyClient::V1CreateUserTagRequest.new # V1CreateUserTagRequest | 


begin
  #Create User Tag
  result = api_instance.create_user_tag(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserTagsApi->create_user_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateUserTagRequest**](V1CreateUserTagRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_user_tags**
> V1ListUserTagsResponse list_user_tags(body)

List User Tags

List all User Tags within an Organization

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

api_instance = TurnkeyClient::UserTagsApi.new
body = TurnkeyClient::V1ListUserTagsRequest.new # V1ListUserTagsRequest | 


begin
  #List User Tags
  result = api_instance.list_user_tags(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserTagsApi->list_user_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ListUserTagsRequest**](V1ListUserTagsRequest.md)|  | 

### Return type

[**V1ListUserTagsResponse**](V1ListUserTagsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_tag**
> V1ActivityResponse update_user_tag(body)

Update User Tag

Update human-readable name or associated users. Note that this activity is atomic: all of the updates will succeed at once, or all of them will fail.

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

api_instance = TurnkeyClient::UserTagsApi.new
body = TurnkeyClient::V1UpdateUserTagRequest.new # V1UpdateUserTagRequest | 


begin
  #Update User Tag
  result = api_instance.update_user_tag(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling UserTagsApi->update_user_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1UpdateUserTagRequest**](V1UpdateUserTagRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



