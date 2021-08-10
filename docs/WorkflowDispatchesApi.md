# Eduframe::WorkflowDispatchesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_workflow_dispatches_id**](WorkflowDispatchesApi.md#delete_workflow_dispatches_id) | **DELETE** /workflow/dispatches/{id} | Delete a dispatch.


# **delete_workflow_dispatches_id**
> Dispatch delete_workflow_dispatches_id(id)

Delete a dispatch.



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

api_instance = Eduframe::WorkflowDispatchesApi.new

id = 8.14 # Float | 


begin
  #Delete a dispatch.
  result = api_instance.delete_workflow_dispatches_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowDispatchesApi->delete_workflow_dispatches_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Dispatch**](Dispatch.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



