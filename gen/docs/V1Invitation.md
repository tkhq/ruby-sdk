# SwaggerClient::V1Invitation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invitation_id** | **String** | Unique identifier for a given Invitation object. | 
**receiver_user_name** | **String** | The name of the intended Invitation recipient. | 
**receiver_email** | **String** | The email address of the intended Invitation recipient. | 
**receiver_user_tags** | **Array&lt;String&gt;** | A list of tags assigned to the Invitation recipient. | 
**access_type** | [**V1AccessType**](V1AccessType.md) |  | 
**status** | [**V1InvitationStatus**](V1InvitationStatus.md) |  | 
**created_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**updated_at** | [**Externaldatav1Timestamp**](Externaldatav1Timestamp.md) |  | 
**sender_user_id** | **String** | Unique identifier for the Sender of an Invitation. | 

