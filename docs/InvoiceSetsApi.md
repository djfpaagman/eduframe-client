# Eduframe::InvoiceSetsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_sets_id**](InvoiceSetsApi.md#get_invoice_sets_id) | **GET** /invoice_sets/{id} | Get an invoice set record


# **get_invoice_sets_id**
> InvoiceSet get_invoice_sets_id(id)

Get an invoice set record



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

api_instance = Eduframe::InvoiceSetsApi.new

id = 8.14 # Float | 


begin
  #Get an invoice set record
  result = api_instance.get_invoice_sets_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoiceSetsApi->get_invoice_sets_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**InvoiceSet**](InvoiceSet.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



