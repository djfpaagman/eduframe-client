# Eduframe::SignupQuestionsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_signup_questions**](SignupQuestionsApi.md#get_signup_questions) | **GET** /signup_questions | Get all signup_question records


# **get_signup_questions**
> Array&lt;SignupQuestion&gt; get_signup_questions(opts)

Get all signup_question records



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

api_instance = Eduframe::SignupQuestionsApi.new

opts = { 
  for_user: 'for_user_example', # String | Filter results on for_user
  for_account: 'for_account_example', # String | Filter results on for_account
  for_type: 'for_type_example', # String | Filter results on for_type
  visibility: 'visibility_example', # String | Filter results on visibility
  use_as_duplicate_indicator: 'use_as_duplicate_indicator_example' # String | Filter results on use_as_duplicate_indicator
}

begin
  #Get all signup_question records
  result = api_instance.get_signup_questions(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling SignupQuestionsApi->get_signup_questions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **for_user** | **String**| Filter results on for_user | [optional] 
 **for_account** | **String**| Filter results on for_account | [optional] 
 **for_type** | **String**| Filter results on for_type | [optional] 
 **visibility** | **String**| Filter results on visibility | [optional] 
 **use_as_duplicate_indicator** | **String**| Filter results on use_as_duplicate_indicator | [optional] 

### Return type

[**Array&lt;SignupQuestion&gt;**](SignupQuestion.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



