# Eduframe::WorkflowActionsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_workflow_actions_id**](WorkflowActionsApi.md#delete_workflow_actions_id) | **DELETE** /workflow/actions/{id} | Delete an action.
[**get_workflow_actions**](WorkflowActionsApi.md#get_workflow_actions) | **GET** /workflow/actions | Get all action records
[**get_workflow_actions_id**](WorkflowActionsApi.md#get_workflow_actions_id) | **GET** /workflow/actions/{id} | Get a action record
[**post_workflow_actions**](WorkflowActionsApi.md#post_workflow_actions) | **POST** /workflow/actions | Create an action.
[**put_workflow_actions_id**](WorkflowActionsApi.md#put_workflow_actions_id) | **PUT** /workflow/actions/{id} | Update an action.


# **delete_workflow_actions_id**
> WorkflowAction delete_workflow_actions_id(id, opts)

Delete an action.



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

api_instance = Eduframe::WorkflowActionsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Delete an action.
  result = api_instance.delete_workflow_actions_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowActionsApi->delete_workflow_actions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_workflow_actions**
> Array&lt;WorkflowAction&gt; get_workflow_actions(opts)

Get all action records



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

api_instance = Eduframe::WorkflowActionsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  course_id: 'course_id_example', # String | Filter results on course_id
  template_id: 'template_id_example', # String | Filter results on template_id
  event: 'event_example', # String | Filter results on event
  relative_to: 'relative_to_example', # String | Filter results on relative_to
  not_course_related: 'not_course_related_example', # String | Filter results on not_course_related
  type: ['type_example'] # Array<String> | Filter results on type
}

begin
  #Get all action records
  result = api_instance.get_workflow_actions(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowActionsApi->get_workflow_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **course_id** | **String**| Filter results on course_id | [optional] 
 **template_id** | **String**| Filter results on template_id | [optional] 
 **event** | **String**| Filter results on event | [optional] 
 **relative_to** | **String**| Filter results on relative_to | [optional] 
 **not_course_related** | **String**| Filter results on not_course_related | [optional] 
 **type** | [**Array&lt;String&gt;**](String.md)| Filter results on type | [optional] 

### Return type

[**Array&lt;WorkflowAction&gt;**](WorkflowAction.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_workflow_actions_id**
> WorkflowAction get_workflow_actions_id(id, opts)

Get a action record



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

api_instance = Eduframe::WorkflowActionsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a action record
  result = api_instance.get_workflow_actions_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowActionsApi->get_workflow_actions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_workflow_actions**
> WorkflowAction post_workflow_actions(opts)

Create an action.



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

api_instance = Eduframe::WorkflowActionsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an action.
  result = api_instance.post_workflow_actions(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowActionsApi->post_workflow_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_workflow_actions_id**
> WorkflowAction put_workflow_actions_id(id, opts)

Update an action.



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

api_instance = Eduframe::WorkflowActionsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an action.
  result = api_instance.put_workflow_actions_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WorkflowActionsApi->put_workflow_actions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



