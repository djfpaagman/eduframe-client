# Eduframe::PaymentMethodsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payment_methods**](PaymentMethodsApi.md#get_payment_methods) | **GET** /payment_methods | Get all payment method records available for customers
[**post_payment_methods**](PaymentMethodsApi.md#post_payment_methods) | **POST** /payment_methods | Create a new named internal payment method.


# **get_payment_methods**
> Array&lt;PaymentMethod&gt; get_payment_methods

Get all payment method records available for customers



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

api_instance = Eduframe::PaymentMethodsApi.new

begin
  #Get all payment method records available for customers
  result = api_instance.get_payment_methods
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_methods: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PaymentMethod&gt;**](PaymentMethod.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_payment_methods**
> PaymentMethod post_payment_methods(opts)

Create a new named internal payment method.



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

api_instance = Eduframe::PaymentMethodsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a new named internal payment method.
  result = api_instance.post_payment_methods(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentMethodsApi->post_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



