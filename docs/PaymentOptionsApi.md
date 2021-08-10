# Eduframe::PaymentOptionsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payment_options**](PaymentOptionsApi.md#get_payment_options) | **GET** /payment_options | Get all payment option records


# **get_payment_options**
> Array&lt;PaymentOption&gt; get_payment_options(opts)

Get all payment option records



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

api_instance = Eduframe::PaymentOptionsApi.new

opts = { 
  available_for_cost: 'available_for_cost_example' # String | Filter results on available_for_cost
}

begin
  #Get all payment option records
  result = api_instance.get_payment_options(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PaymentOptionsApi->get_payment_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **available_for_cost** | **String**| Filter results on available_for_cost | [optional] 

### Return type

[**Array&lt;PaymentOption&gt;**](PaymentOption.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



