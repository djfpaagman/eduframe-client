# Eduframe::AuthenticationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_authentications**](AuthenticationsApi.md#post_authentications) | **POST** /authentications | Create an authentication.
[**post_authentications_availability**](AuthenticationsApi.md#post_authentications_availability) | **POST** /authentications/availability | Validate if the identifier is available for a new authentication


# **post_authentications**
> Authentication post_authentications(opts)

Create an authentication.



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

api_instance = Eduframe::AuthenticationsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an authentication.
  result = api_instance.post_authentications(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AuthenticationsApi->post_authentications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Authentication**](Authentication.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_authentications_availability**
> Error post_authentications_availability(opts)

Validate if the identifier is available for a new authentication



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

api_instance = Eduframe::AuthenticationsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Validate if the identifier is available for a new authentication
  result = api_instance.post_authentications_availability(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AuthenticationsApi->post_authentications_availability: #{e}"
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



