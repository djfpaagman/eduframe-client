# Eduframe::CreditsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_credits**](CreditsApi.md#get_credits) | **GET** /credits | Get all credit records


# **get_credits**
> Array&lt;Credit&gt; get_credits(opts)

Get all credit records



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

api_instance = Eduframe::CreditsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  student_id: 'student_id_example' # String | Filter results on student_id
}

begin
  #Get all credit records
  result = api_instance.get_credits(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CreditsApi->get_credits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **student_id** | **String**| Filter results on student_id | [optional] 

### Return type

[**Array&lt;Credit&gt;**](Credit.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



