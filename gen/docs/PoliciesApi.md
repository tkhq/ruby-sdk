# TurnkeyClient::PoliciesApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_policy**](PoliciesApi.md#create_policy) | **POST** /public/v1/submit/create_policy | Create Policy
[**delete_policy**](PoliciesApi.md#delete_policy) | **POST** /public/v1/submit/delete_policy | Delete Policy
[**get_policies**](PoliciesApi.md#get_policies) | **POST** /public/v1/query/list_policies | List Policies
[**get_policy**](PoliciesApi.md#get_policy) | **POST** /public/v1/query/get_policy | Get Policy
[**update_policy**](PoliciesApi.md#update_policy) | **POST** /public/v1/submit/update_policy | Update Policy

# **create_policy**
> V1ActivityResponse create_policy(body)

Create Policy

Create a new Policy

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

api_instance = TurnkeyClient::PoliciesApi.new
body = TurnkeyClient::V1CreatePolicyRequest.new # V1CreatePolicyRequest | 


begin
  #Create Policy
  result = api_instance.create_policy(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PoliciesApi->create_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreatePolicyRequest**](V1CreatePolicyRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_policy**
> V1ActivityResponse delete_policy(body)

Delete Policy

Delete an existing Policy

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

api_instance = TurnkeyClient::PoliciesApi.new
body = TurnkeyClient::V1DeletePolicyRequest.new # V1DeletePolicyRequest | 


begin
  #Delete Policy
  result = api_instance.delete_policy(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PoliciesApi->delete_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1DeletePolicyRequest**](V1DeletePolicyRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_policies**
> V1GetPoliciesResponse get_policies(body)

List Policies

List all Policies within an Organization

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

api_instance = TurnkeyClient::PoliciesApi.new
body = TurnkeyClient::V1GetPoliciesRequest.new # V1GetPoliciesRequest | 


begin
  #List Policies
  result = api_instance.get_policies(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PoliciesApi->get_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetPoliciesRequest**](V1GetPoliciesRequest.md)|  | 

### Return type

[**V1GetPoliciesResponse**](V1GetPoliciesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_policy**
> V1GetPolicyResponse get_policy(body)

Get Policy

Get details about a Policy

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

api_instance = TurnkeyClient::PoliciesApi.new
body = TurnkeyClient::V1GetPolicyRequest.new # V1GetPolicyRequest | 


begin
  #Get Policy
  result = api_instance.get_policy(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PoliciesApi->get_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetPolicyRequest**](V1GetPolicyRequest.md)|  | 

### Return type

[**V1GetPolicyResponse**](V1GetPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_policy**
> V1ActivityResponse update_policy(body)

Update Policy

Update an existing Policy

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

api_instance = TurnkeyClient::PoliciesApi.new
body = TurnkeyClient::V1UpdatePolicyRequest.new # V1UpdatePolicyRequest | 


begin
  #Update Policy
  result = api_instance.update_policy(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling PoliciesApi->update_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1UpdatePolicyRequest**](V1UpdatePolicyRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



