# Eduframe::PlanningLocationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_planning_locations**](PlanningLocationsApi.md#get_planning_locations) | **GET** /planning/locations | Get all locations that are available


# **get_planning_locations**
> Array&lt;MeetingLocation&gt; get_planning_locations(opts)

Get all locations that are available



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

api_instance = Eduframe::PlanningLocationsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  available_from: 'available_from_example', # String | Filter results on available_from
  available_to: 'available_to_example', # String | Filter results on available_to
  search_associated: 'search_associated_example', # String | Filter results on search_associated
  minimum_capacity: 'minimum_capacity_example', # String | Filter results on minimum_capacity
  course_location_id: 'course_location_id_example' # String | Filter results on course_location_id
}

begin
  #Get all locations that are available
  result = api_instance.get_planning_locations(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningLocationsApi->get_planning_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **available_from** | **String**| Filter results on available_from | [optional] 
 **available_to** | **String**| Filter results on available_to | [optional] 
 **search_associated** | **String**| Filter results on search_associated | [optional] 
 **minimum_capacity** | **String**| Filter results on minimum_capacity | [optional] 
 **course_location_id** | **String**| Filter results on course_location_id | [optional] 

### Return type

[**Array&lt;MeetingLocation&gt;**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



