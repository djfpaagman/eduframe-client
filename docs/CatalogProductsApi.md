# Eduframe::CatalogProductsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_catalog_products**](CatalogProductsApi.md#get_catalog_products) | **GET** /catalog/products | Get all catalog products
[**get_catalog_products_id**](CatalogProductsApi.md#get_catalog_products_id) | **GET** /catalog/products/{id} | Get a catalog product record
[**post_catalog_products_sort**](CatalogProductsApi.md#post_catalog_products_sort) | **POST** /catalog/products/sort | Sort the elements (set positions).
[**put_catalog_products_id**](CatalogProductsApi.md#put_catalog_products_id) | **PUT** /catalog/products/{id} | Update a catalog product


# **get_catalog_products**
> Array&lt;Product&gt; get_catalog_products(opts)

Get all catalog products



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

api_instance = Eduframe::CatalogProductsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  category_id: 'category_id_example', # String | Filter results on category_id
  productable_type: 'productable_type_example', # String | Filter results on productable_type
  search: 'search_example', # String | Filter results on search
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all catalog products
  result = api_instance.get_catalog_products(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogProductsApi->get_catalog_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **category_id** | **String**| Filter results on category_id | [optional] 
 **productable_type** | **String**| Filter results on productable_type | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Product&gt;**](Product.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_catalog_products_id**
> Product get_catalog_products_id(id, opts)

Get a catalog product record



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

api_instance = Eduframe::CatalogProductsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a catalog product record
  result = api_instance.get_catalog_products_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogProductsApi->get_catalog_products_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_catalog_products_sort**
> Error post_catalog_products_sort(opts)

Sort the elements (set positions).



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

api_instance = Eduframe::CatalogProductsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Sort the elements (set positions).
  result = api_instance.post_catalog_products_sort(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogProductsApi->post_catalog_products_sort: #{e}"
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



# **put_catalog_products_id**
> Product put_catalog_products_id(id, opts)

Update a catalog product



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

api_instance = Eduframe::CatalogProductsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a catalog product
  result = api_instance.put_catalog_products_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogProductsApi->put_catalog_products_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



