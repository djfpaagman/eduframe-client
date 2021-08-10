# Eduframe::TeacherRolesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_teacher_roles_id**](TeacherRolesApi.md#delete_teacher_roles_id) | **DELETE** /teacher_roles/{id} | Delete a teacher role.
[**get_teacher_roles**](TeacherRolesApi.md#get_teacher_roles) | **GET** /teacher_roles | Get all teacher roles
[**get_teacher_roles_id**](TeacherRolesApi.md#get_teacher_roles_id) | **GET** /teacher_roles/{id} | Get a teacher role
[**post_teacher_roles**](TeacherRolesApi.md#post_teacher_roles) | **POST** /teacher_roles | Create a teacher role.
[**put_teacher_roles_id**](TeacherRolesApi.md#put_teacher_roles_id) | **PUT** /teacher_roles/{id} | Update a teacher role.


# **delete_teacher_roles_id**
> TeacherRole delete_teacher_roles_id(id)

Delete a teacher role.



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

api_instance = Eduframe::TeacherRolesApi.new

id = 8.14 # Float | 


begin
  #Delete a teacher role.
  result = api_instance.delete_teacher_roles_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherRolesApi->delete_teacher_roles_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**TeacherRole**](TeacherRole.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_teacher_roles**
> Array&lt;TeacherRole&gt; get_teacher_roles(opts)

Get all teacher roles



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

api_instance = Eduframe::TeacherRolesApi.new

opts = { 
  search: 'search_example', # String | Filter results on search
  id: ['id_example'], # Array<String> | Filter results on id
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all teacher roles
  result = api_instance.get_teacher_roles(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherRolesApi->get_teacher_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Filter results on search | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;TeacherRole&gt;**](TeacherRole.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_teacher_roles_id**
> TeacherRole get_teacher_roles_id(id)

Get a teacher role



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

api_instance = Eduframe::TeacherRolesApi.new

id = 8.14 # Float | 


begin
  #Get a teacher role
  result = api_instance.get_teacher_roles_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherRolesApi->get_teacher_roles_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**TeacherRole**](TeacherRole.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_teacher_roles**
> TeacherRole post_teacher_roles(opts)

Create a teacher role.



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

api_instance = Eduframe::TeacherRolesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a teacher role.
  result = api_instance.post_teacher_roles(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherRolesApi->post_teacher_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**TeacherRole**](TeacherRole.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_teacher_roles_id**
> TeacherRole put_teacher_roles_id(id, opts)

Update a teacher role.



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

api_instance = Eduframe::TeacherRolesApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a teacher role.
  result = api_instance.put_teacher_roles_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling TeacherRolesApi->put_teacher_roles_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**TeacherRole**](TeacherRole.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



