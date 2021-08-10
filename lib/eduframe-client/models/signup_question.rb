=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'date'

module Eduframe
  class SignupQuestion
    # Unique identifier of the question.
    attr_accessor :id

    # Position of the question used for ordering.
    attr_accessor :position

    # The type of field.
    attr_accessor :field_type

    # The title and label of the question
    attr_accessor :title

    # The slug of the question
    attr_accessor :slug

    # Define if this question is required on the Signup page.
    attr_accessor :required

    # Define to what type of models this should be linked.
    attr_accessor :for_type

    # List of at what locations you want to show this field in the signup
    attr_accessor :visibility

    # DEPRECATED: boolean if the question is visible for students. Please use the visibility attribute.
    attr_accessor :for_student

    # DEPRECATED: boolean if the question is visible for customers. Please use the visibility attribute.
    attr_accessor :for_customer

    # Array of string with the choice options if the type of the field is select.
    attr_accessor :choices

    # The internal system name used for this field.
    attr_accessor :system_name

    # boolean if the question is use as duplicate indicator.
    attr_accessor :use_as_duplicate_indicator

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
        :'position' => :'position',
        :'field_type' => :'field_type',
        :'title' => :'title',
        :'slug' => :'slug',
        :'required' => :'required',
        :'for_type' => :'for_type',
        :'visibility' => :'visibility',
        :'for_student' => :'for_student',
        :'for_customer' => :'for_customer',
        :'choices' => :'choices',
        :'system_name' => :'system_name',
        :'use_as_duplicate_indicator' => :'use_as_duplicate_indicator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Float',
        :'position' => :'Float',
        :'field_type' => :'String',
        :'title' => :'String',
        :'slug' => :'String',
        :'required' => :'BOOLEAN',
        :'for_type' => :'String',
        :'visibility' => :'Array<String>',
        :'for_student' => :'BOOLEAN',
        :'for_customer' => :'BOOLEAN',
        :'choices' => :'Array<String>',
        :'system_name' => :'String',
        :'use_as_duplicate_indicator' => :'BOOLEAN'
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

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'field_type')
        self.field_type = attributes[:'field_type']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.has_key?(:'required')
        self.required = attributes[:'required']
      end

      if attributes.has_key?(:'for_type')
        self.for_type = attributes[:'for_type']
      end

      if attributes.has_key?(:'visibility')
        if (value = attributes[:'visibility']).is_a?(Array)
          self.visibility = value
        end
      end

      if attributes.has_key?(:'for_student')
        self.for_student = attributes[:'for_student']
      end

      if attributes.has_key?(:'for_customer')
        self.for_customer = attributes[:'for_customer']
      end

      if attributes.has_key?(:'choices')
        if (value = attributes[:'choices']).is_a?(Array)
          self.choices = value
        end
      end

      if attributes.has_key?(:'system_name')
        self.system_name = attributes[:'system_name']
      end

      if attributes.has_key?(:'use_as_duplicate_indicator')
        self.use_as_duplicate_indicator = attributes[:'use_as_duplicate_indicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      if @field_type.nil?
        invalid_properties.push('invalid value for "field_type", field_type cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @slug.nil?
        invalid_properties.push('invalid value for "slug", slug cannot be nil.')
      end

      if @required.nil?
        invalid_properties.push('invalid value for "required", required cannot be nil.')
      end

      if @for_type.nil?
        invalid_properties.push('invalid value for "for_type", for_type cannot be nil.')
      end

      if @visibility.nil?
        invalid_properties.push('invalid value for "visibility", visibility cannot be nil.')
      end

      if @for_student.nil?
        invalid_properties.push('invalid value for "for_student", for_student cannot be nil.')
      end

      if @for_customer.nil?
        invalid_properties.push('invalid value for "for_customer", for_customer cannot be nil.')
      end

      if @choices.nil?
        invalid_properties.push('invalid value for "choices", choices cannot be nil.')
      end

      if @system_name.nil?
        invalid_properties.push('invalid value for "system_name", system_name cannot be nil.')
      end

      if @use_as_duplicate_indicator.nil?
        invalid_properties.push('invalid value for "use_as_duplicate_indicator", use_as_duplicate_indicator cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @position.nil?
      return false if @field_type.nil?
      field_type_validator = EnumAttributeValidator.new('String', ['boolean', 'datepicker', 'decimal', 'phone', 'select', 'multiselect', 'string', 'text', 'vat_number'])
      return false unless field_type_validator.valid?(@field_type)
      return false if @title.nil?
      return false if @slug.nil?
      return false if @required.nil?
      return false if @for_type.nil?
      for_type_validator = EnumAttributeValidator.new('String', ['user', 'teacher', 'account', 'catalog_product', 'order'])
      return false unless for_type_validator.valid?(@for_type)
      return false if @visibility.nil?
      return false if @for_student.nil?
      return false if @for_customer.nil?
      return false if @choices.nil?
      return false if @system_name.nil?
      return false if @use_as_duplicate_indicator.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] field_type Object to be assigned
    def field_type=(field_type)
      validator = EnumAttributeValidator.new('String', ['boolean', 'datepicker', 'decimal', 'phone', 'select', 'multiselect', 'string', 'text', 'vat_number'])
      unless validator.valid?(field_type)
        fail ArgumentError, 'invalid value for "field_type", must be one of #{validator.allowable_values}.'
      end
      @field_type = field_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] for_type Object to be assigned
    def for_type=(for_type)
      validator = EnumAttributeValidator.new('String', ['user', 'teacher', 'account', 'catalog_product', 'order'])
      unless validator.valid?(for_type)
        fail ArgumentError, 'invalid value for "for_type", must be one of #{validator.allowable_values}.'
      end
      @for_type = for_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          position == o.position &&
          field_type == o.field_type &&
          title == o.title &&
          slug == o.slug &&
          required == o.required &&
          for_type == o.for_type &&
          visibility == o.visibility &&
          for_student == o.for_student &&
          for_customer == o.for_customer &&
          choices == o.choices &&
          system_name == o.system_name &&
          use_as_duplicate_indicator == o.use_as_duplicate_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, position, field_type, title, slug, required, for_type, visibility, for_student, for_customer, choices, system_name, use_as_duplicate_indicator].hash
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