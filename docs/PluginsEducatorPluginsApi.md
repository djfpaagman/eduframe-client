# Eduframe::PluginsEducatorPluginsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_plugins_educators_id**](PluginsEducatorPluginsApi.md#get_plugins_educators_id) | **GET** /plugins/educators/{id} | Get all plugin installs by educator record
[**post_plugins_educators**](PluginsEducatorPluginsApi.md#post_plugins_educators) | **POST** /plugins/educators | Install a plugin for a specific educator.
[**put_plugins_educators_id**](PluginsEducatorPluginsApi.md#put_plugins_educators_id) | **PUT** /plugins/educators/{id} | Update a plugin installation for a specific educator.


# **get_plugins_educators_id**
> EducatorPlugin get_plugins_educators_id(id)

Get all plugin installs by educator record



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

api_instance = Eduframe::PluginsEducatorPluginsApi.new

id = 8.14 # Float | 


begin
  #Get all plugin installs by educator record
  result = api_instance.get_plugins_educators_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsEducatorPluginsApi->get_plugins_educators_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**EducatorPlugin**](EducatorPlugin.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_plugins_educators**
> EducatorPlugin post_plugins_educators(opts)

Install a plugin for a specific educator.



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

api_instance = Eduframe::PluginsEducatorPluginsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Install a plugin for a specific educator.
  result = api_instance.post_plugins_educators(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsEducatorPluginsApi->post_plugins_educators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**EducatorPlugin**](EducatorPlugin.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_plugins_educators_id**
> EducatorPlugin put_plugins_educators_id(id, opts)

Update a plugin installation for a specific educator.



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

api_instance = Eduframe::PluginsEducatorPluginsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a plugin installation for a specific educator.
  result = api_instance.put_plugins_educators_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsEducatorPluginsApi->put_plugins_educators_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**EducatorPlugin**](EducatorPlugin.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



