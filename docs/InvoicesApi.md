# Eduframe::InvoicesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoices**](InvoicesApi.md#get_invoices) | **GET** /invoices | Get all invoice records
[**get_invoices_id**](InvoicesApi.md#get_invoices_id) | **GET** /invoices/{id} | Get an invoice record
[**get_invoices_id_pdf**](InvoicesApi.md#get_invoices_id_pdf) | **GET** /invoices/{id}/pdf | Get the base64 encoded version of the invoice PDF
[**post_invoices**](InvoicesApi.md#post_invoices) | **POST** /invoices | Create an invoice.
[**post_invoices_id_open**](InvoicesApi.md#post_invoices_id_open) | **POST** /invoices/{id}/open | Changes the state from concept to open. This will assign the actual invoice number so it&#39;s ready for sending. If the current state is not concept, this endpoint does nothing. 


# **get_invoices**
> Array&lt;Invoice&gt; get_invoices(opts)

Get all invoice records



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

api_instance = Eduframe::InvoicesApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  user_id: 'user_id_example', # String | Filter results on user_id
  account_id: 'account_id_example', # String | Filter results on account_id
  catalog_variant_id: 'catalog_variant_id_example', # String | Filter results on catalog_variant_id
  search: 'search_example', # String | Filter results on search
  plugin_data_value: 'plugin_data_value_example', # String | Filter results on plugin_data_value
  plugin_data_field_title: 'plugin_data_field_title_example', # String | Filter results on plugin_data_field_title
  plugin_data_plugin_name: 'plugin_data_plugin_name_example', # String | Filter results on plugin_data_plugin_name
  status: ['status_example'], # Array<String> | Filter results on status
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all invoice records
  result = api_instance.get_invoices(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **user_id** | **String**| Filter results on user_id | [optional] 
 **account_id** | **String**| Filter results on account_id | [optional] 
 **catalog_variant_id** | **String**| Filter results on catalog_variant_id | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **plugin_data_value** | **String**| Filter results on plugin_data_value | [optional] 
 **plugin_data_field_title** | **String**| Filter results on plugin_data_field_title | [optional] 
 **plugin_data_plugin_name** | **String**| Filter results on plugin_data_plugin_name | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Invoice&gt;**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_invoices_id**
> Invoice get_invoices_id(id, opts)

Get an invoice record



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

api_instance = Eduframe::InvoicesApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an invoice record
  result = api_instance.get_invoices_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_invoices_id_pdf**
> Object get_invoices_id_pdf(id)

Get the base64 encoded version of the invoice PDF



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

api_instance = Eduframe::InvoicesApi.new

id = 8.14 # Float | 


begin
  #Get the base64 encoded version of the invoice PDF
  result = api_instance.get_invoices_id_pdf(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_id_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_invoices**
> Invoice post_invoices(opts)

Create an invoice.



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

api_instance = Eduframe::InvoicesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an invoice.
  result = api_instance.post_invoices(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoicesApi->post_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_invoices_id_open**
> Invoice post_invoices_id_open(id, opts)

Changes the state from concept to open. This will assign the actual invoice number so it's ready for sending. If the current state is not concept, this endpoint does nothing. 



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

api_instance = Eduframe::InvoicesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Changes the state from concept to open. This will assign the actual invoice number so it's ready for sending. If the current state is not concept, this endpoint does nothing. 
  result = api_instance.post_invoices_id_open(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling InvoicesApi->post_invoices_id_open: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



