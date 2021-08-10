# Eduframe::EnrollmentsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_enrollments**](EnrollmentsApi.md#get_enrollments) | **GET** /enrollments | Get all enrollment records
[**get_enrollments_id**](EnrollmentsApi.md#get_enrollments_id) | **GET** /enrollments/{id} | Get an enrollment record
[**get_students_student_id_enrollments**](EnrollmentsApi.md#get_students_student_id_enrollments) | **GET** /students/{student_id}/enrollments | Get all enrollment records of a user
[**get_students_student_id_enrollments_id**](EnrollmentsApi.md#get_students_student_id_enrollments_id) | **GET** /students/{student_id}/enrollments/{id} | Get an enrollment record
[**put_enrollments_award_certificates_batch**](EnrollmentsApi.md#put_enrollments_award_certificates_batch) | **PUT** /enrollments/award_certificates_batch | Award certificates to enrollments in batch
[**put_enrollments_award_credits_batch**](EnrollmentsApi.md#put_enrollments_award_credits_batch) | **PUT** /enrollments/award_credits_batch | Award credits to enrollments in batch
[**put_enrollments_cancel_batch**](EnrollmentsApi.md#put_enrollments_cancel_batch) | **PUT** /enrollments/cancel_batch | Cancel enrollments in batch
[**put_enrollments_fail_batch**](EnrollmentsApi.md#put_enrollments_fail_batch) | **PUT** /enrollments/fail_batch | Fail enrollments in batch
[**put_enrollments_id**](EnrollmentsApi.md#put_enrollments_id) | **PUT** /enrollments/{id} | Update an enrollment
[**put_enrollments_id_cancel**](EnrollmentsApi.md#put_enrollments_id_cancel) | **PUT** /enrollments/{id}/cancel | Cancel an enrollment
[**put_enrollments_pass_batch**](EnrollmentsApi.md#put_enrollments_pass_batch) | **PUT** /enrollments/pass_batch | Pass enrollments in batch
[**put_enrollments_revoke_graduation_batch**](EnrollmentsApi.md#put_enrollments_revoke_graduation_batch) | **PUT** /enrollments/revoke_graduation_batch | Revoke graduation enrollments in batch


# **get_enrollments**
> Array&lt;Enrollment&gt; get_enrollments(student_id, opts)

Get all enrollment records



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

api_instance = Eduframe::EnrollmentsApi.new

student_id = 'student_id_example' # String | Filter results on student_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  sort: ['sort_example'], # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
  order_id: 'order_id_example', # String | Filter results on order_id
  course_id: 'course_id_example', # String | Filter results on course_id
  planned_course_id: 'planned_course_id_example', # String | Filter results on planned_course_id
  status: ['status_example'] # Array<String> | Filter results on status
}

begin
  #Get all enrollment records
  result = api_instance.get_enrollments(student_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->get_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **student_id** | **String**| Filter results on student_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 
 **order_id** | **String**| Filter results on order_id | [optional] 
 **course_id** | **String**| Filter results on course_id | [optional] 
 **planned_course_id** | **String**| Filter results on planned_course_id | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_enrollments_id**
> Enrollment get_enrollments_id(id, opts)

Get an enrollment record



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

api_instance = Eduframe::EnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an enrollment record
  result = api_instance.get_enrollments_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->get_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Enrollment**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_students_student_id_enrollments**
> Array&lt;Enrollment&gt; get_students_student_id_enrollments(student_id, opts)

Get all enrollment records of a user



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

api_instance = Eduframe::EnrollmentsApi.new

student_id = 'student_id_example' # String | Filter results on student_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  sort: ['sort_example'], # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
  order_id: 'order_id_example', # String | Filter results on order_id
  course_id: 'course_id_example', # String | Filter results on course_id
  planned_course_id: 'planned_course_id_example', # String | Filter results on planned_course_id
  status: ['status_example'] # Array<String> | Filter results on status
}

begin
  #Get all enrollment records of a user
  result = api_instance.get_students_student_id_enrollments(student_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->get_students_student_id_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **student_id** | **String**| Filter results on student_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 
 **order_id** | **String**| Filter results on order_id | [optional] 
 **course_id** | **String**| Filter results on course_id | [optional] 
 **planned_course_id** | **String**| Filter results on planned_course_id | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_students_student_id_enrollments_id**
> Enrollment get_students_student_id_enrollments_id(id, student_id, opts)

Get an enrollment record



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

api_instance = Eduframe::EnrollmentsApi.new

id = 8.14 # Float | 

student_id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an enrollment record
  result = api_instance.get_students_student_id_enrollments_id(id, student_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->get_students_student_id_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **student_id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Enrollment**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_award_certificates_batch**
> Array&lt;Enrollment&gt; put_enrollments_award_certificates_batch(opts)

Award certificates to enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Award certificates to enrollments in batch
  result = api_instance.put_enrollments_award_certificates_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_award_certificates_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_award_credits_batch**
> Array&lt;Enrollment&gt; put_enrollments_award_credits_batch(opts)

Award credits to enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Award credits to enrollments in batch
  result = api_instance.put_enrollments_award_credits_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_award_credits_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_cancel_batch**
> Array&lt;Enrollment&gt; put_enrollments_cancel_batch(opts)

Cancel enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel enrollments in batch
  result = api_instance.put_enrollments_cancel_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_cancel_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_fail_batch**
> Array&lt;Enrollment&gt; put_enrollments_fail_batch(opts)

Fail enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Fail enrollments in batch
  result = api_instance.put_enrollments_fail_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_fail_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_id**
> Enrollment put_enrollments_id(id, opts)

Update an enrollment



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

api_instance = Eduframe::EnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an enrollment
  result = api_instance.put_enrollments_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Enrollment**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_id_cancel**
> Enrollment put_enrollments_id_cancel(id, opts)

Cancel an enrollment



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

api_instance = Eduframe::EnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel an enrollment
  result = api_instance.put_enrollments_id_cancel(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_id_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Enrollment**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_pass_batch**
> Array&lt;Enrollment&gt; put_enrollments_pass_batch(opts)

Pass enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Pass enrollments in batch
  result = api_instance.put_enrollments_pass_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_pass_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_enrollments_revoke_graduation_batch**
> Array&lt;Enrollment&gt; put_enrollments_revoke_graduation_batch(opts)

Revoke graduation enrollments in batch



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

api_instance = Eduframe::EnrollmentsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Revoke graduation enrollments in batch
  result = api_instance.put_enrollments_revoke_graduation_batch(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EnrollmentsApi->put_enrollments_revoke_graduation_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;Enrollment&gt;**](Enrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



