# TurnkeyClient::V1WalletAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **String** | The Organization the Account belongs to. | 
**wallet_id** | **String** | The Wallet the Account was derived from. | 
**curve** | [**V1Curve**](V1Curve.md) |  | 
**path_format** | [**V1PathFormat**](V1PathFormat.md) |  | 
**path** | **String** | Path used to generate the Account. | 
**address_format** | [**V1AddressFormat**](V1AddressFormat.md) |  | 
**address** | **String** | Address generated using the Wallet seed and Account parameters. | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**exported** | **BOOLEAN** | True when a given Account is exported, false otherwise. | 

