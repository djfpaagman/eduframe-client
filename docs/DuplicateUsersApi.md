# Eduframe::DuplicateUsersApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_duplicate_users**](DuplicateUsersApi.md#get_duplicate_users) | **GET** /duplicate/users | Get duplicate users
[**put_duplicate_users_id**](DuplicateUsersApi.md#put_duplicate_users_id) | **PUT** /duplicate/users/{id} | Update a duplicate user record


# **get_duplicate_users**
> Array&lt;DuplicateUser&gt; get_duplicate_users(opts)

Get duplicate users



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

api_instance = Eduframe::DuplicateUsersApi.new

opts = { 
  unique: 'unique_example', # String | Filter results on unique
  dismissed: 'dismissed_example', # String | Filter results on dismissed
  user_id: ['user_id_example'], # Array<String> | Filter results on user_id
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get duplicate users
  result = api_instance.get_duplicate_users(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling DuplicateUsersApi->get_duplicate_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique** | **String**| Filter results on unique | [optional] 
 **dismissed** | **String**| Filter results on dismissed | [optional] 
 **user_id** | [**Array&lt;String&gt;**](String.md)| Filter results on user_id | [optional] 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Array&lt;DuplicateUser&gt;**](DuplicateUser.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_duplicate_users_id**
> DuplicateUser put_duplicate_users_id(id, opts)

Update a duplicate user record



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

api_instance = Eduframe::DuplicateUsersApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a duplicate user record
  result = api_instance.put_duplicate_users_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling DuplicateUsersApi->put_duplicate_users_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**DuplicateUser**](DuplicateUser.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



