# Eduframe::CalendarResourcesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_calendar_resources_resources_type**](CalendarResourcesApi.md#get_calendar_resources_resources_type) | **GET** /calendar/resources/{resources_type} | Get all resources for a specific type


# **get_calendar_resources_resources_type**
> Array&lt;CalendarResource&gt; get_calendar_resources_resources_type(resources_type, opts)

Get all resources for a specific type



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

api_instance = Eduframe::CalendarResourcesApi.new

resources_type = 'resources_type_example' # String | Specify the type of resource.

opts = { 
  search: 'search_example', # String | Filter results on search
  minimum_capacity: 'minimum_capacity_example', # String | Filter results on minimum_capacity
  parent_id: ['parent_id_example'] # Array<String> | Filter results on parent_id
}

begin
  #Get all resources for a specific type
  result = api_instance.get_calendar_resources_resources_type(resources_type, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CalendarResourcesApi->get_calendar_resources_resources_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resources_type** | **String**| Specify the type of resource. | 
 **search** | **String**| Filter results on search | [optional] 
 **minimum_capacity** | **String**| Filter results on minimum_capacity | [optional] 
 **parent_id** | [**Array&lt;String&gt;**](String.md)| Filter results on parent_id | [optional] 

### Return type

[**Array&lt;CalendarResource&gt;**](CalendarResource.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



