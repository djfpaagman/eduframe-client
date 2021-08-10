# Eduframe::CreditCategoriesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_credit_categories**](CreditCategoriesApi.md#get_credit_categories) | **GET** /credit_categories | Get all credit category records


# **get_credit_categories**
> Array&lt;CreditCategory&gt; get_credit_categories(opts)

Get all credit category records



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

api_instance = Eduframe::CreditCategoriesApi.new

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get all credit category records
  result = api_instance.get_credit_categories(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CreditCategoriesApi->get_credit_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Array&lt;CreditCategory&gt;**](CreditCategory.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



