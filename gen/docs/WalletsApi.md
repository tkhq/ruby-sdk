# TurnkeyClient::WalletsApi

All URIs are relative to *https://api.turnkey.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_wallet**](WalletsApi.md#create_wallet) | **POST** /public/v1/submit/create_wallet | Create Wallet
[**create_wallet_accounts**](WalletsApi.md#create_wallet_accounts) | **POST** /public/v1/submit/create_wallet_accounts | Create Wallet Accounts
[**export_wallet**](WalletsApi.md#export_wallet) | **POST** /public/v1/submit/export_wallet | Export Wallet
[**export_wallet_account**](WalletsApi.md#export_wallet_account) | **POST** /public/v1/submit/export_wallet_account | Export Wallet Account
[**get_wallet**](WalletsApi.md#get_wallet) | **POST** /public/v1/query/get_wallet | Get Wallet
[**get_wallet_accounts**](WalletsApi.md#get_wallet_accounts) | **POST** /public/v1/query/list_wallet_accounts | List Wallets Accounts
[**get_wallets**](WalletsApi.md#get_wallets) | **POST** /public/v1/query/list_wallets | List Wallets

# **create_wallet**
> V1ActivityResponse create_wallet(body)

Create Wallet

Create a Wallet and derive addresses

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1CreateWalletRequest.new # V1CreateWalletRequest | 


begin
  #Create Wallet
  result = api_instance.create_wallet(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->create_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateWalletRequest**](V1CreateWalletRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_wallet_accounts**
> V1ActivityResponse create_wallet_accounts(body)

Create Wallet Accounts

Derive additional addresses using an existing wallet

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1CreateWalletAccountsRequest.new # V1CreateWalletAccountsRequest | 


begin
  #Create Wallet Accounts
  result = api_instance.create_wallet_accounts(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->create_wallet_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateWalletAccountsRequest**](V1CreateWalletAccountsRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **export_wallet**
> V1ActivityResponse export_wallet(body)

Export Wallet

Exports a Wallet

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1ExportWalletRequest.new # V1ExportWalletRequest | 


begin
  #Export Wallet
  result = api_instance.export_wallet(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->export_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ExportWalletRequest**](V1ExportWalletRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **export_wallet_account**
> V1ActivityResponse export_wallet_account(body)

Export Wallet Account

Exports a Wallet Account

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1ExportWalletAccountRequest.new # V1ExportWalletAccountRequest | 


begin
  #Export Wallet Account
  result = api_instance.export_wallet_account(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->export_wallet_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1ExportWalletAccountRequest**](V1ExportWalletAccountRequest.md)|  | 

### Return type

[**V1ActivityResponse**](V1ActivityResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallet**
> V1GetWalletResponse get_wallet(body)

Get Wallet

Get details about a Wallet

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1GetWalletRequest.new # V1GetWalletRequest | 


begin
  #Get Wallet
  result = api_instance.get_wallet(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->get_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetWalletRequest**](V1GetWalletRequest.md)|  | 

### Return type

[**V1GetWalletResponse**](V1GetWalletResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallet_accounts**
> V1GetWalletAccountsResponse get_wallet_accounts(body)

List Wallets Accounts

List all Accounts wirhin a Wallet

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1GetWalletAccountsRequest.new # V1GetWalletAccountsRequest | 


begin
  #List Wallets Accounts
  result = api_instance.get_wallet_accounts(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->get_wallet_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetWalletAccountsRequest**](V1GetWalletAccountsRequest.md)|  | 

### Return type

[**V1GetWalletAccountsResponse**](V1GetWalletAccountsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallets**
> V1GetWalletsResponse get_wallets(body)

List Wallets

List all Wallets within an Organization

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

api_instance = TurnkeyClient::WalletsApi.new
body = TurnkeyClient::V1GetWalletsRequest.new # V1GetWalletsRequest | 


begin
  #List Wallets
  result = api_instance.get_wallets(body)
  p result
rescue TurnkeyClient::ApiError => e
  puts "Exception when calling WalletsApi->get_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1GetWalletsRequest**](V1GetWalletsRequest.md)|  | 

### Return type

[**V1GetWalletsResponse**](V1GetWalletsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [AuthenticatorAuth](../README.md#AuthenticatorAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



