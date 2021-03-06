=begin
#Eduframe - API (params in:body)

# <p>The Eduframe API is organized around REST and is formatted in JSON. We try to keep the amount of changes to the API to a minimum but it is possible that it is changed.</p> <dl class=\"rdoc-list label-list\"><dt>Swagger / Open API <dd> <p>In addition to this documentation, it is also possible to view this documentation through the <a href=\"http://petstore.swagger.io/?url=https%3A%2F%2Fapi.eduframe.nl%2Fapi%2Fv1%2Fdocs.json%3Ftype%3Dswagger\">swagger (Open API) viewer</a>.</p> </dd><dt>Authentication <dd> <p>For authenticating through Eduframe API v1 we use OAuth2 token. There are several open endpoints which can be used without authentication. For the endpoints that need authentication, the user needs an API key to send together with the request as <code>Bearer &lt;api key&gt;</code> in the authorization header. If there are requests that require authentication a <code>403 Forbidden</code> error or a <code>404 Not Found</code> error will be returned.</p> </dd><dt>Sorting <dd> <p>For sorting the data, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?sort=start_date</code> for ascending sort (default sorting) and <code>api/v1/planned_courses?sort=start_date:desc</code> for descending sort.</p> </dd><dt>Include relations <dd> <p>For adding an include, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course.credit_definitions.type</code>. The allowed includes are shown at the relevant actions.</p> </dd><dt>Filtering <dd> <p>For adding a filter, the following format of base_url is used (e.g.): <code>api/v1/planned_courses?include=course&amp;min_cost=200</code>. The allowed filters are shown at the relevant actions.</p> </dd><dt>Blank fields <dd> <p>Blank fields are included as <code>null</code>.</p> </dd><dt>Boolean values <dd> <p>All boolean parameters can be passed as <code>true</code>, <code>false</code>, <code>1</code> or <code>0</code>. And are returned as <code>true</code> or <code>false</code>.</p> </dd><dt>CORS <dd> <p>The Eduframe API supports Cross Origin Resource Sharing (CORS) based on a list of trusted domains. Ask support if you need a domain to be added to the list of your educator.</p> </dd><dt>Date Format <dd> <p>Some requests generate timestamps (a timestamp is generated at the moment the API call is made) or allow specifying them. All timestamps are returned in <code>ISO 8601</code> format: <code>yyyy-MM-ddTHH:mm:ss.SSSZ</code>. If providing a date, just make sure you follow the same ISO standard.</p> </dd><dt>HTTP verbs <dd> <p>For each request the appropriate HTTP verbs are used. <code>GET</code> is used for retrieving resources, <code>POST</code> is used for creating resources, <code>PUT</code> is used for updated resources with partial JSON data. A PUT request can accept one or more parameters to update the resource; the parameters that are not updated keep their original values, <code>DELETE</code> is used for deleting resources.</p> </dd><dt>Pagination <dd> <p>Requests that return multiple items will be paginated to 25 items by defaut. You can select a page with the <code>page</code> query parameter. When omitted, the first page is returned by default. You can set a custom per-page amount with the <code>per_page</code> query parameter (with a maximum of 100). The <a href=\"http://tools.ietf.org/html/rfc5988\">Link header</a> includes pagination information. For example: <code>Link: &lt;https://educator.eduframe.nl/courses?page=3&per_page=100&gt;; rel=&quot;next&quot;, &lt;https://educator.eduframe.nl/courses?page=50&per_page=100&gt;; rel=&quot;last&quot;</code></p> </dd><dt>Errors <dd> <p>In the Eduframe API the general codes are: the <code>2xx</code> range indicates a successful request; the <code>4xx</code> range indicates an error representing the failure of giving the provided information(e.g. a required parameter was omitted, a certain include/filter is not allowed, unauthorized access, etc.); the <code>5xx</code> range indicates an error with the Eduframe&#39;s servers.</p> </dd><dt>WebHooks <dd> <p>Webhooks allow you to build or set up integrations, such as Azure Logic Apps, which subscribe to certain events on Eduframe. When one of those events is triggered, we will send a HTTP POST payload to the webhook&#39;s configured URL. <a href=\"/api/v1/docs/1.0/webhooks.html\">More info can be found at the webhooks documentation.</a></p> </dd></dl> 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'date'

