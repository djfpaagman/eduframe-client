# Eduframe::UsersApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get all user records
[**get_users_id**](UsersApi.md#get_users_id) | **GET** /users/{id} | Get an user record
[**post_users**](UsersApi.md#post_users) | **POST** /users | Create a user.
[**put_users_id**](UsersApi.md#put_users_id) | **PUT** /users/{id} | Update a user.


# **get_users**
> Array&lt;User&gt; get_users(opts)

Get all user records



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

api_instance = Eduframe::UsersApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  role: 'role_example', # String | Filter results on role
  account_id: 'account_id_example', # String | Filter results on account_id
  has_orders: 'has_orders_example', # String | Filter results on has_orders
  student: 'student_example', # String | Filter results on student
  search: 'search_example', # String | Filter results on search
  email: 'email_example', # String | Filter results on email
  not_administrator: 'not_administrator_example', # String | Filter results on not_administrator
  not_teacher: 'not_teacher_example', # String | Filter results on not_teacher
  id: ['id_example'], # Array<String> | Filter results on id
  label_id: ['label_id_example'], # Array<String> | Filter results on label_id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all user records
  result = api_instance.get_users(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **role** | **String**| Filter results on role | [optional] 
 **account_id** | **String**| Filter results on account_id | [optional] 
 **has_orders** | **String**| Filter results on has_orders | [optional] 
 **student** | **String**| Filter results on student | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **email** | **String**| Filter results on email | [optional] 
 **not_administrator** | **String**| Filter results on not_administrator | [optional] 
 **not_teacher** | **String**| Filter results on not_teacher | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_users_id**
> User get_users_id(id, opts)

Get an user record



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

api_instance = Eduframe::UsersApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get an user record
  result = api_instance.get_users_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling UsersApi->get_users_id: #{e}"
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



# **post_users**
> Error post_users(opts)

Create a user.



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

api_instance = Eduframe::UsersApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a user.
  result = api_instance.post_users(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling UsersApi->post_users: #{e}"
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



# **put_users_id**
> User put_users_id(id, opts)

Update a user.



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

api_instance = Eduframe::UsersApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a user.
  result = api_instance.put_users_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling UsersApi->put_users_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



