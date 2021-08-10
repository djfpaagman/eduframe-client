# Eduframe::PlannedCoursesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_courses_course_id_planned_courses**](PlannedCoursesApi.md#get_courses_course_id_planned_courses) | **GET** /courses/{course_id}/planned_courses | Get all planned course records of a single course
[**get_courses_course_id_planned_courses_id**](PlannedCoursesApi.md#get_courses_course_id_planned_courses_id) | **GET** /courses/{course_id}/planned_courses/{id} | Get a planned course record of a single course
[**get_planned_courses**](PlannedCoursesApi.md#get_planned_courses) | **GET** /planned_courses | Get all planned course records
[**get_planned_courses_id**](PlannedCoursesApi.md#get_planned_courses_id) | **GET** /planned_courses/{id} | Get a planned course record
[**post_planned_courses**](PlannedCoursesApi.md#post_planned_courses) | **POST** /planned_courses | Create a planned course.
[**put_planned_courses_cancel_batch**](PlannedCoursesApi.md#put_planned_courses_cancel_batch) | **PUT** /planned_courses/cancel_batch | Cancel planned courses in batch.
[**put_planned_courses_id**](PlannedCoursesApi.md#put_planned_courses_id) | **PUT** /planned_courses/{id} | Update a planned course.
[**put_planned_courses_id_cancel**](PlannedCoursesApi.md#put_planned_courses_id_cancel) | **PUT** /planned_courses/{id}/cancel | Cancel a planned course.


# **get_courses_course_id_planned_courses**
> Array&lt;PlannedCourse&gt; get_courses_course_id_planned_courses(course_id, opts)

Get all planned course records of a single course



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

api_instance = Eduframe::PlannedCoursesApi.new

course_id = ['course_id_example'] # Array<String> | Filter results on course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  closed_for_account_id: 'closed_for_account_id_example', # String | Filter results on closed_for_account_id
  min_cost: 'min_cost_example', # String | Filter results on min_cost
  max_cost: 'max_cost_example', # String | Filter results on max_cost
  type: 'type_example', # String | Filter results on type
  publicly_available: 'publicly_available_example', # String | Filter results on publicly_available
  parents_published: 'parents_published_example', # String | Filter results on parents_published
  published_public: 'published_public_example', # String | Filter results on published_public
  visible_for_user_id: 'visible_for_user_id_example', # String | Filter results on visible_for_user_id
  start_date: 'start_date_example', # String | Filter results on start_date
  start_date_in_month: 'start_date_in_month_example', # String | Filter results on start_date_in_month
  start_date_from: 'start_date_from_example', # String | Filter results on start_date_from
  start_date_until: 'start_date_until_example', # String | Filter results on start_date_until
  availability_state: 'availability_state_example', # String | Filter results on availability_state
  id: ['id_example'], # Array<String> | Filter results on id
  not_id: ['not_id_example'], # Array<String> | Filter results on not_id
  status: ['status_example'], # Array<String> | Filter results on status
  course_label_ids: ['course_label_ids_example'], # Array<String> | Filter results on course_label_ids
  course_variant_id: ['course_variant_id_example'], # Array<String> | Filter results on course_variant_id
  course_location_id: ['course_location_id_example'], # Array<String> | Filter results on course_location_id
  course_category_id: ['course_category_id_example'], # Array<String> | Filter results on course_category_id
  course_credit_category_id: ['course_credit_category_id_example'], # Array<String> | Filter results on course_credit_category_id
  teacher_ids: ['teacher_ids_example'], # Array<String> | Filter results on teacher_ids
  enrollments_status: ['enrollments_status_example'], # Array<String> | Filter results on enrollments_status
  attendee_ids: ['attendee_ids_example'], # Array<String> | Filter results on attendee_ids
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all planned course records of a single course
  result = api_instance.get_courses_course_id_planned_courses(course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->get_courses_course_id_planned_courses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **closed_for_account_id** | **String**| Filter results on closed_for_account_id | [optional] 
 **min_cost** | **String**| Filter results on min_cost | [optional] 
 **max_cost** | **String**| Filter results on max_cost | [optional] 
 **type** | **String**| Filter results on type | [optional] 
 **publicly_available** | **String**| Filter results on publicly_available | [optional] 
 **parents_published** | **String**| Filter results on parents_published | [optional] 
 **published_public** | **String**| Filter results on published_public | [optional] 
 **visible_for_user_id** | **String**| Filter results on visible_for_user_id | [optional] 
 **start_date** | **String**| Filter results on start_date | [optional] 
 **start_date_in_month** | **String**| Filter results on start_date_in_month | [optional] 
 **start_date_from** | **String**| Filter results on start_date_from | [optional] 
 **start_date_until** | **String**| Filter results on start_date_until | [optional] 
 **availability_state** | **String**| Filter results on availability_state | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **not_id** | [**Array&lt;String&gt;**](String.md)| Filter results on not_id | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 
 **course_label_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on course_label_ids | [optional] 
 **course_variant_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_variant_id | [optional] 
 **course_location_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_location_id | [optional] 
 **course_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_category_id | [optional] 
 **course_credit_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_credit_category_id | [optional] 
 **teacher_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on teacher_ids | [optional] 
 **enrollments_status** | [**Array&lt;String&gt;**](String.md)| Filter results on enrollments_status | [optional] 
 **attendee_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on attendee_ids | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;PlannedCourse&gt;**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_courses_course_id_planned_courses_id**
> PlannedCourse get_courses_course_id_planned_courses_id(id, course_id, opts)

Get a planned course record of a single course



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

api_instance = Eduframe::PlannedCoursesApi.new

id = 8.14 # Float | 

course_id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a planned course record of a single course
  result = api_instance.get_courses_course_id_planned_courses_id(id, course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->get_courses_course_id_planned_courses_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **course_id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**PlannedCourse**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planned_courses**
> Array&lt;PlannedCourse&gt; get_planned_courses(course_id, opts)

Get all planned course records



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

api_instance = Eduframe::PlannedCoursesApi.new

course_id = ['course_id_example'] # Array<String> | Filter results on course_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  closed_for_account_id: 'closed_for_account_id_example', # String | Filter results on closed_for_account_id
  min_cost: 'min_cost_example', # String | Filter results on min_cost
  max_cost: 'max_cost_example', # String | Filter results on max_cost
  type: 'type_example', # String | Filter results on type
  publicly_available: 'publicly_available_example', # String | Filter results on publicly_available
  parents_published: 'parents_published_example', # String | Filter results on parents_published
  published_public: 'published_public_example', # String | Filter results on published_public
  visible_for_user_id: 'visible_for_user_id_example', # String | Filter results on visible_for_user_id
  start_date: 'start_date_example', # String | Filter results on start_date
  start_date_in_month: 'start_date_in_month_example', # String | Filter results on start_date_in_month
  start_date_from: 'start_date_from_example', # String | Filter results on start_date_from
  start_date_until: 'start_date_until_example', # String | Filter results on start_date_until
  availability_state: 'availability_state_example', # String | Filter results on availability_state
  id: ['id_example'], # Array<String> | Filter results on id
  not_id: ['not_id_example'], # Array<String> | Filter results on not_id
  status: ['status_example'], # Array<String> | Filter results on status
  course_label_ids: ['course_label_ids_example'], # Array<String> | Filter results on course_label_ids
  course_variant_id: ['course_variant_id_example'], # Array<String> | Filter results on course_variant_id
  course_location_id: ['course_location_id_example'], # Array<String> | Filter results on course_location_id
  course_category_id: ['course_category_id_example'], # Array<String> | Filter results on course_category_id
  course_credit_category_id: ['course_credit_category_id_example'], # Array<String> | Filter results on course_credit_category_id
  teacher_ids: ['teacher_ids_example'], # Array<String> | Filter results on teacher_ids
  enrollments_status: ['enrollments_status_example'], # Array<String> | Filter results on enrollments_status
  attendee_ids: ['attendee_ids_example'], # Array<String> | Filter results on attendee_ids
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all planned course records
  result = api_instance.get_planned_courses(course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->get_planned_courses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **closed_for_account_id** | **String**| Filter results on closed_for_account_id | [optional] 
 **min_cost** | **String**| Filter results on min_cost | [optional] 
 **max_cost** | **String**| Filter results on max_cost | [optional] 
 **type** | **String**| Filter results on type | [optional] 
 **publicly_available** | **String**| Filter results on publicly_available | [optional] 
 **parents_published** | **String**| Filter results on parents_published | [optional] 
 **published_public** | **String**| Filter results on published_public | [optional] 
 **visible_for_user_id** | **String**| Filter results on visible_for_user_id | [optional] 
 **start_date** | **String**| Filter results on start_date | [optional] 
 **start_date_in_month** | **String**| Filter results on start_date_in_month | [optional] 
 **start_date_from** | **String**| Filter results on start_date_from | [optional] 
 **start_date_until** | **String**| Filter results on start_date_until | [optional] 
 **availability_state** | **String**| Filter results on availability_state | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **not_id** | [**Array&lt;String&gt;**](String.md)| Filter results on not_id | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 
 **course_label_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on course_label_ids | [optional] 
 **course_variant_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_variant_id | [optional] 
 **course_location_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_location_id | [optional] 
 **course_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_category_id | [optional] 
 **course_credit_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_credit_category_id | [optional] 
 **teacher_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on teacher_ids | [optional] 
 **enrollments_status** | [**Array&lt;String&gt;**](String.md)| Filter results on enrollments_status | [optional] 
 **attendee_ids** | [**Array&lt;String&gt;**](String.md)| Filter results on attendee_ids | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;PlannedCourse&gt;**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planned_courses_id**
> PlannedCourse get_planned_courses_id(id, opts)

Get a planned course record



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

api_instance = Eduframe::PlannedCoursesApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a planned course record
  result = api_instance.get_planned_courses_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->get_planned_courses_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**PlannedCourse**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_planned_courses**
> PlannedCourse post_planned_courses(opts)

Create a planned course.



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

api_instance = Eduframe::PlannedCoursesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a planned course.
  result = api_instance.post_planned_courses(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->post_planned_courses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlannedCourse**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_planned_courses_cancel_batch**
> Array&lt;PlannedCourse&gt; put_planned_courses_cancel_batch(opts)

Cancel planned courses in batch.



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

api_instance = Eduframe::PlannedCoursesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel planned courses in batch.
  result = api_instance.put_planned_courses_cancel_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->put_planned_courses_cancel_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;PlannedCourse&gt;**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_planned_courses_id**
> PlannedCourse put_planned_courses_id(id, opts)

Update a planned course.



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

api_instance = Eduframe::PlannedCoursesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a planned course.
  result = api_instance.put_planned_courses_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->put_planned_courses_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlannedCourse**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_planned_courses_id_cancel**
> PlannedCourse put_planned_courses_id_cancel(id, opts)

Cancel a planned course.



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

api_instance = Eduframe::PlannedCoursesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel a planned course.
  result = api_instance.put_planned_courses_id_cancel(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlannedCoursesApi->put_planned_courses_id_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlannedCourse**](PlannedCourse.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



