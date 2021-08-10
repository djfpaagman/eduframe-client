=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Eduframe::MeetingTemplate
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MeetingTemplate' do
  before do
    # run before each test
    @instance = Eduframe::MeetingTemplate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MeetingTemplate' do
    it 'should create an instance of MeetingTemplate' do
      expect(@instance).to be_instance_of(Eduframe::MeetingTemplate)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "course_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "teacher_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "offset_in_days"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "offset_anchor"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "start_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "meeting_location_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description_dashboard"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "teachers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "planning_attendees"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "planning_materials"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "meeting_location"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "planning_event_templates"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "planning_meeting_locations"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "materials"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
