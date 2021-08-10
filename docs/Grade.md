# Eduframe::Grade

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the grade | 
**grader_id** | **Float** | Unique identifier of the user that awarded this grade | 
**result** | **String** | The actual grade which is either the grade or the score / denominator | 
**created_at** | **String** | Timestamp of creation | 
**updated_at** | **String** | Timestamp of last update | 
**grade** | **String** | The grade awarded (at least one of grade and score is required) | 
**score** | **Float** | The score awarded (at least one of grade and score is required) | 
**denominator** | **Float** | Maximum available score | [optional] 
**gradeable_id** | **Float** | Unique model identifier of the gradeable (enrollment / ...) | 
**gradeable_type** | **String** | Model type of the gradeable (enrollment / ...) | 
**comment** | **String** | Additional comment about the grade | [optional] 


