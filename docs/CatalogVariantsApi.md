# Eduframe::CatalogVariantsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_catalog_variants**](CatalogVariantsApi.md#get_catalog_variants) | **GET** /catalog/variants | Get all catalog variants
[**get_catalog_variants_id**](CatalogVariantsApi.md#get_catalog_variants_id) | **GET** /catalog/variants/{id} | Get a catalog variant record
[**put_catalog_variants_id**](CatalogVariantsApi.md#put_catalog_variants_id) | **PUT** /catalog/variants/{id} | Update a catalog variant


# **get_catalog_variants**
> Array&lt;Variant&gt; get_catalog_variants(opts)

Get all catalog variants



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

api_instance = Eduframe::CatalogVariantsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  product_id: 'product_id_example' # String | Filter results on product_id
}

begin
  #Get all catalog variants
  result = api_instance.get_catalog_variants(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogVariantsApi->get_catalog_variants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **product_id** | **String**| Filter results on product_id | [optional] 

### Return type

[**Array&lt;Variant&gt;**](Variant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_catalog_variants_id**
> Variant get_catalog_variants_id(id, opts)

Get a catalog variant record



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

api_instance = Eduframe::CatalogVariantsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a catalog variant record
  result = api_instance.get_catalog_variants_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogVariantsApi->get_catalog_variants_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Variant**](Variant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_catalog_variants_id**
> Variant put_catalog_variants_id(id, opts)

Update a catalog variant



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

api_instance = Eduframe::CatalogVariantsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a catalog variant
  result = api_instance.put_catalog_variants_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CatalogVariantsApi->put_catalog_variants_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Variant**](Variant.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



