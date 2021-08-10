# Eduframe::CertificateTemplatesApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_certificate_templates_id**](CertificateTemplatesApi.md#delete_certificate_templates_id) | **DELETE** /certificate_templates/{id} | Delete a certificate template
[**get_certificate_templates**](CertificateTemplatesApi.md#get_certificate_templates) | **GET** /certificate_templates | Get all certificate template records
[**put_certificate_templates_id_duplicate**](CertificateTemplatesApi.md#put_certificate_templates_id_duplicate) | **PUT** /certificate_templates/{id}/duplicate | Duplicate a certificate template


# **delete_certificate_templates_id**
> CerfiticateTemplate delete_certificate_templates_id(id)

Delete a certificate template



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

api_instance = Eduframe::CertificateTemplatesApi.new

id = 8.14 # Float | 


begin
  #Delete a certificate template
  result = api_instance.delete_certificate_templates_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CertificateTemplatesApi->delete_certificate_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**CerfiticateTemplate**](CerfiticateTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_certificate_templates**
> Array&lt;CerfiticateTemplate&gt; get_certificate_templates(opts)

Get all certificate template records



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

api_instance = Eduframe::CertificateTemplatesApi.new

opts = { 
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all certificate template records
  result = api_instance.get_certificate_templates(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CertificateTemplatesApi->get_certificate_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;CerfiticateTemplate&gt;**](CerfiticateTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_certificate_templates_id_duplicate**
> CerfiticateTemplate put_certificate_templates_id_duplicate(id)

Duplicate a certificate template



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

api_instance = Eduframe::CertificateTemplatesApi.new

id = 8.14 # Float | 


begin
  #Duplicate a certificate template
  result = api_instance.put_certificate_templates_id_duplicate(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling CertificateTemplatesApi->put_certificate_templates_id_duplicate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**CerfiticateTemplate**](CerfiticateTemplate.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



