# Eduframe::EmailScheduledApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_email_scheduled_id**](EmailScheduledApi.md#delete_email_scheduled_id) | **DELETE** /email/scheduled/{id} | Delete a scheduled email.
[**put_email_scheduled_id_deliver**](EmailScheduledApi.md#put_email_scheduled_id_deliver) | **PUT** /email/scheduled/{id}/deliver | Deliver a scheduled email.


# **delete_email_scheduled_id**
> ScheduledEmail delete_email_scheduled_id(id)

Delete a scheduled email.



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

api_instance = Eduframe::EmailScheduledApi.new

id = 8.14 # Float | 


begin
  #Delete a scheduled email.
  result = api_instance.delete_email_scheduled_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EmailScheduledApi->delete_email_scheduled_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**ScheduledEmail**](ScheduledEmail.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_email_scheduled_id_deliver**
> ScheduledEmail put_email_scheduled_id_deliver(id)

Deliver a scheduled email.



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

api_instance = Eduframe::EmailScheduledApi.new

id = 8.14 # Float | 


begin
  #Deliver a scheduled email.
  result = api_instance.put_email_scheduled_id_deliver(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling EmailScheduledApi->put_email_scheduled_id_deliver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**ScheduledEmail**](ScheduledEmail.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



