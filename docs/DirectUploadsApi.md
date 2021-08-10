# Eduframe::DirectUploadsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_direct_uploads**](DirectUploadsApi.md#post_direct_uploads) | **POST** /direct_uploads | Creates a new blob on the server side in anticipation of a direct-to-service.


# **post_direct_uploads**
> post_direct_uploads

Creates a new blob on the server side in anticipation of a direct-to-service.



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

api_instance = Eduframe::DirectUploadsApi.new

begin
  #Creates a new blob on the server side in anticipation of a direct-to-service.
  api_instance.post_direct_uploads
rescue Eduframe::ApiError => e
  puts "Exception when calling DirectUploadsApi->post_direct_uploads: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



