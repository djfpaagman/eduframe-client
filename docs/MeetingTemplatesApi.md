# Eduframe::MeetingTemplatesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_meeting_templates_id**](MeetingTemplatesApi.md#delete_meeting_templates_id) | **DELETE** /meeting_templates/{id} | Delete a meeting_template.
[**get_meeting_templates**](MeetingTemplatesApi.md#get_meeting_templates) | **GET** /meeting_templates | Get all meeting template records
[**get_meeting_templates_id**](MeetingTemplatesApi.md#get_meeting_templates_id) | **GET** /meeting_templates/{id} | Get a meeting template record
[**post_meeting_templates**](MeetingTemplatesApi.md#post_meeting_templates) | **POST** /meeting_templates | Create a meeting template.
[**put_meeting_templates_id**](MeetingTemplatesApi.md#put_meeting_templates_id) | **PUT** /meeting_templates/{id} | Update a meeting template.


# **delete_meeting_templates_id**
> MeetingTemplate delete_meeting_templates_id(id, opts)

Delete a meeting_template.



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

api_instance = Eduframe::MeetingTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Delete a meeting_template.
  result = api_instance.delete_meeting_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingTemplatesApi->delete_meeting_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingTemplate**](MeetingTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_meeting_templates**
> Array&lt;MeetingTemplate&gt; get_meeting_templates(opts)

Get all meeting template records



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

api_instance = Eduframe::MeetingTemplatesApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  course_id: 'course_id_example', # String | Filter results on course_id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all meeting template records
  result = api_instance.get_meeting_templates(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingTemplatesApi->get_meeting_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **course_id** | **String**| Filter results on course_id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;MeetingTemplate&gt;**](MeetingTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_meeting_templates_id**
> MeetingTemplate get_meeting_templates_id(id, opts)

Get a meeting template record



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

api_instance = Eduframe::MeetingTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a meeting template record
  result = api_instance.get_meeting_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingTemplatesApi->get_meeting_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**MeetingTemplate**](MeetingTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_meeting_templates**
> MeetingTemplate post_meeting_templates(opts)

Create a meeting template.



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

api_instance = Eduframe::MeetingTemplatesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a meeting template.
  result = api_instance.post_meeting_templates(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingTemplatesApi->post_meeting_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingTemplate**](MeetingTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_meeting_templates_id**
> MeetingTemplate put_meeting_templates_id(id, opts)

Update a meeting template.



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

api_instance = Eduframe::MeetingTemplatesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a meeting template.
  result = api_instance.put_meeting_templates_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingTemplatesApi->put_meeting_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MeetingTemplate**](MeetingTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



