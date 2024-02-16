=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

require 'date'

module SwaggerClient
  class V1Invitation
    # Unique identifier for a given Invitation object.
    attr_accessor :invitation_id

    # The name of the intended Invitation recipient.
    attr_accessor :receiver_user_name

    # The email address of the intended Invitation recipient.
    attr_accessor :receiver_email

    # A list of tags assigned to the Invitation recipient.
    attr_accessor :receiver_user_tags

    attr_accessor :access_type

    attr_accessor :status

    attr_accessor :created_at

    attr_accessor :updated_at

    # Unique identifier for the Sender of an Invitation.
    attr_accessor :sender_user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'invitation_id' => :'invitationId',
        :'receiver_user_name' => :'receiverUserName',
        :'receiver_email' => :'receiverEmail',
        :'receiver_user_tags' => :'receiverUserTags',
        :'access_type' => :'accessType',
        :'status' => :'status',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'sender_user_id' => :'senderUserId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'invitation_id' => :'Object',
        :'receiver_user_name' => :'Object',
        :'receiver_email' => :'Object',
        :'receiver_user_tags' => :'Object',
        :'access_type' => :'Object',
        :'status' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'sender_user_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::V1Invitation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::V1Invitation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'invitation_id')
        self.invitation_id = attributes[:'invitation_id']
      end

      if attributes.key?(:'receiver_user_name')
        self.receiver_user_name = attributes[:'receiver_user_name']
      end

      if attributes.key?(:'receiver_email')
        self.receiver_email = attributes[:'receiver_email']
      end

      if attributes.key?(:'receiver_user_tags')
        if (value = attributes[:'receiver_user_tags']).is_a?(Array)
          self.receiver_user_tags = value
        end
      end

      if attributes.key?(:'access_type')
        self.access_type = attributes[:'access_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'sender_user_id')
        self.sender_user_id = attributes[:'sender_user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @invitation_id.nil?
        invalid_properties.push('invalid value for "invitation_id", invitation_id cannot be nil.')
      end

      if @receiver_user_name.nil?
        invalid_properties.push('invalid value for "receiver_user_name", receiver_user_name cannot be nil.')
      end

      if @receiver_email.nil?
        invalid_properties.push('invalid value for "receiver_email", receiver_email cannot be nil.')
      end

      if @receiver_user_tags.nil?
        invalid_properties.push('invalid value for "receiver_user_tags", receiver_user_tags cannot be nil.')
      end

      if @access_type.nil?
        invalid_properties.push('invalid value for "access_type", access_type cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @sender_user_id.nil?
        invalid_properties.push('invalid value for "sender_user_id", sender_user_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @invitation_id.nil?
      return false if @receiver_user_name.nil?
      return false if @receiver_email.nil?
      return false if @receiver_user_tags.nil?
      return false if @access_type.nil?
      return false if @status.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @sender_user_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invitation_id == o.invitation_id &&
          receiver_user_name == o.receiver_user_name &&
          receiver_email == o.receiver_email &&
          receiver_user_tags == o.receiver_user_tags &&
          access_type == o.access_type &&
          status == o.status &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          sender_user_id == o.sender_user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [invitation_id, receiver_user_name, receiver_email, receiver_user_tags, access_type, status, created_at, updated_at, sender_user_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
      when :Boolean
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
        SwaggerClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
    end  end
end
