# Eduframe::Meeting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the meeting. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**name** | **String** | The name of the meeting. | [optional] 
**planned_course_id** | **Float** | Unique identifier of the planned course. | 
**start_date_time** | **String** | Date and time when the meeting is starting. | 
**end_date_time** | **String** | The date and time when the meeting is ending. | 
**meeting_location_id** | **Float** | Unique identifier of the meeting location. | [optional] 
**teacher_ids** | **Array&lt;Float&gt;** | IDs of assigned teachers. | [optional] 
**description** | **String** | The description of the meeting. | [optional] 
**description_dashboard** | **String** | The description that will be shown in the dashboard. | [optional] 
**teachers** | **Array&lt;Object&gt;** |  | [optional] 
**planning_attendees** | **Array&lt;Object&gt;** |  | [optional] 
**planning_events** | **Array&lt;Object&gt;** |  | [optional] 
**planned_course** | **Object** |  | [optional] 
**meeting_location** | **Object** |  | [optional] 
**planning_meeting_locations** | **Array&lt;Object&gt;** |  | [optional] 
**materials** | **Array&lt;Object&gt;** |  | [optional] 
**planning_materials** | **Array&lt;Object&gt;** |  | [optional] 


