# Eduframe::SignupApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_signup**](SignupApi.md#post_signup) | **POST** /signup | Perform a signup.


# **post_signup**
> Error post_signup(opts)

Perform a signup.

 <p>Often you want to redirect the user after a successfull signup. The expected redirect url is returned in the <code>Location</code> header (just as normal 302 redirects). If the user wants to pay with a payment provider, this is also the URL to the payment URL.</p> 

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

api_instance = Eduframe::SignupApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Perform a signup.
  result = api_instance.post_signup(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling SignupApi->post_signup: #{e}"
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



