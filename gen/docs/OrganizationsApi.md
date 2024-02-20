# TurnkeyClient::OrganizationsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sub_organization**](OrganizationsApi.md#create_sub_organization) | **POST** /public/v1/submit/create_sub_organization | Create Sub-Organization
[**get_organization**](OrganizationsApi.md#get_organization) | **POST** /public/v1/query/get_organization | Get Organization
[**update_root_quorum**](OrganizationsApi.md#update_root_quorum) | **POST** /public/v1/submit/update_root_quorum | Update Root Quorum

# **create_sub_organization**
> V1ActivityResponse create_sub_organization(body)

Create Sub-Organization

Create a new Sub-Organization

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

api_instance = TurnkeyClient::OrganizationsApi.new
body = TurnkeyClient::V1CreateSubOrganizationRequest.new # V1CreateSubOrganizationRequest | 


begin
  #Create Sub-Organization
  result = api_instance.create_sub_organization(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling OrganizationsApi->create_sub_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateSubOrganizationRequest**](V1CreateSubOrganizationRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organization**
> V1GetOrganizationResponse get_organization(body)

Get Organization

Get details about an Organization

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

api_instance = TurnkeyClient::OrganizationsApi.new
body = TurnkeyClient::V1GetOrganizationRequest.new # V1GetOrganizationRequest | 


begin
  #Get Organization
  result = api_instance.get_organization(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling OrganizationsApi->get_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetOrganizationRequest**](V1GetOrganizationRequest.md)|  | 

### Return type

[**V1GetOrganizationResponse**](V1GetOrganizationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_root_quorum**
> V1ActivityResponse update_root_quorum(body)

Update Root Quorum

Set the threshold and members of the root quorum. This must be approved by the current root quorum.

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

api_instance = TurnkeyClient::OrganizationsApi.new
body = TurnkeyClient::V1UpdateRootQuorumRequest.new # V1UpdateRootQuorumRequest | 


begin
  #Update Root Quorum
  result = api_instance.update_root_quorum(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling OrganizationsApi->update_root_quorum: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1UpdateRootQuorumRequest**](V1UpdateRootQuorumRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



