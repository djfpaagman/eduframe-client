# Eduframe::CourseTabsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_course_tabs**](CourseTabsApi.md#get_course_tabs) | **GET** /course_tabs | Get all course tab records


# **get_course_tabs**
> Array&lt;CourseTab&gt; get_course_tabs

Get all course tab records



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

api_instance = Eduframe::CourseTabsApi.new

begin
  #Get all course tab records
  result = api_instance.get_course_tabs
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CourseTabsApi->get_course_tabs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;CourseTab&gt;**](CourseTab.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



