# Eduframe::CalendarItemsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_calendar_items_resources_type**](CalendarItemsApi.md#get_calendar_items_resources_type) | **GET** /calendar/items/{resources_type} | Get all items for a specific type


# **get_calendar_items_resources_type**
> Array&lt;CalendarItem&gt; get_calendar_items_resources_type(resources_type, opts)

Get all items for a specific type



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

api_instance = Eduframe::CalendarItemsApi.new

resources_type = 'resources_type_example' # String | Specify the type of resource. Leave empty to show all items.

opts = { 
  start_before: 'start_before_example', # String | Filter results on start_before
  start_after: 'start_after_example', # String | Filter results on start_after
  end_before: 'end_before_example', # String | Filter results on end_before
  end_after: 'end_after_example', # String | Filter results on end_after
  canceled: 'canceled_example', # String | Filter results on canceled
  planned_course_id: ['planned_course_id_example'], # Array<String> | Filter results on planned_course_id
  course_id: ['course_id_example'], # Array<String> | Filter results on course_id
  course_category_id: ['course_category_id_example'], # Array<String> | Filter results on course_category_id
  edition_id: ['edition_id_example'], # Array<String> | Filter results on edition_id
  teacher_id: ['teacher_id_example'], # Array<String> | Filter results on teacher_id
  teacher_role_id: ['teacher_role_id_example'], # Array<String> | Filter results on teacher_role_id
  program_id: ['program_id_example'], # Array<String> | Filter results on program_id
  meeting_location_id: ['meeting_location_id_example'], # Array<String> | Filter results on meeting_location_id
  planning_meeting_location_id: ['planning_meeting_location_id_example'], # Array<String> | Filter results on planning_meeting_location_id
  course_location_id: ['course_location_id_example'], # Array<String> | Filter results on course_location_id
  item_type: ['item_type_example'], # Array<String> | Filter results on item_type
  material_id: ['material_id_example'] # Array<String> | Filter results on material_id
}

begin
  #Get all items for a specific type
  result = api_instance.get_calendar_items_resources_type(resources_type, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CalendarItemsApi->get_calendar_items_resources_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resources_type** | **String**| Specify the type of resource. Leave empty to show all items. | 
 **start_before** | **String**| Filter results on start_before | [optional] 
 **start_after** | **String**| Filter results on start_after | [optional] 
 **end_before** | **String**| Filter results on end_before | [optional] 
 **end_after** | **String**| Filter results on end_after | [optional] 
 **canceled** | **String**| Filter results on canceled | [optional] 
 **planned_course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on planned_course_id | [optional] 
 **course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_id | [optional] 
 **course_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_category_id | [optional] 
 **edition_id** | [**Array&lt;String&gt;**](String.md)| Filter results on edition_id | [optional] 
 **teacher_id** | [**Array&lt;String&gt;**](String.md)| Filter results on teacher_id | [optional] 
 **teacher_role_id** | [**Array&lt;String&gt;**](String.md)| Filter results on teacher_role_id | [optional] 
 **program_id** | [**Array&lt;String&gt;**](String.md)| Filter results on program_id | [optional] 
 **meeting_location_id** | [**Array&lt;String&gt;**](String.md)| Filter results on meeting_location_id | [optional] 
 **planning_meeting_location_id** | [**Array&lt;String&gt;**](String.md)| Filter results on planning_meeting_location_id | [optional] 
 **course_location_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_location_id | [optional] 
 **item_type** | [**Array&lt;String&gt;**](String.md)| Filter results on item_type | [optional] 
 **material_id** | [**Array&lt;String&gt;**](String.md)| Filter results on material_id | [optional] 

### Return type

[**Array&lt;CalendarItem&gt;**](CalendarItem.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



