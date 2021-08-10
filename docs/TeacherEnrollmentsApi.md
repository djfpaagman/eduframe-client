# Eduframe::TeacherEnrollmentsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_teacher_enrollments_id**](TeacherEnrollmentsApi.md#delete_teacher_enrollments_id) | **DELETE** /teacher_enrollments/{id} | Delete a teacher enrollment.
[**get_planned_courses_planned_course_id_teacher_enrollments**](TeacherEnrollmentsApi.md#get_planned_courses_planned_course_id_teacher_enrollments) | **GET** /planned_courses/{planned_course_id}/teacher_enrollments | Get all teacher enrollments for given planned course.
[**get_teacher_enrollments**](TeacherEnrollmentsApi.md#get_teacher_enrollments) | **GET** /teacher_enrollments | Get all teacher enrollments.
[**post_planned_courses_planned_course_id_teacher_enrollments**](TeacherEnrollmentsApi.md#post_planned_courses_planned_course_id_teacher_enrollments) | **POST** /planned_courses/{planned_course_id}/teacher_enrollments | Enroll a teacher to the given planned course.
[**post_teacher_enrollments**](TeacherEnrollmentsApi.md#post_teacher_enrollments) | **POST** /teacher_enrollments | Enroll a teacher to a planned_course.
[**put_teacher_enrollments_id**](TeacherEnrollmentsApi.md#put_teacher_enrollments_id) | **PUT** /teacher_enrollments/{id} | Update a teacher enrollment.


# **delete_teacher_enrollments_id**
> TeacherEnrollment delete_teacher_enrollments_id(id)

Delete a teacher enrollment.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

id = 8.14 # Float | 


begin
  #Delete a teacher enrollment.
  result = api_instance.delete_teacher_enrollments_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->delete_teacher_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**TeacherEnrollment**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planned_courses_planned_course_id_teacher_enrollments**
> Array&lt;TeacherEnrollment&gt; get_planned_courses_planned_course_id_teacher_enrollments(planned_course_id, opts)

Get all teacher enrollments for given planned course.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

planned_course_id = 'planned_course_id_example' # String | Filter results on planned_course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all teacher enrollments for given planned course.
  result = api_instance.get_planned_courses_planned_course_id_teacher_enrollments(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->get_planned_courses_planned_course_id_teacher_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **String**| Filter results on planned_course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;TeacherEnrollment&gt;**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_teacher_enrollments**
> Array&lt;TeacherEnrollment&gt; get_teacher_enrollments(planned_course_id, opts)

Get all teacher enrollments.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

planned_course_id = 'planned_course_id_example' # String | Filter results on planned_course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all teacher enrollments.
  result = api_instance.get_teacher_enrollments(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->get_teacher_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **String**| Filter results on planned_course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;TeacherEnrollment&gt;**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_planned_courses_planned_course_id_teacher_enrollments**
> TeacherEnrollment post_planned_courses_planned_course_id_teacher_enrollments(planned_course_id, opts)

Enroll a teacher to the given planned course.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

planned_course_id = 8.14 # Float | Unique identifier of the planned course.

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Enroll a teacher to the given planned course.
  result = api_instance.post_planned_courses_planned_course_id_teacher_enrollments(planned_course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->post_planned_courses_planned_course_id_teacher_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planned_course_id** | **Float**| Unique identifier of the planned course. | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**TeacherEnrollment**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_teacher_enrollments**
> TeacherEnrollment post_teacher_enrollments(opts)

Enroll a teacher to a planned_course.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Enroll a teacher to a planned_course.
  result = api_instance.post_teacher_enrollments(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->post_teacher_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**TeacherEnrollment**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_teacher_enrollments_id**
> TeacherEnrollment put_teacher_enrollments_id(id, opts)

Update a teacher enrollment.



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

api_instance = Eduframe::TeacherEnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a teacher enrollment.
  result = api_instance.put_teacher_enrollments_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherEnrollmentsApi->put_teacher_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**TeacherEnrollment**](TeacherEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



