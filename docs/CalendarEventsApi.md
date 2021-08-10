# Eduframe::CalendarEventsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_calendar_events**](CalendarEventsApi.md#get_calendar_events) | **GET** /calendar/events | Get all event records
[**get_calendar_events_id**](CalendarEventsApi.md#get_calendar_events_id) | **GET** /calendar/events/{id} | Get an event record
[**post_calendar_events**](CalendarEventsApi.md#post_calendar_events) | **POST** /calendar/events | Create a calendar event


# **get_calendar_events**
> Array&lt;CalendarEvent&gt; get_calendar_events(opts)

Get all event records



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

api_instance = Eduframe::CalendarEventsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  start_before: 'start_before_example', # String | Filter results on start_before
  end_after: 'end_after_example', # String | Filter results on end_after
  bookable_type: 'bookable_type_example', # String | Filter results on bookable_type
  bookable_id: 'bookable_id_example' # String | Filter results on bookable_id
}

begin
  #Get all event records
  result = api_instance.get_calendar_events(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CalendarEventsApi->get_calendar_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **start_before** | **String**| Filter results on start_before | [optional] 
 **end_after** | **String**| Filter results on end_after | [optional] 
 **bookable_type** | **String**| Filter results on bookable_type | [optional] 
 **bookable_id** | **String**| Filter results on bookable_id | [optional] 

### Return type

[**Array&lt;CalendarEvent&gt;**](CalendarEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_calendar_events_id**
> CalendarEvent get_calendar_events_id(id, opts)

Get an event record



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

api_instance = Eduframe::CalendarEventsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an event record
  result = api_instance.get_calendar_events_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CalendarEventsApi->get_calendar_events_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**CalendarEvent**](CalendarEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_calendar_events**
> CalendarEvent post_calendar_events(opts)

Create a calendar event



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

api_instance = Eduframe::CalendarEventsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a calendar event
  result = api_instance.post_calendar_events(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CalendarEventsApi->post_calendar_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**CalendarEvent**](CalendarEvent.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



