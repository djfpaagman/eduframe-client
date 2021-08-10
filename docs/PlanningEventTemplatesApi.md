# Eduframe::PlanningEventTemplatesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_planning_events_templates_id**](PlanningEventTemplatesApi.md#delete_planning_events_templates_id) | **DELETE** /planning/events_templates/{id} | Delete a planning event template.
[**get_planning_event_templates**](PlanningEventTemplatesApi.md#get_planning_event_templates) | **GET** /planning/event_templates | Get all planning event templates records
[**get_planning_event_templates_id**](PlanningEventTemplatesApi.md#get_planning_event_templates_id) | **GET** /planning/event_templates/{id} | Get a planning event templates record
[**post_planning_events_templates_id**](PlanningEventTemplatesApi.md#post_planning_events_templates_id) | **POST** /planning/events_templates/{id} | Create a planning event template
[**put_planning_events_templates_id**](PlanningEventTemplatesApi.md#put_planning_events_templates_id) | **PUT** /planning/events_templates/{id} | Update an planning event template.


# **delete_planning_events_templates_id**
> PlanningEventTemplate delete_planning_events_templates_id(id)

Delete a planning event template.



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

api_instance = Eduframe::PlanningEventTemplatesApi.new

id = 8.14 # Float | 


begin
  #Delete a planning event template.
  result = api_instance.delete_planning_events_templates_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventTemplatesApi->delete_planning_events_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**PlanningEventTemplate**](PlanningEventTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planning_event_templates**
> Array&lt;PlanningEventTemplate&gt; get_planning_event_templates(opts)

Get all planning event templates records



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

api_instance = Eduframe::PlanningEventTemplatesApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  start_before: 'start_before_example', # String | Filter results on start_before
  end_after: 'end_after_example' # String | Filter results on end_after
}

begin
  #Get all planning event templates records
  result = api_instance.get_planning_event_templates(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventTemplatesApi->get_planning_event_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **start_before** | **String**| Filter results on start_before | [optional] 
 **end_after** | **String**| Filter results on end_after | [optional] 

### Return type

[**Array&lt;PlanningEventTemplate&gt;**](PlanningEventTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planning_event_templates_id**
> PlanningEventTemplate get_planning_event_templates_id(id, opts)

Get a planning event templates record



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

api_instance = Eduframe::PlanningEventTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a planning event templates record
  result = api_instance.get_planning_event_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventTemplatesApi->get_planning_event_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**PlanningEventTemplate**](PlanningEventTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_planning_events_templates_id**
> PlanningEventTemplate post_planning_events_templates_id(id, opts)

Create a planning event template



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

api_instance = Eduframe::PlanningEventTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a planning event template
  result = api_instance.post_planning_events_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventTemplatesApi->post_planning_events_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlanningEventTemplate**](PlanningEventTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_planning_events_templates_id**
> PlanningEventTemplate put_planning_events_templates_id(id, opts)

Update an planning event template.



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

api_instance = Eduframe::PlanningEventTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an planning event template.
  result = api_instance.put_planning_events_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventTemplatesApi->put_planning_events_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlanningEventTemplate**](PlanningEventTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