module Eduframe
  class Order
    # Unique identifier of the order.
    attr_accessor :id

    # Educator specific identifier of the order which autoincrements.
    attr_accessor :number

    # State of the order.
    attr_accessor :status

    # Number of students in this order.
    attr_accessor :number_of_students

    # Where the order originated from ex. Unknown, backend, signup.
    attr_accessor :origin

    # Comment from the customer.
    attr_accessor :customer_comment

    # Timestamp of creation.
    attr_accessor :created_at

    # Timestamp of last update.
    attr_accessor :updated_at

    # Decimal representing the value of the order
    attr_accessor :cost

    # The cost schema that the payment will follow for the specified order.
    attr_accessor :cost_scheme

    # Unique identifier of the orders CatalogVariant.
    attr_accessor :catalog_variant_id

    # Unique identifier of the orders Account.
    attr_accessor :account_id

    # *DEPRECATED*: Use catalog_variant_id instead. Unique identifier of the order's planned course. 
    attr_accessor :planned_course_id

    # Array of student ids
    attr_accessor :student_ids

    # Unique identifier of the orders Creator (User).
    attr_accessor :creator_id

    # Unique identifier of the orders PaymentOption.
    attr_accessor :payment_option_id

    # Unique identifier of the orders PaymentMethod.
    attr_accessor :payment_method_id

    # The custom properties of the order.
    attr_accessor :custom

    attr_accessor :account

    attr_accessor :catalog_product

    attr_accessor :catalog_variant

    attr_accessor :creator

    attr_accessor :enrollments

    attr_accessor :labels

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
        :'number' => :'number',
        :'status' => :'status',
        :'number_of_students' => :'number_of_students',
        :'origin' => :'origin',
        :'customer_comment' => :'customer_comment',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'cost' => :'cost',
        :'cost_scheme' => :'cost_scheme',
        :'catalog_variant_id' => :'catalog_variant_id',
        :'account_id' => :'account_id',
        :'planned_course_id' => :'planned_course_id',
        :'student_ids' => :'student_ids',
        :'creator_id' => :'creator_id',
        :'payment_option_id' => :'payment_option_id',
        :'payment_method_id' => :'payment_method_id',
        :'custom' => :'custom',
        :'account' => :'account',
        :'catalog_product' => :'catalog_product',
        :'catalog_variant' => :'catalog_variant',
        :'creator' => :'creator',
        :'enrollments' => :'enrollments',
        :'labels' => :'labels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Float',
        :'number' => :'Float',
        :'status' => :'String',
        :'number_of_students' => :'Float',
        :'origin' => :'String',
        :'customer_comment' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'cost' => :'String',
        :'cost_scheme' => :'String',
        :'catalog_variant_id' => :'Float',
        :'account_id' => :'Float',
        :'planned_course_id' => :'Float',
        :'student_ids' => :'Array<String>',
        :'creator_id' => :'Float',
        :'payment_option_id' => :'Float',
        :'payment_method_id' => :'Float',
        :'custom' => :'Object',
        :'account' => :'Object',
        :'catalog_product' => :'Object',
        :'catalog_variant' => :'Object',
        :'creator' => :'Object',
        :'enrollments' => :'Array<Object>',
        :'labels' => :'Array<Object>'
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

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'number_of_students')
        self.number_of_students = attributes[:'number_of_students']
      end

      if attributes.has_key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.has_key?(:'customer_comment')
        self.customer_comment = attributes[:'customer_comment']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'cost_scheme')
        self.cost_scheme = attributes[:'cost_scheme']
      end

      if attributes.has_key?(:'catalog_variant_id')
        self.catalog_variant_id = attributes[:'catalog_variant_id']
      end

      if attributes.has_key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.has_key?(:'planned_course_id')
        self.planned_course_id = attributes[:'planned_course_id']
      end

      if attributes.has_key?(:'student_ids')
        if (value = attributes[:'student_ids']).is_a?(Array)
          self.student_ids = value
        end
      end

      if attributes.has_key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.has_key?(:'payment_option_id')
        self.payment_option_id = attributes[:'payment_option_id']
      end

      if attributes.has_key?(:'payment_method_id')
        self.payment_method_id = attributes[:'payment_method_id']
      end

      if attributes.has_key?(:'custom')
        self.custom = attributes[:'custom']
      end

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'catalog_product')
        self.catalog_product = attributes[:'catalog_product']
      end

      if attributes.has_key?(:'catalog_variant')
        self.catalog_variant = attributes[:'catalog_variant']
      end

      if attributes.has_key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.has_key?(:'enrollments')
        if (value = attributes[:'enrollments']).is_a?(Array)
          self.enrollments = value
        end
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
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

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @number_of_students.nil?
        invalid_properties.push('invalid value for "number_of_students", number_of_students cannot be nil.')
      end

      if @origin.nil?
        invalid_properties.push('invalid value for "origin", origin cannot be nil.')
      end

      if @customer_comment.nil?
        invalid_properties.push('invalid value for "customer_comment", customer_comment cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @number.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['requested', 'denied', 'active', 'canceled'])
      return false unless status_validator.valid?(@status)
      return false if @number_of_students.nil?
      return false if @origin.nil?
      return false if @customer_comment.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      cost_scheme_validator = EnumAttributeValidator.new('String', ['student', 'order', 'tbd', 'free'])
      return false unless cost_scheme_validator.valid?(@cost_scheme)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['requested', 'denied', 'active', 'canceled'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cost_scheme Object to be assigned
    def cost_scheme=(cost_scheme)
      validator = EnumAttributeValidator.new('String', ['student', 'order', 'tbd', 'free'])
      unless validator.valid?(cost_scheme)
        fail ArgumentError, 'invalid value for "cost_scheme", must be one of #{validator.allowable_values}.'
      end
      @cost_scheme = cost_scheme
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          number == o.number &&
          status == o.status &&
          number_of_students == o.number_of_students &&
          origin == o.origin &&
          customer_comment == o.customer_comment &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          cost == o.cost &&
          cost_scheme == o.cost_scheme &&
          catalog_variant_id == o.catalog_variant_id &&
          account_id == o.account_id &&
          planned_course_id == o.planned_course_id &&
          student_ids == o.student_ids &&
          creator_id == o.creator_id &&
          payment_option_id == o.payment_option_id &&
          payment_method_id == o.payment_method_id &&
          custom == o.custom &&
          account == o.account &&
          catalog_product == o.catalog_product &&
          catalog_variant == o.catalog_variant &&
          creator == o.creator &&
          enrollments == o.enrollments &&
          labels == o.labels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, number, status, number_of_students, origin, customer_comment, created_at, updated_at, cost, cost_scheme, catalog_variant_id, account_id, planned_course_id, student_ids, creator_id, payment_option_id, payment_method_id, custom, account, catalog_product, catalog_variant, creator, enrollments, labels].hash
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
