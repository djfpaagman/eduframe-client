# Eduframe::TeachersApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_teachers**](TeachersApi.md#get_teachers) | **GET** /teachers | Get all teacher records
[**get_teachers_id**](TeachersApi.md#get_teachers_id) | **GET** /teachers/{id} | Get a teacher record


# **get_teachers**
> Array&lt;User&gt; get_teachers(opts)

Get all teacher records



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

api_instance = Eduframe::TeachersApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  label_id: ['label_id_example'] # Array<String> | Filter results on label_id
}

begin
  #Get all teacher records
  result = api_instance.get_teachers(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeachersApi->get_teachers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_teachers_id**
> User get_teachers_id(id, opts)

Get a teacher record



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

api_instance = Eduframe::TeachersApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a teacher record
  result = api_instance.get_teachers_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeachersApi->get_teachers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



