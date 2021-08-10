# Eduframe::PlannedCourse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the user. | 
**status** | **String** | State of the planned course | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**duration_in_days** | **Float** | The period of time of the planned course. For flexible planned courses this equals the provided +duration+. For fixed planned courses this equals the number of meetings if any, if the fixed planned course has no meetings, it&#39;s the number of days between the start and end date.  | 
**availability_state** | **String** | By default this is just +open+. However, you can make this planned course available for a subset of accounts. If that&#39;s the case the state is +closed+.  | 
**payable** | **BOOLEAN** | Boolean wether there are payments involved for this course. Basically its true if the cost_scheme is +student+ or +order+.  | 
**current_participants** | **Float** | The current amount of participants. | 
**confirmed_active_and_completed_enrollments_count** | **Float** | The amount of confirmed active and completed enrollments. | 
**requested_enrollments_count** | **Float** | The amount of requested enrollments. ie. the number of reserved seats | 
**available_places** | **BOOLEAN** | Boolean if there are any places available. | 
**canvas_link** | **String** | URL to the course in canvas. Is only returned if available. | [optional] 
**currency** | **String** | The currency of the cost. | 
**cost_multiplier** | **String** | A positive float representing the multiplier for the VAT. Say you have 21% VAT, this will return +1.21+.  | 
**is_published** | **BOOLEAN** | Boolean if is published on the website. | [optional] 
**course_id** | **Float** | Unique identifier of the course. | 
**type** | **String** | The type of the course. | 
**start_date** | **String** | Date at which the planned course starts. Only needed for fixed planned courses. | [optional] 
**end_date** | **String** | Date at which the planned course ends. Only needed for fixed planned courses. | [optional] 
**min_participants** | **Float** | A number representing the minimum number of participants that can enroll for the planned course. | [optional] 
**max_participants** | **Float** | A number representing the maximum number of participants that can enroll for the planned course. | [optional] 
**cost_scheme** | **String** | The cost schema that the payment will follow for the specified course. | 
**cost** | **String** | A positive float representing the price of the planned course. | [optional] 
**course_variant_id** | **Float** | Unique identifier of the course variant. | [optional] 
**course_location_id** | **Float** | Unique identifier of the course location. | [optional] 
**catalog_variant** | **Object** |  | [optional] 
**course** | **Object** |  | [optional] 
**course_location** | **Object** |  | [optional] 
**course_variant** | **Object** |  | [optional] 
**teachers** | **Array&lt;Object&gt;** |  | [optional] 
**meetings** | **Array&lt;Object&gt;** |  | [optional] 


