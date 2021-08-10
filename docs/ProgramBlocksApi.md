# Eduframe::ProgramBlocksApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_program_blocks_id**](ProgramBlocksApi.md#delete_program_blocks_id) | **DELETE** /program/blocks/{id} | Delete a program block
[**get_program_blocks**](ProgramBlocksApi.md#get_program_blocks) | **GET** /program/blocks | Get all program blocks
[**post_program_blocks**](ProgramBlocksApi.md#post_program_blocks) | **POST** /program/blocks | Create a program block
[**put_program_blocks_id**](ProgramBlocksApi.md#put_program_blocks_id) | **PUT** /program/blocks/{id} | Update a program block record


# **delete_program_blocks_id**
> Block delete_program_blocks_id(id)

Delete a program block



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

api_instance = Eduframe::ProgramBlocksApi.new

id = 8.14 # Float | 


begin
  #Delete a program block
  result = api_instance.delete_program_blocks_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramBlocksApi->delete_program_blocks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Block**](Block.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_program_blocks**
> Array&lt;Block&gt; get_program_blocks(opts)

Get all program blocks



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

api_instance = Eduframe::ProgramBlocksApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  with: ['with_example'], # Array<String> | Include additional attributes
  enrollment_id: 'enrollment_id_example', # String | Filter results on enrollment_id
  edition_id: 'edition_id_example' # String | Filter results on edition_id
}

begin
  #Get all program blocks
  result = api_instance.get_program_blocks(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramBlocksApi->get_program_blocks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **with** | [**Array&lt;String&gt;**](String.md)| Include additional attributes | [optional] 
 **enrollment_id** | **String**| Filter results on enrollment_id | [optional] 
 **edition_id** | **String**| Filter results on edition_id | [optional] 

### Return type

[**Array&lt;Block&gt;**](Block.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_program_blocks**
> Block post_program_blocks(opts)

Create a program block



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

api_instance = Eduframe::ProgramBlocksApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a program block
  result = api_instance.post_program_blocks(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramBlocksApi->post_program_blocks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_program_blocks_id**
> Block put_program_blocks_id(id, opts)

Update a program block record



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

api_instance = Eduframe::ProgramBlocksApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a program block record
  result = api_instance.put_program_blocks_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling ProgramBlocksApi->put_program_blocks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



