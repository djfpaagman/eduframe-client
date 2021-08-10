# Eduframe::WebhookNotificationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_webhooks_webhook_id_notifications**](WebhookNotificationsApi.md#get_webhooks_webhook_id_notifications) | **GET** /webhooks/{webhook_id}/notifications | Get the notifications for a specific webhook


# **get_webhooks_webhook_id_notifications**
> Array&lt;WebhookNotification&gt; get_webhooks_webhook_id_notifications(webhook_id)

Get the notifications for a specific webhook



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

api_instance = Eduframe::WebhookNotificationsApi.new

webhook_id = 8.14 # Float | 


begin
  #Get the notifications for a specific webhook
  result = api_instance.get_webhooks_webhook_id_notifications(webhook_id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling WebhookNotificationsApi->get_webhooks_webhook_id_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **Float**|  | 

### Return type

[**Array&lt;WebhookNotification&gt;**](WebhookNotification.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



