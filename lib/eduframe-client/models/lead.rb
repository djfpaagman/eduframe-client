=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'date'

module Eduframe
  class Lead
    # Unique identifier of the lead
    attr_accessor :id

    # Indicates the lead was created
    attr_accessor :creation_method

    # Text supplied at referral
    attr_accessor :referral_text

    # Timestamp of creation
    attr_accessor :created_at

    # Timestamp of last update
    attr_accessor :updated_at

    # Title of the lead
    attr_accessor :title

    # ID of the account linked to this lead
    attr_accessor :account_id

    # ID of the user linked to this lead
    attr_accessor :user_id

    # Decimal representing the price of a lead
    attr_accessor :value

    # Name of the company where this lead comes from
    attr_accessor :company_name

    # The first name of the lead
    attr_accessor :first_name

    # The middle name of the lead
    attr_accessor :middle_name

    # The last name of the lead
    attr_accessor :last_name

    # ID of administrator that owns the lead
    attr_accessor :administrator_id

    # The email of the lead
    attr_accessor :email

    # The phone number of the lead
    attr_accessor :phone

    # The status of the lead
    attr_accessor :status

    # Star scoring for the lead
    attr_accessor :quality

    # Indicates if lead wants to receive the newsletter or not
    attr_accessor :wants_newsletter

    attr_accessor :labels

    attr_accessor :address

    attr_accessor :user

    attr_accessor :account

    attr_accessor :administrator

    attr_accessor :courses

    attr_accessor :planned_courses

    attr_accessor :attachments

    attr_accessor :courses_leads

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'creation_method' => :'creation_method',
        :'referral_text' => :'referral_text',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'title' => :'title',
        :'account_id' => :'account_id',
        :'user_id' => :'user_id',
        :'value' => :'value',
        :'company_name' => :'company_name',
        :'first_name' => :'first_name',
        :'middle_name' => :'middle_name',
        :'last_name' => :'last_name',
        :'administrator_id' => :'administrator_id',
        :'email' => :'email',
        :'phone' => :'phone',
        :'status' => :'status',
        :'quality' => :'quality',
        :'wants_newsletter' => :'wants_newsletter',
        :'labels' => :'labels',
        :'address' => :'address',
        :'user' => :'user',
        :'account' => :'account',
        :'administrator' => :'administrator',
        :'courses' => :'courses',
        :'planned_courses' => :'planned_courses',
        :'attachments' => :'attachments',
        :'courses_leads' => :'courses_leads'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Float',
        :'creation_method' => :'String',
        :'referral_text' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'title' => :'String',
        :'account_id' => :'Float',
        :'user_id' => :'Float',
        :'value' => :'String',
        :'company_name' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'administrator_id' => :'Float',
        :'email' => :'String',
        :'phone' => :'String',
        :'status' => :'String',
        :'quality' => :'String',
        :'wants_newsletter' => :'BOOLEAN',
        :'labels' => :'Array<Object>',
        :'address' => :'Object',
        :'user' => :'Object',
        :'account' => :'Object',
        :'administrator' => :'Object',
        :'courses' => :'Array<Object>',
        :'planned_courses' => :'Array<Object>',
        :'attachments' => :'Array<Object>',
        :'courses_leads' => :'Array<Object>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'creation_method')
        self.creation_method = attributes[:'creation_method']
      end

      if attributes.has_key?(:'referral_text')
        self.referral_text = attributes[:'referral_text']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'administrator_id')
        self.administrator_id = attributes[:'administrator_id']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'quality')
        self.quality = attributes[:'quality']
      end

      if attributes.has_key?(:'wants_newsletter')
        self.wants_newsletter = attributes[:'wants_newsletter']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'administrator')
        self.administrator = attributes[:'administrator']
      end

      if attributes.has_key?(:'courses')
        if (value = attributes[:'courses']).is_a?(Array)
          self.courses = value
        end
      end

      if attributes.has_key?(:'planned_courses')
        if (value = attributes[:'planned_courses']).is_a?(Array)
          self.planned_courses = value
        end
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'courses_leads')
        if (value = attributes[:'courses_leads']).is_a?(Array)
          self.courses_leads = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @creation_method.nil?
        invalid_properties.push('invalid value for "creation_method", creation_method cannot be nil.')
      end

      if @referral_text.nil?
        invalid_properties.push('invalid value for "referral_text", referral_text cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @creation_method.nil?
      return false if @referral_text.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @title.nil?
      status_validator = EnumAttributeValidator.new('String', ['prospect', 'waiting_list', 'won', 'lost', 'archive'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['prospect', 'waiting_list', 'won', 'lost', 'archive'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          creation_method == o.creation_method &&
          referral_text == o.referral_text &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          title == o.title &&
          account_id == o.account_id &&
          user_id == o.user_id &&
          value == o.value &&
          company_name == o.company_name &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          administrator_id == o.administrator_id &&
          email == o.email &&
          phone == o.phone &&
          status == o.status &&
          quality == o.quality &&
          wants_newsletter == o.wants_newsletter &&
          labels == o.labels &&
          address == o.address &&
          user == o.user &&
          account == o.account &&
          administrator == o.administrator &&
          courses == o.courses &&
          planned_courses == o.planned_courses &&
          attachments == o.attachments &&
          courses_leads == o.courses_leads
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, creation_method, referral_text, created_at, updated_at, title, account_id, user_id, value, company_name, first_name, middle_name, last_name, administrator_id, email, phone, status, quality, wants_newsletter, labels, address, user, account, administrator, courses, planned_courses, attachments, courses_leads].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Eduframe.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end