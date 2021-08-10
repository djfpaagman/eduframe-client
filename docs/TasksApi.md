# Eduframe::TasksApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_tasks_id**](TasksApi.md#delete_tasks_id) | **DELETE** /tasks/{id} | Delete a task.
[**get_tasks**](TasksApi.md#get_tasks) | **GET** /tasks | Get all task records
[**get_tasks_id**](TasksApi.md#get_tasks_id) | **GET** /tasks/{id} | Get a task record
[**post_tasks**](TasksApi.md#post_tasks) | **POST** /tasks | Create a task.
[**put_tasks_id**](TasksApi.md#put_tasks_id) | **PUT** /tasks/{id} | Update a task.


# **delete_tasks_id**
> Task delete_tasks_id(id, opts)

Delete a task.



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

api_instance = Eduframe::TasksApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Delete a task.
  result = api_instance.delete_tasks_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TasksApi->delete_tasks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_tasks**
> Array&lt;Task&gt; get_tasks(opts)

Get all task records



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

api_instance = Eduframe::TasksApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  due_date: 'due_date_example', # String | Filter results on due_date
  completed_at: 'completed_at_example', # String | Filter results on completed_at
  assignee_id: 'assignee_id_example', # String | Filter results on assignee_id
  creator_id: 'creator_id_example', # String | Filter results on creator_id
  completed_by_id: 'completed_by_id_example', # String | Filter results on completed_by_id
  subject_type: 'subject_type_example', # String | Filter results on subject_type
  subject_id: 'subject_id_example' # String | Filter results on subject_id
}

begin
  #Get all task records
  result = api_instance.get_tasks(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TasksApi->get_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **due_date** | **String**| Filter results on due_date | [optional] 
 **completed_at** | **String**| Filter results on completed_at | [optional] 
 **assignee_id** | **String**| Filter results on assignee_id | [optional] 
 **creator_id** | **String**| Filter results on creator_id | [optional] 
 **completed_by_id** | **String**| Filter results on completed_by_id | [optional] 
 **subject_type** | **String**| Filter results on subject_type | [optional] 
 **subject_id** | **String**| Filter results on subject_id | [optional] 

### Return type

[**Array&lt;Task&gt;**](Task.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_tasks_id**
> Task get_tasks_id(id, opts)

Get a task record



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

api_instance = Eduframe::TasksApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a task record
  result = api_instance.get_tasks_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TasksApi->get_tasks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_tasks**
> Task post_tasks(opts)

Create a task.



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

api_instance = Eduframe::TasksApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a task.
  result = api_instance.post_tasks(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TasksApi->post_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_tasks_id**
> Task put_tasks_id(id, opts)

Update a task.



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

api_instance = Eduframe::TasksApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a task.
  result = api_instance.put_tasks_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TasksApi->put_tasks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



