# Eduframe::EmailTemplatesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_email_templates**](EmailTemplatesApi.md#get_email_templates) | **GET** /email/templates | Get all email templates


# **get_email_templates**
> Array&lt;EmailTemplate&gt; get_email_templates(opts)

Get all email templates



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

api_instance = Eduframe::EmailTemplatesApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  model_class: 'model_class_example', # String | Filter results on model_class
  id: ['id_example'] # Array<String> | Filter results on id
}

begin
  #Get all email templates
  result = api_instance.get_email_templates(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EmailTemplatesApi->get_email_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **model_class** | **String**| Filter results on model_class | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 

### Return type

[**Array&lt;EmailTemplate&gt;**](EmailTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



