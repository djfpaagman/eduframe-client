# Eduframe::StudentsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_students**](StudentsApi.md#get_students) | **GET** /students | Get all student records
[**get_students_id**](StudentsApi.md#get_students_id) | **GET** /students/{id} | Get a student record


# **get_students**
> Array&lt;User&gt; get_students(opts)

Get all student records



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

api_instance = Eduframe::StudentsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  account_id: 'account_id_example', # String | Filter results on account_id
  sort: ['sort_example'], # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
  customer_id: 'customer_id_example' # String | *DEPRECATED* Filter results based on the old customer id. Since we don't have customers anymore in our system, we take the first organisation of the customer. If the user doesn't have an organisation, we take it's personal account. 
}

begin
  #Get all student records
  result = api_instance.get_students(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling StudentsApi->get_students: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **account_id** | **String**| Filter results on account_id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 
 **customer_id** | **String**| *DEPRECATED* Filter results based on the old customer id. Since we don&#39;t have customers anymore in our system, we take the first organisation of the customer. If the user doesn&#39;t have an organisation, we take it&#39;s personal account.  | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_students_id**
> User get_students_id(id, opts)

Get a student record



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

api_instance = Eduframe::StudentsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a student record
  result = api_instance.get_students_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling StudentsApi->get_students_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



