# Eduframe::AffiliationsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_affiliations_id**](AffiliationsApi.md#delete_affiliations_id) | **DELETE** /affiliations/{id} | Delete an affiliation
[**get_affiliations**](AffiliationsApi.md#get_affiliations) | **GET** /affiliations | Get all affiliations
[**post_affiliations**](AffiliationsApi.md#post_affiliations) | **POST** /affiliations | Create an affiliation affiliations
[**put_affiliations_id**](AffiliationsApi.md#put_affiliations_id) | **PUT** /affiliations/{id} | Update an affiliation.


# **delete_affiliations_id**
> Affiliation delete_affiliations_id(id)

Delete an affiliation



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

api_instance = Eduframe::AffiliationsApi.new

id = 8.14 # Float | 


begin
  #Delete an affiliation
  result = api_instance.delete_affiliations_id(id)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AffiliationsApi->delete_affiliations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 

### Return type

[**Affiliation**](Affiliation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_affiliations**
> Array&lt;Affiliation&gt; get_affiliations(opts)

Get all affiliations



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

api_instance = Eduframe::AffiliationsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  user_id: 'user_id_example', # String | Filter results on user_id
  account_id: 'account_id_example', # String | Filter results on account_id
  key_contact: 'key_contact_example', # String | Filter results on key_contact
  search: 'search_example', # String | Filter results on search
  sort: ['sort_example'] # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
}

begin
  #Get all affiliations
  result = api_instance.get_affiliations(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AffiliationsApi->get_affiliations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **user_id** | **String**| Filter results on user_id | [optional] 
 **account_id** | **String**| Filter results on account_id | [optional] 
 **key_contact** | **String**| Filter results on key_contact | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 

### Return type

[**Array&lt;Affiliation&gt;**](Affiliation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_affiliations**
> Affiliation post_affiliations(opts)

Create an affiliation affiliations



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

api_instance = Eduframe::AffiliationsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an affiliation affiliations
  result = api_instance.post_affiliations(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AffiliationsApi->post_affiliations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Affiliation**](Affiliation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_affiliations_id**
> Affiliation put_affiliations_id(id, opts)

Update an affiliation.



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

api_instance = Eduframe::AffiliationsApi.new

id = 8.14 # Float | 

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Update an affiliation.
  result = api_instance.put_affiliations_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AffiliationsApi->put_affiliations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Affiliation**](Affiliation.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



