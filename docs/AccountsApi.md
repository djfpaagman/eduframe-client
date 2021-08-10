# Eduframe::AccountsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | Get all accounts
[**get_accounts_id**](AccountsApi.md#get_accounts_id) | **GET** /accounts/{id} | Get a single account
[**post_accounts**](AccountsApi.md#post_accounts) | **POST** /accounts | Create an account


# **get_accounts**
> Array&lt;Account&gt; get_accounts(opts)

Get all accounts



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

api_instance = Eduframe::AccountsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  sort: ['sort_example'], # Array<String> | Sort the results. Can change order by using `<sort_by>:<direction>` where `<direction>` is either `asc` or `desc`
  search: 'search_example', # String | Filter results on search
  key_contact_user_id: 'key_contact_user_id_example', # String | Filter results on key_contact_user_id
  user_id: 'user_id_example', # String | Filter results on user_id
  account_type: 'account_type_example', # String | Filter results on account_type
  plugin_data_value: 'plugin_data_value_example', # String | Filter results on plugin_data_value
  plugin_data_field_title: 'plugin_data_field_title_example', # String | Filter results on plugin_data_field_title
  plugin_data_plugin_name: 'plugin_data_plugin_name_example', # String | Filter results on plugin_data_plugin_name
  id: ['id_example'], # Array<String> | Filter results on id
  label_id: ['label_id_example'], # Array<String> | Filter results on label_id
  orders_status: ['orders_status_example'] # Array<String> | Filter results on orders_status
}

begin
  #Get all accounts
  result = api_instance.get_accounts(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60; | [optional] 
 **search** | **String**| Filter results on search | [optional] 
 **key_contact_user_id** | **String**| Filter results on key_contact_user_id | [optional] 
 **user_id** | **String**| Filter results on user_id | [optional] 
 **account_type** | **String**| Filter results on account_type | [optional] 
 **plugin_data_value** | **String**| Filter results on plugin_data_value | [optional] 
 **plugin_data_field_title** | **String**| Filter results on plugin_data_field_title | [optional] 
 **plugin_data_plugin_name** | **String**| Filter results on plugin_data_plugin_name | [optional] 
 **id** | [**Array&lt;String&gt;**](String.md)| Filter results on id | [optional] 
 **label_id** | [**Array&lt;String&gt;**](String.md)| Filter results on label_id | [optional] 
 **orders_status** | [**Array&lt;String&gt;**](String.md)| Filter results on orders_status | [optional] 

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_accounts_id**
> Account get_accounts_id(id, opts)

Get a single account



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

api_instance = Eduframe::AccountsApi.new

id = 8.14 # Float | 

opts = { 
  include: ['include_example'] # Array<String> | Include relations
}

begin
  #Get a single account
  result = api_instance.get_accounts_id(id, opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | 
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **post_accounts**
> Account post_accounts(opts)

Create an account



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

api_instance = Eduframe::AccountsApi.new

opts = { 
  body: Eduframe::Body.new # Body | 
}

begin
  #Create an account
  result = api_instance.post_accounts(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling AccountsApi->post_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](.md)|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



