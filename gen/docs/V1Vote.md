# SwaggerClient::V1Vote

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for a given Vote object. | 
**user_id** | **String** | Unique identifier for a given User. | 
**user** | [**V1User**](V1User.md) |  | 
**activity_id** | **String** | Unique identifier for a given Activity object. | 
**selection** | **String** |  | 
**message** | **String** | The raw message being signed within a Vote. | 
**public_key** | **String** | The public component of a cryptographic key pair used to sign messages and transactions. | 
**signature** | **String** | The signature applied to a particular vote. | 
**scheme** | **String** | Method used to produce a signature. | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 

