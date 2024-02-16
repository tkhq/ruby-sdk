# SwaggerClient::V1PrivateKey

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**private_key_id** | **String** | Unique identifier for a given Private Key. | 
**public_key** | **String** | The public component of a cryptographic key pair used to sign messages and transactions. | 
**private_key_name** | **String** | Human-readable name for a Private Key. | 
**curve** | [**V1Curve**](V1Curve.md) |  | 
**addresses** | [**Array&lt;Externaldatav1Address&gt;**](Externaldatav1Address.md) | Derived cryptocurrency addresses for a given Private Key. | 
**private_key_tags** | **Array&lt;String&gt;** | A list of Private Key Tag IDs. | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**exported** | **BOOLEAN** | True when a given Private Key is exported, false otherwise. | 

