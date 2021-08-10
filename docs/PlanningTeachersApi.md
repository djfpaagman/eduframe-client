# Eduframe::PlanningTeachersApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_planning_teachers**](PlanningTeachersApi.md#get_planning_teachers) | **GET** /planning/teachers | Get all teachers that are available


# **get_planning_teachers**
> Array&lt;User&gt; get_planning_teachers(opts)

Get all teachers that are available



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

api_instance = Eduframe::PlanningTeachersApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  available_from: 'available_from_example', # String | Filter results on available_from
  available_to: 'available_to_example', # String | Filter results on available_to
  search: 'search_example', # String | Filter results on search
  role: 'role_example', # String | Filter results on role
  label_id: ['label_id_example'] # Array<String> | Filter results on label_id
}

begin
  #Get all teachers that are available
  result = api_instance.get_planning_teachers(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningTeachersApi->get_planning_teachers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **available_from** | **String**| Filter results on available_from | [optional] 
 **available_to** | **String**| Filter results on available_to | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **role** | **String**| Filter results on role | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



