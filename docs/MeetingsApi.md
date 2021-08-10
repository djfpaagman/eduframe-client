# Eduframe::MeetingsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletemeetings_id**](MeetingsApi.md#deletemeetings_id) | **DELETE** /meetings/{id} | Delete a meeting.
[**get_meetings**](MeetingsApi.md#get_meetings) | **GET** /meetings | Get all meeting records
[**get_meetings_id**](MeetingsApi.md#get_meetings_id) | **GET** /meetings/{id} | Get an meeting record
[**get_planned_courses_planned_course_id_meetings**](MeetingsApi.md#get_planned_courses_planned_course_id_meetings) | **GET** /planned_courses/{planned_course_id}/meetings | Get all meeting records of a planned course
[**post_meetings**](MeetingsApi.md#post_meetings) | **POST** /meetings | Create a meeting.
[**post_planned_courses_planned_course_id_meetings**](MeetingsApi.md#post_planned_courses_planned_course_id_meetings) | **POST** /planned_courses/{planned_course_id}/meetings | Create a meeting within a planned course.
[**put_meetings_id**](MeetingsApi.md#put_meetings_id) | **PUT** /meetings/{id} | Update a meeting.


# **deletemeetings_id**
> Meeting deletemeetings_id(id)

Delete a meeting.



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

api_instance = Eduframe::MeetingsApi.new

id = 8.14 # Float | 


begin
  #Delete a meeting.
  result = api_instance.deletemeetings_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->deletemeetings_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_meetings**
> Array&lt;Meeting&gt; get_meetings(planned_course_id, opts)

Get all meeting records



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

api_instance = Eduframe::MeetingsApi.new

planned_course_id = 'planned_course_id_example' # String | Filter results on planned_course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  meeting_location_id: 'meeting_location_id_example', # String | Filter results on meeting_location_id
  for_student_id: 'for_student_id_example', # String | Filter results on for_student_id
  date_from: 'date_from_example', # String | Filter results on date_from
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all meeting records
  result = api_instance.get_meetings(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->get_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **String**| Filter results on planned_course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **meeting_location_id** | **String**| Filter results on meeting_location_id | [optional] 
 **for_student_id** | **String**| Filter results on for_student_id | [optional] 
 **date_from** | **String**| Filter results on date_from | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Meeting&gt;**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_meetings_id**
> Meeting get_meetings_id(id, opts)

Get an meeting record



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

api_instance = Eduframe::MeetingsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an meeting record
  result = api_instance.get_meetings_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->get_meetings_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planned_courses_planned_course_id_meetings**
> Array&lt;Meeting&gt; get_planned_courses_planned_course_id_meetings(planned_course_id, opts)

Get all meeting records of a planned course



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

api_instance = Eduframe::MeetingsApi.new

planned_course_id = 'planned_course_id_example' # String | Filter results on planned_course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  meeting_location_id: 'meeting_location_id_example', # String | Filter results on meeting_location_id
  for_student_id: 'for_student_id_example', # String | Filter results on for_student_id
  date_from: 'date_from_example', # String | Filter results on date_from
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all meeting records of a planned course
  result = api_instance.get_planned_courses_planned_course_id_meetings(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->get_planned_courses_planned_course_id_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **String**| Filter results on planned_course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **meeting_location_id** | **String**| Filter results on meeting_location_id | [optional] 
 **for_student_id** | **String**| Filter results on for_student_id | [optional] 
 **date_from** | **String**| Filter results on date_from | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Meeting&gt;**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_meetings**
> Meeting post_meetings(opts)

Create a meeting.



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

api_instance = Eduframe::MeetingsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a meeting.
  result = api_instance.post_meetings(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->post_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_planned_courses_planned_course_id_meetings**
> Meeting post_planned_courses_planned_course_id_meetings(planned_course_id, opts)

Create a meeting within a planned course.



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

api_instance = Eduframe::MeetingsApi.new

planned_course_id = 8.14 # Float | Unique identifier of the planned course.

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a meeting within a planned course.
  result = api_instance.post_planned_courses_planned_course_id_meetings(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->post_planned_courses_planned_course_id_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **Float**| Unique identifier of the planned course. | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_meetings_id**
> Meeting put_meetings_id(id, opts)

Update a meeting.



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

api_instance = Eduframe::MeetingsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a meeting.
  result = api_instance.put_meetings_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingsApi->put_meetings_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



