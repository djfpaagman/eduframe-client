# Eduframe::SignupQuestion

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the question. | 
**position** | **Float** | Position of the question used for ordering. | 
**field_type** | **String** | The type of field. | 
**title** | **String** | The title and label of the question | 
**slug** | **String** | The slug of the question | 
**required** | **BOOLEAN** | Define if this question is required on the Signup page. | 
**for_type** | **String** | Define to what type of models this should be linked. | 
**visibility** | **Array&lt;String&gt;** | List of at what locations you want to show this field in the signup | 
**for_student** | **BOOLEAN** | DEPRECATED: boolean if the question is visible for students. Please use the visibility attribute. | 
**for_customer** | **BOOLEAN** | DEPRECATED: boolean if the question is visible for customers. Please use the visibility attribute. | 
**choices** | **Array&lt;String&gt;** | Array of string with the choice options if the type of the field is select. | 
**system_name** | **String** | The internal system name used for this field. | 
**use_as_duplicate_indicator** | **BOOLEAN** | boolean if the question is use as duplicate indicator. | 


