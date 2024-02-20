# TurnkeyClient::PrivateKeyTagsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_private_key_tag**](PrivateKeyTagsApi.md#create_private_key_tag) | **POST** /public/v1/submit/create_private_key_tag | Create Private Key Tag
[**list_private_key_tags**](PrivateKeyTagsApi.md#list_private_key_tags) | **POST** /public/v1/query/list_private_key_tags | List Private Key Tags
[**update_private_key_tag**](PrivateKeyTagsApi.md#update_private_key_tag) | **POST** /public/v1/submit/update_private_key_tag | Update Private Key Tag

# **create_private_key_tag**
> V1ActivityResponse create_private_key_tag(body)

Create Private Key Tag

Create a private key tag and add it to private keys.

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

api_instance = TurnkeyClient::PrivateKeyTagsApi.new
body = TurnkeyClient::V1CreatePrivateKeyTagRequest.new # V1CreatePrivateKeyTagRequest | 


begin
  #Create Private Key Tag
  result = api_instance.create_private_key_tag(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeyTagsApi->create_private_key_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreatePrivateKeyTagRequest**](V1CreatePrivateKeyTagRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_private_key_tags**
> V1ListPrivateKeyTagsResponse list_private_key_tags(body)

List Private Key Tags

List all Private Key Tags within an Organization

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

api_instance = TurnkeyClient::PrivateKeyTagsApi.new
body = TurnkeyClient::V1ListPrivateKeyTagsRequest.new # V1ListPrivateKeyTagsRequest | 


begin
  #List Private Key Tags
  result = api_instance.list_private_key_tags(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeyTagsApi->list_private_key_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ListPrivateKeyTagsRequest**](V1ListPrivateKeyTagsRequest.md)|  | 

### Return type

[**V1ListPrivateKeyTagsResponse**](V1ListPrivateKeyTagsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_private_key_tag**
> V1ActivityResponse update_private_key_tag(body)

Update Private Key Tag

Update human-readable name or associated private keys. Note that this activity is atomic: all of the updates will succeed at once, or all of them will fail.

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

api_instance = TurnkeyClient::PrivateKeyTagsApi.new
body = TurnkeyClient::V1UpdatePrivateKeyTagRequest.new # V1UpdatePrivateKeyTagRequest | 


begin
  #Update Private Key Tag
  result = api_instance.update_private_key_tag(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PrivateKeyTagsApi->update_private_key_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1UpdatePrivateKeyTagRequest**](V1UpdatePrivateKeyTagRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



