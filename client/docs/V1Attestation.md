# SwaggerClient::V1Attestation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credential_id** | **String** | The cbor encoded then base64 url encoded id of the credential. | 
**client_data_json** | **String** | A base64 url encoded payload containing metadata about the signing context and the challenge. | 
**attestation_object** | **String** | A base64 url encoded payload containing authenticator data and any attestation the webauthn provider chooses. | 
**transports** | [**Array&lt;V1AuthenticatorTransport&gt;**](V1AuthenticatorTransport.md) | The type of authenticator transports. | 

