# Eduframe::TeachersAttendeesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_planned_courses_planned_course_id_teacher_attendees**](TeachersAttendeesApi.md#get_planned_courses_planned_course_id_teacher_attendees) | **GET** /planned_courses/{planned_course_id}/teacher_attendees | An overview of all teachers attending a particular course.


# **get_planned_courses_planned_course_id_teacher_attendees**
> Array&lt;TeacherAttendee&gt; get_planned_courses_planned_course_id_teacher_attendees(planned_course_id)

An overview of all teachers attending a particular course.



### Example
```ruby
# load the gem
require 'eduframe-client'
# setup authorization
Eduframe.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: Educator
  config.api_key['educator_slug'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['educator_slug'] = 'Bearer'
end

api_instance = Eduframe::TeachersAttendeesApi.new

planned_course_id = 'planned_course_id_example' # String | Filter results on planned_course_id


begin
  #An overview of all teachers attending a particular course.
  result = api_instance.get_planned_courses_planned_course_id_teacher_attendees(planned_course_id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeachersAttendeesApi->get_planned_courses_planned_course_id_teacher_attendees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **String**| Filter results on planned_course_id | 

### Return type

[**Array&lt;TeacherAttendee&gt;**](TeacherAttendee.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



