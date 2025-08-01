=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
=end

require 'date'

module TurnkeyClient
  class Policy
    # Unique identifier for a given Policy.
    attr_accessor :policy_id

    # Human-readable name for a Policy.
    attr_accessor :policy_name

    attr_accessor :effect

    attr_accessor :created_at

    attr_accessor :updated_at

    # Human-readable notes added by a User to describe a particular policy.
    attr_accessor :notes

    # A consensus expression that evalutes to true or false.
    attr_accessor :consensus

    # A condition expression that evalutes to true or false.
    attr_accessor :condition

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'policy_id' => :'policyId',
        :'policy_name' => :'policyName',
        :'effect' => :'effect',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'notes' => :'notes',
        :'consensus' => :'consensus',
        :'condition' => :'condition'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'policy_id' => :'Object',
        :'policy_name' => :'Object',
        :'effect' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'notes' => :'Object',
        :'consensus' => :'Object',
        :'condition' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'consensus',
        :'condition'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TurnkeyClient::Policy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TurnkeyClient::Policy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'policy_id')
        self.policy_id = attributes[:'policy_id']
      end

      if attributes.key?(:'policy_name')
        self.policy_name = attributes[:'policy_name']
      end

      if attributes.key?(:'effect')
        self.effect = attributes[:'effect']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'consensus')
        self.consensus = attributes[:'consensus']
      end

      if attributes.key?(:'condition')
        self.condition = attributes[:'condition']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @policy_id.nil?
        invalid_properties.push('invalid value for "policy_id", policy_id cannot be nil.')
      end

      if @policy_name.nil?
        invalid_properties.push('invalid value for "policy_name", policy_name cannot be nil.')
      end

      if @effect.nil?
        invalid_properties.push('invalid value for "effect", effect cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @notes.nil?
        invalid_properties.push('invalid value for "notes", notes cannot be nil.')
      end

      if @consensus.nil?
        invalid_properties.push('invalid value for "consensus", consensus cannot be nil.')
      end

      if @condition.nil?
        invalid_properties.push('invalid value for "condition", condition cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @policy_id.nil?
      return false if @policy_name.nil?
      return false if @effect.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @notes.nil?
      return false if @consensus.nil?
      return false if @condition.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          policy_id == o.policy_id &&
          policy_name == o.policy_name &&
          effect == o.effect &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          notes == o.notes &&
          consensus == o.consensus &&
          condition == o.condition
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [policy_id, policy_name, effect, created_at, updated_at, notes, consensus, condition].hash
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
        TurnkeyClient.const_get(type).build_from_hash(value)
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
