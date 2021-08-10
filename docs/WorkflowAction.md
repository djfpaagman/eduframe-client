# Eduframe::WorkflowAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the action. | 
**required** | **BOOLEAN** | Boolean indicating if the action enabled value can be set to false | 
**type** | **String** | One of the allowed action types. | 
**event** | **String** | Event to fire at | 
**model_class** | **String** | Referenced model | 
**template_id** | **Float** | Unique identifier of the template. | 
**template_type** | **String** | Class identifier of the template. | 
**course_id** | **Float** | Unique identifier of the connected course | [optional] 
**enabled** | **BOOLEAN** | The default value is true. When put to false the action will not create any dispatches. | [optional] 
**relative_to** | **String** | Perform relative to (start_date, end_date, due_date). | [optional] 
**relative_hours** | **Float** | Perform with relative hours. | [optional] 
**template** | **Object** |  | [optional] 


