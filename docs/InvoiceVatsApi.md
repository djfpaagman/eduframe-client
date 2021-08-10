# Eduframe::InvoiceVatsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_vats**](InvoiceVatsApi.md#get_invoice_vats) | **GET** /invoice_vats | Get all invoice vat records
[**post_invoice_vats**](InvoiceVatsApi.md#post_invoice_vats) | **POST** /invoice_vats | Create an invoice vat.


# **get_invoice_vats**
> Array&lt;InvoiceVat&gt; get_invoice_vats(opts)

Get all invoice vat records



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

api_instance = Eduframe::InvoiceVatsApi.new

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get all invoice vat records
  result = api_instance.get_invoice_vats(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoiceVatsApi->get_invoice_vats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Array&lt;InvoiceVat&gt;**](InvoiceVat.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_invoice_vats**
> InvoiceVat post_invoice_vats(opts)

Create an invoice vat.



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

api_instance = Eduframe::InvoiceVatsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an invoice vat.
  result = api_instance.post_invoice_vats(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoiceVatsApi->post_invoice_vats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**InvoiceVat**](InvoiceVat.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



