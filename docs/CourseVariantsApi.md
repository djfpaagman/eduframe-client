# Eduframe::CourseVariantsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_course_variants**](CourseVariantsApi.md#get_course_variants) | **GET** /course_variants | Get all course variant records
[**get_course_variants_id**](CourseVariantsApi.md#get_course_variants_id) | **GET** /course_variants/{id} | Get a course variant record
[**post_course_variants**](CourseVariantsApi.md#post_course_variants) | **POST** /course_variants | Create a course variant


# **get_course_variants**
> Array&lt;CourseVariant&gt; get_course_variants(opts)

Get all course variant records



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

api_instance = Eduframe::CourseVariantsApi.new

opts = { 
  search: 'search_example', # String | Filter results on search
  id: ['id_example'] # Array<String> | Filter results on id
}

begin
  #Get all course variant records
  result = api_instance.get_course_variants(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CourseVariantsApi->get_course_variants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Filter results on search | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 

### Return type

[**Array&lt;CourseVariant&gt;**](CourseVariant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_course_variants_id**
> CourseVariant get_course_variants_id(id)

Get a course variant record



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

api_instance = Eduframe::CourseVariantsApi.new

id = 8.14 # Float | 


begin
  #Get a course variant record
  result = api_instance.get_course_variants_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CourseVariantsApi->get_course_variants_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**CourseVariant**](CourseVariant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_course_variants**
> CourseVariant post_course_variants(opts)

Create a course variant



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

api_instance = Eduframe::CourseVariantsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a course variant
  result = api_instance.post_course_variants(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CourseVariantsApi->post_course_variants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**CourseVariant**](CourseVariant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



