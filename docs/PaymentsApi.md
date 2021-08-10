# Eduframe::PaymentsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_invoices_invoice_id_payments_id**](PaymentsApi.md#delete_invoices_invoice_id_payments_id) | **DELETE** /invoices/{invoice_id}/payments/{id} | Delete a payment.
[**get_invoices_invoice_id_payments**](PaymentsApi.md#get_invoices_invoice_id_payments) | **GET** /invoices/{invoice_id}/payments | Get all payment records of an invoice
[**get_payments_id**](PaymentsApi.md#get_payments_id) | **GET** /payments/{id} | Get one payment record
[**post_invoices_invoice_id_payments**](PaymentsApi.md#post_invoices_invoice_id_payments) | **POST** /invoices/{invoice_id}/payments | Create a payment.


# **delete_invoices_invoice_id_payments_id**
> Payment delete_invoices_invoice_id_payments_id(id, invoice_id)

Delete a payment.



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

api_instance = Eduframe::PaymentsApi.new

id = 8.14 # Float | 

invoice_id = 8.14 # Float | 


begin
  #Delete a payment.
  result = api_instance.delete_invoices_invoice_id_payments_id(id, invoice_id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentsApi->delete_invoices_invoice_id_payments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **invoice_id** | **Float**|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_invoices_invoice_id_payments**
> Array&lt;Payment&gt; get_invoices_invoice_id_payments(invoice_id, opts)

Get all payment records of an invoice



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

api_instance = Eduframe::PaymentsApi.new

invoice_id = 'invoice_id_example' # String | Filter results on invoice_id

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  status: 'status_example' # String | Filter results on status
}

begin
  #Get all payment records of an invoice
  result = api_instance.get_invoices_invoice_id_payments(invoice_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentsApi->get_invoices_invoice_id_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| Filter results on invoice_id | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **status** | **String**| Filter results on status | [optional] 

### Return type

[**Array&lt;Payment&gt;**](Payment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_payments_id**
> Payment get_payments_id(id, opts)

Get one payment record



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

api_instance = Eduframe::PaymentsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get one payment record
  result = api_instance.get_payments_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentsApi->get_payments_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Payment**](Payment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_invoices_invoice_id_payments**
> Payment post_invoices_invoice_id_payments(invoice_id, opts)

Create a payment.



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

api_instance = Eduframe::PaymentsApi.new

invoice_id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a payment.
  result = api_instance.post_invoices_invoice_id_payments(invoice_id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentsApi->post_invoices_invoice_id_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Payment**](Payment.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



