# TurnkeyClient::V1Authenticator

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transports** | [**Array&lt;V1AuthenticatorTransport&gt;**](V1AuthenticatorTransport.md) | Types of transports that may be used by an Authenticator (e.g., USB, NFC, BLE). | 
**attestation_type** | **String** |  | 
**aaguid** | **String** | Identifier indicating the type of the Security Key. | 
**credential_id** | **String** | Unique identifier for a WebAuthn credential. | 
**model** | **String** | The type of Authenticator device. | 
**credential** | [**Externaldatav1Credential**](Externaldatav1Credential.md) |  | 
**authenticator_id** | **String** | Unique identifier for a given Authenticator. | 
**authenticator_name** | **String** | Human-readable name for an Authenticator. | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 

