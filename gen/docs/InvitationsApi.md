# TurnkeyClient::InvitationsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invitations**](InvitationsApi.md#create_invitations) | **POST** /public/v1/submit/create_invitations | Create Invitations
[**delete_invitation**](InvitationsApi.md#delete_invitation) | **POST** /public/v1/submit/delete_invitation | Delete Invitation

# **create_invitations**
> V1ActivityResponse create_invitations(body)

Create Invitations

Create Invitations to join an existing Organization

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

api_instance = TurnkeyClient::InvitationsApi.new
body = TurnkeyClient::V1CreateInvitationsRequest.new # V1CreateInvitationsRequest | 


begin
  #Create Invitations
  result = api_instance.create_invitations(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling InvitationsApi->create_invitations: #{e}"
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



# **delete_invitation**
> V1ActivityResponse delete_invitation(body)

Delete Invitation

Delete an existing Invitation

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

api_instance = TurnkeyClient::InvitationsApi.new
body = TurnkeyClient::V1DeleteInvitationRequest.new # V1DeleteInvitationRequest | 


begin
  #Delete Invitation
  result = api_instance.delete_invitation(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling InvitationsApi->delete_invitation: #{e}"
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



