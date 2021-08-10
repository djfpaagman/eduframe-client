# Eduframe::PluginsFieldsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_plugins_fields**](PluginsFieldsApi.md#post_plugins_fields) | **POST** /plugins/fields | Create a field.


# **post_plugins_fields**
> PluginField post_plugins_fields(opts)

Create a field.



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

api_instance = Eduframe::PluginsFieldsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a field.
  result = api_instance.post_plugins_fields(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PluginsFieldsApi->post_plugins_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PluginField**](PluginField.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



