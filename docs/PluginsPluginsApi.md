# Eduframe::PluginsPluginsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_plugins_plugins_id**](PluginsPluginsApi.md#get_plugins_plugins_id) | **GET** /plugins/plugins/{id} | Get a plugin record (id must be current)
[**post_plugins_plugins**](PluginsPluginsApi.md#post_plugins_plugins) | **POST** /plugins/plugins | Create a plugin.


# **get_plugins_plugins_id**
> Plugin get_plugins_plugins_id(id)

Get a plugin record (id must be current)



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

api_instance = Eduframe::PluginsPluginsApi.new

id = 8.14 # Float | 


begin
  #Get a plugin record (id must be current)
  result = api_instance.get_plugins_plugins_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsPluginsApi->get_plugins_plugins_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Plugin**](Plugin.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_plugins_plugins**
> Plugin post_plugins_plugins(opts)

Create a plugin.



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

api_instance = Eduframe::PluginsPluginsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a plugin.
  result = api_instance.post_plugins_plugins(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsPluginsApi->post_plugins_plugins: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Plugin**](Plugin.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



