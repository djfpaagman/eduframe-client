# Eduframe::PlanningEventsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_planning_events_id**](PlanningEventsApi.md#delete_planning_events_id) | **DELETE** /planning/events/{id} | Delete a planning event.
[**get_planning_events**](PlanningEventsApi.md#get_planning_events) | **GET** /planning/events | Get all planning event records
[**get_planning_events_id**](PlanningEventsApi.md#get_planning_events_id) | **GET** /planning/events/{id} | Get an planning event record
[**post_planning_events**](PlanningEventsApi.md#post_planning_events) | **POST** /planning/events | Create a planning event
[**put_planning_events_id**](PlanningEventsApi.md#put_planning_events_id) | **PUT** /planning/events/{id} | Update an planning event.


# **delete_planning_events_id**
> PlanningEvent delete_planning_events_id(id)

Delete a planning event.



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

api_instance = Eduframe::PlanningEventsApi.new

id = 8.14 # Float | 


begin
  #Delete a planning event.
  result = api_instance.delete_planning_events_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventsApi->delete_planning_events_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**PlanningEvent**](PlanningEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planning_events**
> Array&lt;PlanningEvent&gt; get_planning_events(opts)

Get all planning event records



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

api_instance = Eduframe::PlanningEventsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  start_before: 'start_before_example', # String | Filter results on start_before
  end_after: 'end_after_example' # String | Filter results on end_after
}

begin
  #Get all planning event records
  result = api_instance.get_planning_events(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventsApi->get_planning_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **start_before** | **String**| Filter results on start_before | [optional] 
 **end_after** | **String**| Filter results on end_after | [optional] 

### Return type

[**Array&lt;PlanningEvent&gt;**](PlanningEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_planning_events_id**
> PlanningEvent get_planning_events_id(id, opts)

Get an planning event record



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

api_instance = Eduframe::PlanningEventsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an planning event record
  result = api_instance.get_planning_events_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventsApi->get_planning_events_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**PlanningEvent**](PlanningEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_planning_events**
> PlanningEvent post_planning_events(opts)

Create a planning event



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

api_instance = Eduframe::PlanningEventsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a planning event
  result = api_instance.post_planning_events(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventsApi->post_planning_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlanningEvent**](PlanningEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_planning_events_id**
> PlanningEvent put_planning_events_id(id, opts)

Update an planning event.



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

api_instance = Eduframe::PlanningEventsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an planning event.
  result = api_instance.put_planning_events_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningEventsApi->put_planning_events_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PlanningEvent**](PlanningEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



