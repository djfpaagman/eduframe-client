# Eduframe::ProgramEditionsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_program_editions_id**](ProgramEditionsApi.md#delete_program_editions_id) | **DELETE** /program/editions/{id} | Delete a program edition
[**get_program_editions**](ProgramEditionsApi.md#get_program_editions) | **GET** /program/editions | Get all program editions
[**get_program_editions_id**](ProgramEditionsApi.md#get_program_editions_id) | **GET** /program/editions/{id} | Get a program edition
[**post_program_editions**](ProgramEditionsApi.md#post_program_editions) | **POST** /program/editions | Create a program edition
[**put_program_editions_id**](ProgramEditionsApi.md#put_program_editions_id) | **PUT** /program/editions/{id} | Update a program edition


# **delete_program_editions_id**
> Edition delete_program_editions_id(id)

Delete a program edition



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

api_instance = Eduframe::ProgramEditionsApi.new

id = 8.14 # Float | 


begin
  #Delete a program edition
  result = api_instance.delete_program_editions_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEditionsApi->delete_program_editions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Edition**](Edition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_program_editions**
> Array&lt;Edition&gt; get_program_editions(opts)

Get all program editions



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

api_instance = Eduframe::ProgramEditionsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  program_id: ['program_id_example'], # Array<String> | Filter results on program_id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all program editions
  result = api_instance.get_program_editions(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEditionsApi->get_program_editions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **program_id** | [**Array&lt;String&gt;**](String.md)| Filter results on program_id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Edition&gt;**](Edition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_program_editions_id**
> Edition get_program_editions_id(id, opts)

Get a program edition



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

api_instance = Eduframe::ProgramEditionsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a program edition
  result = api_instance.get_program_editions_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEditionsApi->get_program_editions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Edition**](Edition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_program_editions**
> Edition post_program_editions(opts)

Create a program edition



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

api_instance = Eduframe::ProgramEditionsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a program edition
  result = api_instance.post_program_editions(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEditionsApi->post_program_editions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Edition**](Edition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_program_editions_id**
> Edition put_program_editions_id(id, opts)

Update a program edition



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

api_instance = Eduframe::ProgramEditionsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a program edition
  result = api_instance.put_program_editions_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramEditionsApi->put_program_editions_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Edition**](Edition.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



