# SwaggerClient::InvitationsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**public_api_service_create_invitations**](InvitationsApi.md#public_api_service_create_invitations) | **POST** /public/v1/submit/create_invitations | Create Invitations
[**public_api_service_delete_invitation**](InvitationsApi.md#public_api_service_delete_invitation) | **POST** /public/v1/submit/delete_invitation | Delete Invitation

# **public_api_service_create_invitations**
> V1ActivityResponse public_api_service_create_invitations(body)

Create Invitations

Create Invitations to join an existing Organization

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

api_instance = SwaggerClient::InvitationsApi.new
body = SwaggerClient::V1CreateInvitationsRequest.new # V1CreateInvitationsRequest | 


begin
  #Create Invitations
  result = api_instance.public_api_service_create_invitations(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationsApi->public_api_service_create_invitations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateInvitationsRequest**](V1CreateInvitationsRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **public_api_service_delete_invitation**
> V1ActivityResponse public_api_service_delete_invitation(body)

Delete Invitation

Delete an existing Invitation

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

api_instance = SwaggerClient::InvitationsApi.new
body = SwaggerClient::V1DeleteInvitationRequest.new # V1DeleteInvitationRequest | 


begin
  #Delete Invitation
  result = api_instance.public_api_service_delete_invitation(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvitationsApi->public_api_service_delete_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1DeleteInvitationRequest**](V1DeleteInvitationRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



