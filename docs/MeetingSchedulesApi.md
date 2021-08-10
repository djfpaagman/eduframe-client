# Eduframe::MeetingSchedulesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_meeting_schedules**](MeetingSchedulesApi.md#post_meeting_schedules) | **POST** /meeting_schedules | Create recurring meetings


# **post_meeting_schedules**
> Array&lt;MeetingSchedule&gt; post_meeting_schedules(opts)

Create recurring meetings



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

api_instance = Eduframe::MeetingSchedulesApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create recurring meetings
  result = api_instance.post_meeting_schedules(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling MeetingSchedulesApi->post_meeting_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Array&lt;MeetingSchedule&gt;**](MeetingSchedule.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



