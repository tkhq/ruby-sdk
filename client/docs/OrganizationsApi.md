# SwaggerClient::OrganizationsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_sub_organization**](OrganizationsApi.md#public_api_service_create_sub_organization) | **POST** /public/v1/submit/create_sub_organization | Create Sub-Organization
[**public_api_service_get_organization**](OrganizationsApi.md#public_api_service_get_organization) | **POST** /public/v1/query/get_organization | Get Organization
[**public_api_service_update_root_quorum**](OrganizationsApi.md#public_api_service_update_root_quorum) | **POST** /public/v1/submit/update_root_quorum | Update Root Quorum

# **public_api_service_create_sub_organization**
> V1ActivityResponse public_api_service_create_sub_organization(body)

Create Sub-Organization

Create a new Sub-Organization

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

api_instance = SwaggerClient::OrganizationsApi.new
body = SwaggerClient::V1CreateSubOrganizationRequest.new # V1CreateSubOrganizationRequest | 


begin
  #Create Sub-Organization
  result = api_instance.public_api_service_create_sub_organization(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganizationsApi->public_api_service_create_sub_organization: #{e}"
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



# **public_api_service_get_organization**
> V1GetOrganizationResponse public_api_service_get_organization(body)

Get Organization

Get details about an Organization

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

api_instance = SwaggerClient::OrganizationsApi.new
body = SwaggerClient::V1GetOrganizationRequest.new # V1GetOrganizationRequest | 


begin
  #Get Organization
  result = api_instance.public_api_service_get_organization(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganizationsApi->public_api_service_get_organization: #{e}"
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



# **public_api_service_update_root_quorum**
> V1ActivityResponse public_api_service_update_root_quorum(body)

Update Root Quorum

Set the threshold and members of the root quorum. This must be approved by the current root quorum.

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

api_instance = SwaggerClient::OrganizationsApi.new
body = SwaggerClient::V1UpdateRootQuorumRequest.new # V1UpdateRootQuorumRequest | 


begin
  #Update Root Quorum
  result = api_instance.public_api_service_update_root_quorum(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganizationsApi->public_api_service_update_root_quorum: #{e}"
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



