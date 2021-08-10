# Eduframe::PlanningMaterialsApi

All URIs are relative to *https://api.eduframe.nl/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_planning_materials**](PlanningMaterialsApi.md#get_planning_materials) | **GET** /planning/materials | Get all materials that are available


# **get_planning_materials**
> Array&lt;Material&gt; get_planning_materials(opts)

Get all materials that are available



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

api_instance = Eduframe::PlanningMaterialsApi.new

opts = { 
  include: ['include_example'], # Array<String> | Include relations
  available_from: 'available_from_example', # String | Filter results on available_from
  available_to: 'available_to_example', # String | Filter results on available_to
  search_associated: 'search_associated_example', # String | Filter results on search_associated
  material_group_id: 'material_group_id_example' # String | Filter results on material_group_id
}

begin
  #Get all materials that are available
  result = api_instance.get_planning_materials(opts)
  p result
rescue Eduframe::ApiError => e
  puts "Exception when calling PlanningMaterialsApi->get_planning_materials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Include relations | [optional] 
 **available_from** | **String**| Filter results on available_from | [optional] 
 **available_to** | **String**| Filter results on available_to | [optional] 
 **search_associated** | **String**| Filter results on search_associated | [optional] 
 **material_group_id** | **String**| Filter results on material_group_id | [optional] 

### Return type

[**Array&lt;Material&gt;**](Material.md)

### Authorization

[Bearer](../README.md#Bearer), [Educator](../README.md#Educator)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



