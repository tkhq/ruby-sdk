# TurnkeyClient::V1WebAuthnStamp

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credential_id** | **String** | A base64 url encoded Unique identifier for a given credential. | 
**client_data_json** | **String** | A base64 encoded payload containing metadata about the signing context and the challenge. | 
**authenticator_data** | **String** | A base64 encoded payload containing metadata about the authenticator. | 
**signature** | **String** | The base64 url encoded signature bytes contained within the WebAuthn assertion response. | 

