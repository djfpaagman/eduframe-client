# Eduframe::OrdersApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_orders**](OrdersApi.md#get_orders) | **GET** /orders | Get all order records
[**get_orders_id**](OrdersApi.md#get_orders_id) | **GET** /orders/{id} | Get an order record
[**post_orders**](OrdersApi.md#post_orders) | **POST** /orders | Create an order.
[**put_orders_id_approve**](OrdersApi.md#put_orders_id_approve) | **PUT** /orders/{id}/approve | Approve an order
[**put_orders_id_cancel**](OrdersApi.md#put_orders_id_cancel) | **PUT** /orders/{id}/cancel | Cancel an order
[**put_orders_id_deny**](OrdersApi.md#put_orders_id_deny) | **PUT** /orders/{id}/deny | Deny an order


# **get_orders**
> Array&lt;Order&gt; get_orders(opts)

Get all order records



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

api_instance = Eduframe::OrdersApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  account_id: 'account_id_example', # String | Filter results on account_id
  catalog_variant_id: 'catalog_variant_id_example', # String | Filter results on catalog_variant_id
  creator_id: 'creator_id_example', # String | Filter results on creator_id
  created_at_after: 'created_at_after_example', # String | Filter results on created_at_after
  created_at_before: 'created_at_before_example', # String | Filter results on created_at_before
  number: 'number_example', # String | Filter results on number
  search: 'search_example', # String | Filter results on search
  user_id: 'user_id_example', # String | Filter results on user_id
  catalog_product_id: ['catalog_product_id_example'], # Array<String> | Filter results on catalog_product_id
  course_category_id: ['course_category_id_example'], # Array<String> | Filter results on course_category_id
  course_id: ['course_id_example'], # Array<String> | Filter results on course_id
  label_id: ['label_id_example'], # Array<String> | Filter results on label_id
  program_id: ['program_id_example'], # Array<String> | Filter results on program_id
  status: ['status_example'], # Array<String> | Filter results on status
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all order records
  result = api_instance.get_orders(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **account_id** | **String**| Filter results on account_id | [optional] 
 **catalog_variant_id** | **String**| Filter results on catalog_variant_id | [optional] 
 **creator_id** | **String**| Filter results on creator_id | [optional] 
 **created_at_after** | **String**| Filter results on created_at_after | [optional] 
 **created_at_before** | **String**| Filter results on created_at_before | [optional] 
 **number** | **String**| Filter results on number | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **user_id** | **String**| Filter results on user_id | [optional] 
 **catalog_product_id** | [**Array&lt;String&gt;**](String.md)| Filter results on catalog_product_id | [optional] 
 **course_category_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_category_id | [optional] 
 **course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_id | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 
 **program_id** | [**Array&lt;String&gt;**](String.md)| Filter results on program_id | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Order&gt;**](Order.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_orders_id**
> Order get_orders_id(id, opts)

Get an order record



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

api_instance = Eduframe::OrdersApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an order record
  result = api_instance.get_orders_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->get_orders_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_orders**
> Error post_orders(opts)

Create an order.



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

api_instance = Eduframe::OrdersApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an order.
  result = api_instance.post_orders(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->post_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Error**](Error.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_orders_id_approve**
> Order put_orders_id_approve(id, opts)

Approve an order



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

api_instance = Eduframe::OrdersApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Approve an order
  result = api_instance.put_orders_id_approve(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->put_orders_id_approve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_orders_id_cancel**
> Order put_orders_id_cancel(id, opts)

Cancel an order



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

api_instance = Eduframe::OrdersApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Cancel an order
  result = api_instance.put_orders_id_cancel(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->put_orders_id_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_orders_id_deny**
> Order put_orders_id_deny(id, opts)

Deny an order



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

api_instance = Eduframe::OrdersApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Deny an order
  result = api_instance.put_orders_id_deny(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling OrdersApi->put_orders_id_deny: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



