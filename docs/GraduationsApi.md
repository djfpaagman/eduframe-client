# Eduframe::GraduationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_graduation_id**](GraduationsApi.md#get_graduation_id) | **GET** /graduation/{id} | Get a graduation record
[**post_graduation**](GraduationsApi.md#post_graduation) | **POST** /graduation | Create a graduation
[**put_graduation_id**](GraduationsApi.md#put_graduation_id) | **PUT** /graduation/{id} | Update a graduation


# **get_graduation_id**
> Graduation get_graduation_id(id)

Get a graduation record



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

api_instance = Eduframe::GraduationsApi.new

id = 8.14 # Float | 


begin
  #Get a graduation record
  result = api_instance.get_graduation_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling GraduationsApi->get_graduation_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Graduation**](Graduation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_graduation**
> Graduation post_graduation(opts)

Create a graduation



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

api_instance = Eduframe::GraduationsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create a graduation
  result = api_instance.post_graduation(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling GraduationsApi->post_graduation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Graduation**](Graduation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_graduation_id**
> Graduation put_graduation_id(id, opts)

Update a graduation



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

api_instance = Eduframe::GraduationsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a graduation
  result = api_instance.put_graduation_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling GraduationsApi->put_graduation_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Graduation**](Graduation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



