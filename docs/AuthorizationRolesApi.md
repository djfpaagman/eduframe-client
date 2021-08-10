# Eduframe::AuthorizationRolesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_roles**](AuthorizationRolesApi.md#get_authorization_roles) | **GET** /authorization/roles | Get all roles


# **get_authorization_roles**
> Array&lt;Role&gt; get_authorization_roles

Get all roles



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

api_instance = Eduframe::AuthorizationRolesApi.new

begin
  #Get all roles
  result = api_instance.get_authorization_roles
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AuthorizationRolesApi->get_authorization_roles: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Role&gt;**](Role.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



