# Eduframe::InvoiceItemsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoices_invoice_id_invoice_items**](InvoiceItemsApi.md#get_invoices_invoice_id_invoice_items) | **GET** /invoices/{invoice_id}/invoice_items | Get all invoice item records of an invoice


# **get_invoices_invoice_id_invoice_items**
> Array&lt;InvoiceItem&gt; get_invoices_invoice_id_invoice_items(invoice_id, opts)

Get all invoice item records of an invoice



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

api_instance = Eduframe::InvoiceItemsApi.new

invoice_id = 'invoice_id_example' # String | Filter results on invoice_id

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get all invoice item records of an invoice
  result = api_instance.get_invoices_invoice_id_invoice_items(invoice_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoiceItemsApi->get_invoices_invoice_id_invoice_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| Filter results on invoice_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Array&lt;InvoiceItem&gt;**](InvoiceItem.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



