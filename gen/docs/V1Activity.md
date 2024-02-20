# SwaggerClient::V1Activity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for a given Activity object. | 
**organization_id** | **String** | Unique identifier for a given Organization. | 
**status** | [**V1ActivityStatus**](V1ActivityStatus.md) |  | 
**type** | [**V1ActivityType**](V1ActivityType.md) |  | 
**intent** | [**V1Intent**](V1Intent.md) |  | 
**result** | [**V1Result**](V1Result.md) |  | 
**votes** | [**Array&lt;V1Vote&gt;**](V1Vote.md) | A list of objects representing a particular User&#x27;s approval or rejection of a Consensus request, including all relevant metadata. | 
**fingerprint** | **String** | An artifact verifying a User&#x27;s action. | 
**can_approve** | **BOOLEAN** |  | 
**can_reject** | **BOOLEAN** |  | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 

