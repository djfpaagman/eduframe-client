=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'uri'

module Eduframe
  class MaterialsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a material.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Material]
    def delete_materials_id(id, opts = {})
      data, _status_code, _headers = delete_materials_id_with_http_info(id, opts)
      data
    end

    # Delete a material.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Material, Fixnum, Hash)>] Material data, response status code and response headers
    def delete_materials_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaterialsApi.delete_materials_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaterialsApi.delete_materials_id"
      end
      # resource path
      local_var_path = '/materials/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer', 'Educator']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Material')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaterialsApi#delete_materials_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all material records
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :include Include relations
    # @option opts [String] :material_group_id Filter results on material_group_id
    # @option opts [String] :search_associated Filter results on search_associated
    # @option opts [Array<String>] :id Filter results on id
    # @option opts [Array<String>] :sort Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60;
    # @return [Array<Material>]
    def get_materials(opts = {})
      data, _status_code, _headers = get_materials_with_http_info(opts)
      data
    end

    # Get all material records
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :include Include relations
    # @option opts [String] :material_group_id Filter results on material_group_id
    # @option opts [String] :search_associated Filter results on search_associated
    # @option opts [Array<String>] :id Filter results on id
    # @option opts [Array<String>] :sort Sort the results. Can change order by using &#x60;&lt;sort_by&gt;:&lt;direction&gt;&#x60; where &#x60;&lt;direction&gt;&#x60; is either &#x60;asc&#x60; or &#x60;desc&#x60;
    # @return [Array<(Array<Material>, Fixnum, Hash)>] Array<Material> data, response status code and response headers
    def get_materials_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaterialsApi.get_materials ...'
      end
      if @api_client.config.client_side_validation && opts[:'include'] && !opts[:'include'].all? { |item| ['material_group'].include?(item) }
        fail ArgumentError, 'invalid value for "include", must include one of material_group'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !opts[:'sort'].all? { |item| ['id', 'material_group_id', 'name', 'material_groups.name', 'material_groups'].include?(item) }
        fail ArgumentError, 'invalid value for "sort", must include one of id, material_group_id, name, material_groups.name, material_groups'
      end
      # resource path
      local_var_path = '/materials'

      # query parameters
      query_params = {}
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :csv) if !opts[:'include'].nil?
      query_params[:'material_group_id'] = opts[:'material_group_id'] if !opts[:'material_group_id'].nil?
      query_params[:'search_associated'] = opts[:'search_associated'] if !opts[:'search_associated'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :csv) if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer', 'Educator']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Material>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaterialsApi#get_materials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a material.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Material]
    def post_materials(opts = {})
      data, _status_code, _headers = post_materials_with_http_info(opts)
      data
    end

    # Create a material.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Array<(Material, Fixnum, Hash)>] Material data, response status code and response headers
    def post_materials_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaterialsApi.post_materials ...'
      end
      # resource path
      local_var_path = '/materials'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Bearer', 'Educator']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Material')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaterialsApi#post_materials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a material.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Material]
    def put_materials_id(id, opts = {})
      data, _status_code, _headers = put_materials_id_with_http_info(id, opts)
      data
    end

    # Update a material.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Array<(Material, Fixnum, Hash)>] Material data, response status code and response headers
    def put_materials_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaterialsApi.put_materials_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaterialsApi.put_materials_id"
      end
      # resource path
      local_var_path = '/materials/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Bearer', 'Educator']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Material')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaterialsApi#put_materials_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
