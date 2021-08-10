# Eduframe::MaterialGroupsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_material_groups_id**](MaterialGroupsApi.md#delete_material_groups_id) | **DELETE** /material_groups/{id} | Delete a material group.
[**get_material_groups**](MaterialGroupsApi.md#get_material_groups) | **GET** /material_groups | Get all material group records
[**get_material_groups_id**](MaterialGroupsApi.md#get_material_groups_id) | **GET** /material_groups/{id} | Get a material group record
[**post_material_groups**](MaterialGroupsApi.md#post_material_groups) | **POST** /material_groups | Create a material group.
[**put_material_groups_id**](MaterialGroupsApi.md#put_material_groups_id) | **PUT** /material_groups/{id} | Update a material group.


# **delete_material_groups_id**
> MaterialGroup delete_material_groups_id(id)

Delete a material group.



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

api_instance = Eduframe::MaterialGroupsApi.new

id = 8.14 # Float | 


begin
  #Delete a material group.
  result = api_instance.delete_material_groups_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MaterialGroupsApi->delete_material_groups_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**MaterialGroup**](MaterialGroup.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_material_groups**
> Array&lt;MaterialGroup&gt; get_material_groups(opts)

Get all material group records



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

api_instance = Eduframe::MaterialGroupsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  id: ['id_example'], # Array<String> | Filter results on id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all material group records
  result = api_instance.get_material_groups(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MaterialGroupsApi->get_material_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;MaterialGroup&gt;**](MaterialGroup.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_material_groups_id**
> MaterialGroup get_material_groups_id(id, opts)

Get a material group record



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

api_instance = Eduframe::MaterialGroupsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a material group record
  result = api_instance.get_material_groups_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MaterialGroupsApi->get_material_groups_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**MaterialGroup**](MaterialGroup.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_material_groups**
> MaterialGroup post_material_groups(opts)

Create a material group.



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

api_instance = Eduframe::MaterialGroupsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a material group.
  result = api_instance.post_material_groups(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MaterialGroupsApi->post_material_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MaterialGroup**](MaterialGroup.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_material_groups_id**
> MaterialGroup put_material_groups_id(id, opts)

Update a material group.



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

api_instance = Eduframe::MaterialGroupsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a material group.
  result = api_instance.put_material_groups_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MaterialGroupsApi->put_material_groups_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**MaterialGroup**](MaterialGroup.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



