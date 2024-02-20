# TurnkeyClient::V1User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | Unique identifier for a given User. | 
**user_name** | **String** | Human-readable name for a User. | 
**user_email** | **String** | The user&#x27;s email address. | [optional] 
**authenticators** | [**Array&lt;V1Authenticator&gt;**](V1Authenticator.md) | A list of Authenticator parameters. | 
**api_keys** | [**Array&lt;V1ApiKey&gt;**](V1ApiKey.md) | A list of API Key parameters. | 
**user_tags** | **Array&lt;String&gt;** | A list of User Tag IDs. | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 

