# Eduframe::EmailTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the email template. | [optional] 
**model_class** | **String** | The class of the associated model. - Email::Template | [optional] 
**from** | **String** | From field of the email. The default is the educator reply to email. - Email::Template | [optional] 
**title** | **String** | Title that identifies the email template. - Email::Template | [optional] 
**to** | **String** | To field of the email. - Email::Template | [optional] 
**subject** | **String** | Subject of for the email. - Email::Template | [optional] 
**body** | **String** | Body field of the email. - Email::Template | [optional] 
**bcc** | **String** | Bcc field of the email. - Email::Template | [optional] 
**attachments** | **Array&lt;String&gt;** | Array of strings that show the path to the attachment. The default value is an empty array. - Email::Template | [optional] 
**actions** | **Array&lt;Object&gt;** |  | [optional] 


