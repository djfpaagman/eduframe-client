# Eduframe::Task

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the task. | 
**creator_id** | **Float** | Unique identifier of the user who created the task. | 
**completed_at** | **String** | Timestamp of when the task was completed. | 
**completed_by_id** | **Float** | Unique identifier of the user who completed the task. | 
**assigned_by_id** | **Float** | Unique identifier of the user who assigned the task. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**name** | **String** | The title of the task. | [optional] 
**description** | **String** | A string representing the description of the task. | [optional] 
**due_date** | **String** | Date when the task must be completed. | [optional] 
**starred** | **BOOLEAN** | Boolean if the task is starred. | [optional] 
**assignee_id** | **Float** | Unique identifier of the assigned user for the task. | [optional] 
**subject_type** | **String** | Type of the subject. | [optional] 
**subject_id** | **Float** | Identifier of the subject. | [optional] 
**creator** | **Object** |  | [optional] 
**assignee** | **Object** |  | [optional] 
**completed_by** | **Object** |  | [optional] 


