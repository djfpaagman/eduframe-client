=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'uri'

module Eduframe
  class CalendarItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all items for a specific type
    # 
    # @param resources_type Specify the type of resource. Leave empty to show all items.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_before Filter results on start_before
    # @option opts [String] :start_after Filter results on start_after
    # @option opts [String] :end_before Filter results on end_before
    # @option opts [String] :end_after Filter results on end_after
    # @option opts [String] :canceled Filter results on canceled
    # @option opts [Array<String>] :planned_course_id Filter results on planned_course_id
    # @option opts [Array<String>] :course_id Filter results on course_id
    # @option opts [Array<String>] :course_category_id Filter results on course_category_id
    # @option opts [Array<String>] :edition_id Filter results on edition_id
    # @option opts [Array<String>] :teacher_id Filter results on teacher_id
    # @option opts [Array<String>] :teacher_role_id Filter results on teacher_role_id
    # @option opts [Array<String>] :program_id Filter results on program_id
    # @option opts [Array<String>] :meeting_location_id Filter results on meeting_location_id
    # @option opts [Array<String>] :planning_meeting_location_id Filter results on planning_meeting_location_id
    # @option opts [Array<String>] :course_location_id Filter results on course_location_id
    # @option opts [Array<String>] :item_type Filter results on item_type
    # @option opts [Array<String>] :material_id Filter results on material_id
    # @return [Array<CalendarItem>]
    def get_calendar_items_resources_type(resources_type, opts = {})
      data, _status_code, _headers = get_calendar_items_resources_type_with_http_info(resources_type, opts)
      data
    end

    # Get all items for a specific type
    # 
    # @param resources_type Specify the type of resource. Leave empty to show all items.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_before Filter results on start_before
    # @option opts [String] :start_after Filter results on start_after
    # @option opts [String] :end_before Filter results on end_before
    # @option opts [String] :end_after Filter results on end_after
    # @option opts [String] :canceled Filter results on canceled
    # @option opts [Array<String>] :planned_course_id Filter results on planned_course_id
    # @option opts [Array<String>] :course_id Filter results on course_id
    # @option opts [Array<String>] :course_category_id Filter results on course_category_id
    # @option opts [Array<String>] :edition_id Filter results on edition_id
    # @option opts [Array<String>] :teacher_id Filter results on teacher_id
    # @option opts [Array<String>] :teacher_role_id Filter results on teacher_role_id
    # @option opts [Array<String>] :program_id Filter results on program_id
    # @option opts [Array<String>] :meeting_location_id Filter results on meeting_location_id
    # @option opts [Array<String>] :planning_meeting_location_id Filter results on planning_meeting_location_id
    # @option opts [Array<String>] :course_location_id Filter results on course_location_id
    # @option opts [Array<String>] :item_type Filter results on item_type
    # @option opts [Array<String>] :material_id Filter results on material_id
    # @return [Array<(Array<CalendarItem>, Fixnum, Hash)>] Array<CalendarItem> data, response status code and response headers
    def get_calendar_items_resources_type_with_http_info(resources_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CalendarItemsApi.get_calendar_items_resources_type ...'
      end
      # verify the required parameter 'resources_type' is set
      if @api_client.config.client_side_validation && resources_type.nil?
        fail ArgumentError, "Missing the required parameter 'resources_type' when calling CalendarItemsApi.get_calendar_items_resources_type"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['null', 'teachers', 'materials', 'locations'].include?(resources_type)
        fail ArgumentError, "invalid value for 'resources_type', must be one of null, teachers, materials, locations"
      end
      # resource path
      local_var_path = '/calendar/items/{resources_type}'.sub('{' + 'resources_type' + '}', resources_type.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_before'] = opts[:'start_before'] if !opts[:'start_before'].nil?
      query_params[:'start_after'] = opts[:'start_after'] if !opts[:'start_after'].nil?
      query_params[:'end_before'] = opts[:'end_before'] if !opts[:'end_before'].nil?
      query_params[:'end_after'] = opts[:'end_after'] if !opts[:'end_after'].nil?
      query_params[:'canceled'] = opts[:'canceled'] if !opts[:'canceled'].nil?
      query_params[:'planned_course_id'] = @api_client.build_collection_param(opts[:'planned_course_id'], :csv) if !opts[:'planned_course_id'].nil?
      query_params[:'course_id'] = @api_client.build_collection_param(opts[:'course_id'], :csv) if !opts[:'course_id'].nil?
      query_params[:'course_category_id'] = @api_client.build_collection_param(opts[:'course_category_id'], :csv) if !opts[:'course_category_id'].nil?
      query_params[:'edition_id'] = @api_client.build_collection_param(opts[:'edition_id'], :csv) if !opts[:'edition_id'].nil?
      query_params[:'teacher_id'] = @api_client.build_collection_param(opts[:'teacher_id'], :csv) if !opts[:'teacher_id'].nil?
      query_params[:'teacher_role_id'] = @api_client.build_collection_param(opts[:'teacher_role_id'], :csv) if !opts[:'teacher_role_id'].nil?
      query_params[:'program_id'] = @api_client.build_collection_param(opts[:'program_id'], :csv) if !opts[:'program_id'].nil?
      query_params[:'meeting_location_id'] = @api_client.build_collection_param(opts[:'meeting_location_id'], :csv) if !opts[:'meeting_location_id'].nil?
      query_params[:'planning_meeting_location_id'] = @api_client.build_collection_param(opts[:'planning_meeting_location_id'], :csv) if !opts[:'planning_meeting_location_id'].nil?
      query_params[:'course_location_id'] = @api_client.build_collection_param(opts[:'course_location_id'], :csv) if !opts[:'course_location_id'].nil?
      query_params[:'item_type'] = @api_client.build_collection_param(opts[:'item_type'], :csv) if !opts[:'item_type'].nil?
      query_params[:'material_id'] = @api_client.build_collection_param(opts[:'material_id'], :csv) if !opts[:'material_id'].nil?

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
        :return_type => 'Array<CalendarItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarItemsApi#get_calendar_items_resources_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end