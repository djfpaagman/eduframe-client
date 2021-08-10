# Eduframe::CreditDefinitionsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_courses_course_id_credit_definitions**](CreditDefinitionsApi.md#get_courses_course_id_credit_definitions) | **GET** /courses/{course_id}/credit_definitions | Get all credit definition records of a course


# **get_courses_course_id_credit_definitions**
> Array&lt;CreditDefinition&gt; get_courses_course_id_credit_definitions(course_id, opts)

Get all credit definition records of a course



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

api_instance = Eduframe::CreditDefinitionsApi.new

course_id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get all credit definition records of a course
  result = api_instance.get_courses_course_id_credit_definitions(course_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CreditDefinitionsApi->get_courses_course_id_credit_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Array&lt;CreditDefinition&gt;**](CreditDefinition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



