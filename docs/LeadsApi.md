# Eduframe::LeadsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_leads_id**](LeadsApi.md#delete_leads_id) | **DELETE** /leads/{id} | Delete a lead.
[**get_leads**](LeadsApi.md#get_leads) | **GET** /leads | Get all lead records
[**get_leads_id**](LeadsApi.md#get_leads_id) | **GET** /leads/{id} | Get one lead record
[**post_leads**](LeadsApi.md#post_leads) | **POST** /leads | Create a lead.
[**put_leads_id**](LeadsApi.md#put_leads_id) | **PUT** /leads/{id} | Update an lead.


# **delete_leads_id**
> Lead delete_leads_id(id)

Delete a lead.



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

api_instance = Eduframe::LeadsApi.new

id = 8.14 # Float | 


begin
  #Delete a lead.
  result = api_instance.delete_leads_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling LeadsApi->delete_leads_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Lead**](Lead.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_leads**
> Array&lt;Lead&gt; get_leads(opts)

Get all lead records



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

api_instance = Eduframe::LeadsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  search: 'search_example', # String | Filter results on search
  status: ['status_example'], # Array<String> | Filter results on status
  course_id: ['course_id_example'], # Array<String> | Filter results on course_id
  planned_course_id: ['planned_course_id_example'], # Array<String> | Filter results on planned_course_id
  administrator_id: ['administrator_id_example'], # Array<String> | Filter results on administrator_id
  label_id: ['label_id_example'], # Array<String> | Filter results on label_id
  user_id: ['user_id_example'], # Array<String> | Filter results on user_id
  account_id: ['account_id_example'], # Array<String> | Filter results on account_id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all lead records
  result = api_instance.get_leads(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling LeadsApi->get_leads: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| Filter results on status | [optional] 
 **course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on course_id | [optional] 
 **planned_course_id** | [**Array&lt;String&gt;**](String.md)| Filter results on planned_course_id | [optional] 
 **administrator_id** | [**Array&lt;String&gt;**](String.md)| Filter results on administrator_id | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 
 **user_id** | [**Array&lt;String&gt;**](String.md)| Filter results on user_id | [optional] 
 **account_id** | [**Array&lt;String&gt;**](String.md)| Filter results on account_id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Lead&gt;**](Lead.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_leads_id**
> Lead get_leads_id(id, opts)

Get one lead record



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

api_instance = Eduframe::LeadsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get one lead record
  result = api_instance.get_leads_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling LeadsApi->get_leads_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Lead**](Lead.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_leads**
> Error post_leads(opts)

Create a lead.



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

api_instance = Eduframe::LeadsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a lead.
  result = api_instance.post_leads(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling LeadsApi->post_leads: #{e}"
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



# **put_leads_id**
> Lead put_leads_id(id, opts)

Update an lead.



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

api_instance = Eduframe::LeadsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an lead.
  result = api_instance.put_leads_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling LeadsApi->put_leads_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Lead**](Lead.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



