# Eduframe::ProgramEnrollmentsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_program_enrollments**](ProgramEnrollmentsApi.md#get_program_enrollments) | **GET** /program/enrollments | Get all program enrollments
[**get_program_enrollments_id**](ProgramEnrollmentsApi.md#get_program_enrollments_id) | **GET** /program/enrollments/{id} | Get a program enrollment record
[**put_program_enrollments_id_cancel**](ProgramEnrollmentsApi.md#put_program_enrollments_id_cancel) | **PUT** /program/enrollments/{id}/cancel | Cancel a program enrollment


# **get_program_enrollments**
> Array&lt;ProgramEnrollment&gt; get_program_enrollments(opts)

Get all program enrollments



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

api_instance = Eduframe::ProgramEnrollmentsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  student_id: 'student_id_example', # String | Filter results on student_id
  edition_id: 'edition_id_example', # String | Filter results on edition_id
  state: 'state_example', # String | Filter results on state
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all program enrollments
  result = api_instance.get_program_enrollments(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEnrollmentsApi->get_program_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **student_id** | **String**| Filter results on student_id | [optional] 
 **edition_id** | **String**| Filter results on edition_id | [optional] 
 **state** | **String**| Filter results on state | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;ProgramEnrollment&gt;**](ProgramEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_program_enrollments_id**
> ProgramEnrollment get_program_enrollments_id(id, opts)

Get a program enrollment record



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

api_instance = Eduframe::ProgramEnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a program enrollment record
  result = api_instance.get_program_enrollments_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEnrollmentsApi->get_program_enrollments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**ProgramEnrollment**](ProgramEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_program_enrollments_id_cancel**
> ProgramEnrollment put_program_enrollments_id_cancel(id, opts)

Cancel a program enrollment



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

api_instance = Eduframe::ProgramEnrollmentsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel a program enrollment
  result = api_instance.put_program_enrollments_id_cancel(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEnrollmentsApi->put_program_enrollments_id_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**ProgramEnrollment**](ProgramEnrollment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



