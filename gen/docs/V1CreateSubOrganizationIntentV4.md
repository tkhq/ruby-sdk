# SwaggerClient::V1CreateSubOrganizationIntentV4

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub_organization_name** | **String** | Name for this sub-organization | 
**root_users** | [**Array&lt;V1RootUserParams&gt;**](V1RootUserParams.md) | Root users to create within this sub-organization | 
**root_quorum_threshold** | **Integer** | The threshold of unique approvals to reach root quorum. This value must be less than or equal to the number of root users | 
**wallet** | [**V1WalletParams**](V1WalletParams.md) |  | [optional] 
**disable_email_recovery** | **BOOLEAN** | Disable email recovery for the sub-organization | [optional] 
**disable_email_auth** | **BOOLEAN** | Disable email auth for the sub-organization | [optional] 

