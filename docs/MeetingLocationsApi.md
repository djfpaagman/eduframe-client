# Eduframe::MeetingLocationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_meeting_locations_id**](MeetingLocationsApi.md#delete_meeting_locations_id) | **DELETE** /meeting_locations/{id} | Delete a course location.
[**get_course_locations_course_location_id_meeting_locations**](MeetingLocationsApi.md#get_course_locations_course_location_id_meeting_locations) | **GET** /course_locations/{course_location_id}/meeting_locations | Get all meeting location records of a course location
[**get_meeting_locations**](MeetingLocationsApi.md#get_meeting_locations) | **GET** /meeting_locations | Get all meeting location records
[**post_course_locations_course_location_id_meeting_locations**](MeetingLocationsApi.md#post_course_locations_course_location_id_meeting_locations) | **POST** /course_locations/{course_location_id}/meeting_locations | Create a meeting location within a specific course location.
[**post_meeting_locations**](MeetingLocationsApi.md#post_meeting_locations) | **POST** /meeting_locations | Create a meeting location.
[**put_meeting_locations_id**](MeetingLocationsApi.md#put_meeting_locations_id) | **PUT** /meeting_locations/{id} | Update a meeting location.


# **delete_meeting_locations_id**
> MeetingLocation delete_meeting_locations_id(id)

Delete a course location.



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

api_instance = Eduframe::MeetingLocationsApi.new

id = 8.14 # Float | 


begin
  #Delete a course location.
  result = api_instance.delete_meeting_locations_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->delete_meeting_locations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**MeetingLocation**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_course_locations_course_location_id_meeting_locations**
> Array&lt;MeetingLocation&gt; get_course_locations_course_location_id_meeting_locations(course_location_id, opts)

Get all meeting location records of a course location



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

api_instance = Eduframe::MeetingLocationsApi.new

course_location_id = 'course_location_id_example' # String | Filter results on course_location_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search_associated: 'search_associated_example', # String | Filter results on search_associated
  minimum_capacity: 'minimum_capacity_example', # String | Filter results on minimum_capacity
  id: ['id_example'], # Array<String> | Filter results on id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all meeting location records of a course location
  result = api_instance.get_course_locations_course_location_id_meeting_locations(course_location_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->get_course_locations_course_location_id_meeting_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_location_id** | **String**| Filter results on course_location_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search_associated** | **String**| Filter results on search_associated | [optional] 
 **minimum_capacity** | **String**| Filter results on minimum_capacity | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;MeetingLocation&gt;**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_meeting_locations**
> Array&lt;MeetingLocation&gt; get_meeting_locations(course_location_id, opts)

Get all meeting location records



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

api_instance = Eduframe::MeetingLocationsApi.new

course_location_id = 'course_location_id_example' # String | Filter results on course_location_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search_associated: 'search_associated_example', # String | Filter results on search_associated
  minimum_capacity: 'minimum_capacity_example', # String | Filter results on minimum_capacity
  id: ['id_example'], # Array<String> | Filter results on id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all meeting location records
  result = api_instance.get_meeting_locations(course_location_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->get_meeting_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_location_id** | **String**| Filter results on course_location_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search_associated** | **String**| Filter results on search_associated | [optional] 
 **minimum_capacity** | **String**| Filter results on minimum_capacity | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;MeetingLocation&gt;**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_course_locations_course_location_id_meeting_locations**
> MeetingLocation post_course_locations_course_location_id_meeting_locations(course_location_id, opts)

Create a meeting location within a specific course location.



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

api_instance = Eduframe::MeetingLocationsApi.new

course_location_id = 8.14 # Float | Unique identifier of the course location.

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a meeting location within a specific course location.
  result = api_instance.post_course_locations_course_location_id_meeting_locations(course_location_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->post_course_locations_course_location_id_meeting_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_location_id** | **Float**| Unique identifier of the course location. | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingLocation**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_meeting_locations**
> MeetingLocation post_meeting_locations(opts)

Create a meeting location.



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

api_instance = Eduframe::MeetingLocationsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a meeting location.
  result = api_instance.post_meeting_locations(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->post_meeting_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingLocation**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_meeting_locations_id**
> MeetingLocation put_meeting_locations_id(id, opts)

Update a meeting location.



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

api_instance = Eduframe::MeetingLocationsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a meeting location.
  result = api_instance.put_meeting_locations_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingLocationsApi->put_meeting_locations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingLocation**](MeetingLocation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



