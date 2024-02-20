# TurnkeyClient::V1CreateSubOrganizationIntentV2

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub_organization_name** | **String** | Name for this sub-organization | 
**root_users** | [**Array&lt;V1RootUserParams&gt;**](V1RootUserParams.md) | Root users to create within this sub-organization | 
**root_quorum_threshold** | **Integer** | The threshold of unique approvals to reach root quorum. This value must be less than or equal to the number of root users | 

