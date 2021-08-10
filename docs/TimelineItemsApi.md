# Eduframe::TimelineItemsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_timeline_items**](TimelineItemsApi.md#get_timeline_items) | **GET** /timeline_items | Get all timeline item records


# **get_timeline_items**
> Array&lt;TimelineItem&gt; get_timeline_items(opts)

Get all timeline item records



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

api_instance = Eduframe::TimelineItemsApi.new

opts = { 
  timelineable_type: 'timelineable_type_example', # String | Filter results on timelineable_type
  timelineable_id: 'timelineable_id_example', # String | Filter results on timelineable_id
  object_type: ['object_type_example'], # Array<String> | Filter results on object_type
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all timeline item records
  result = api_instance.get_timeline_items(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TimelineItemsApi->get_timeline_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timelineable_type** | **String**| Filter results on timelineable_type | [optional] 
 **timelineable_id** | **String**| Filter results on timelineable_id | [optional] 
 **object_type** | [**Array&lt;String&gt;**](String.md)| Filter results on object_type | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;TimelineItem&gt;**](TimelineItem.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



