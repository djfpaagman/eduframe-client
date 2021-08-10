# Eduframe::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the user. | 
**slug** | **String** | The human readable unique identifier, you can also use this to fetch the user. | 
**avatar_url** | **String** | The relative url path to the avatar. | 
**roles** | **Array&lt;String&gt;** | List of roles the user has. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**teacher_headline** | **String** | Short description of the user. | 
**teacher_description** | **String** | Long description of the user. (same as description) | 
**notes_user** | **String** | Short note about the user. | 
**description** | **String** | Long description of the user. (same as teacher_description) | 
**employee_number** | **String** | The employee number of this user. | 
**teacher_enrollments_count** | **Float** | Number of assigned planned courses as a teacher. | 
**first_name** | **String** | First name of the user. | [optional] 
**middle_name** | **String** | Middle name of the user. | [optional] 
**last_name** | **String** | Last name of the user. | [optional] 
**email** | **String** | The e-mail of the user. | [optional] 
**wants_newsletter** | **BOOLEAN** | Boolean representing the possibility of the user to receive newsletters. | [optional] 
**with_authentication** | **BOOLEAN** | If the user should be able to login and thus receive login details by mail. Only relevant when creating the user. | [optional] 
**labels** | **Array&lt;Object&gt;** |  | [optional] 


