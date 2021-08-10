# Eduframe::WebhooksApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhooks_id**](WebhooksApi.md#delete_webhooks_id) | **DELETE** /webhooks/{id} | Delete a webhook.
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get all registered webhooks
[**get_webhooks_id**](WebhooksApi.md#get_webhooks_id) | **GET** /webhooks/{id} | Get a registered webhook
[**post_webhooks**](WebhooksApi.md#post_webhooks) | **POST** /webhooks | Register a webhook.
[**put_webhooks_id**](WebhooksApi.md#put_webhooks_id) | **PUT** /webhooks/{id} | Update a webhook.


# **delete_webhooks_id**
> Webhook delete_webhooks_id(id)

Delete a webhook.



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

api_instance = Eduframe::WebhooksApi.new

id = 8.14 # Float | 


begin
  #Delete a webhook.
  result = api_instance.delete_webhooks_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhooks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_webhooks**
> Array&lt;Webhook&gt; get_webhooks

Get all registered webhooks



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

api_instance = Eduframe::WebhooksApi.new

begin
  #Get all registered webhooks
  result = api_instance.get_webhooks
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_webhooks_id**
> Webhook get_webhooks_id(id)

Get a registered webhook



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

api_instance = Eduframe::WebhooksApi.new

id = 8.14 # Float | 


begin
  #Get a registered webhook
  result = api_instance.get_webhooks_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhooks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_webhooks**
> Webhook post_webhooks(opts)

Register a webhook.



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

api_instance = Eduframe::WebhooksApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Register a webhook.
  result = api_instance.post_webhooks(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhooksApi->post_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_webhooks_id**
> Webhook put_webhooks_id(id, opts)

Update a webhook.



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

api_instance = Eduframe::WebhooksApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update a webhook.
  result = api_instance.put_webhooks_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhooksApi->put_webhooks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



