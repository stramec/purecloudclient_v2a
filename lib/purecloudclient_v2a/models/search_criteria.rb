=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@genesys.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: ININ
http://www.inin.com

Terms of Service: https://developer.mypurecloud.com/tos

=end

require 'date'

module PureCloud
  class SearchCriteria
    # The end value of the range. This field is used for range search types.
    attr_accessor :end_value

    # A list of values for the search to match against
    attr_accessor :values

    # The start value of the range. This field is used for range search types.
    attr_accessor :start_value

    # Field names to search against
    attr_accessor :fields

    # A value for the search to match against
    attr_accessor :value

    # How to apply this search criteria against other criteria
    attr_accessor :operator

    # Groups multiple conditions
    attr_accessor :group

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'end_value' => :'endValue',
        
        :'values' => :'values',
        
        :'start_value' => :'startValue',
        
        :'fields' => :'fields',
        
        :'value' => :'value',
        
        :'operator' => :'operator',
        
        :'group' => :'group',
        
        :'type' => :'type'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'end_value' => :'String',
        
        :'values' => :'Array<String>',
        
        :'start_value' => :'String',
        
        :'fields' => :'Array<String>',
        
        :'value' => :'String',
        
        :'operator' => :'String',
        
        :'group' => :'Array<SearchCriteria>',
        
        :'type' => :'String'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'endValue')
        
        
        self.end_value = attributes[:'endValue']
        
      
      end

      
      if attributes.has_key?(:'values')
        
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'startValue')
        
        
        self.start_value = attributes[:'startValue']
        
      
      end

      
      if attributes.has_key?(:'fields')
        
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'value')
        
        
        self.value = attributes[:'value']
        
      
      end

      
      if attributes.has_key?(:'operator')
        
        
        self.operator = attributes[:'operator']
        
      
      end

      
      if attributes.has_key?(:'group')
        
        if (value = attributes[:'group']).is_a?(Array)
          self.group = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      
      
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["AND", "OR", "NOT"]
      if @operator && !allowed_values.include?(@operator)
        return false
      end
      
      
      
      
      
      
      
      
      
      allowed_values = ["EXACT", "CONTAINS", "STARTS_WITH", "REQUIRED_FIELDS", "RANGE", "DATE_RANGE", "LESS_THAN", "LESS_THAN_EQUAL_TO", "GREATER_THAN", "GREATER_THAN_EQUAL_TO", "SIMPLE", "TERM", "TERMS", "QUERY_STRING", "MATCH_ALL"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operator Object to be assigned
    def operator=(operator)
      allowed_values = ["AND", "OR", "NOT"]
      if operator && !allowed_values.include?(operator)
        fail ArgumentError, "invalid value for 'operator', must be one of #{allowed_values}."
      end
      @operator = operator
    end

    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["EXACT", "CONTAINS", "STARTS_WITH", "REQUIRED_FIELDS", "RANGE", "DATE_RANGE", "LESS_THAN", "LESS_THAN_EQUAL_TO", "GREATER_THAN", "GREATER_THAN_EQUAL_TO", "SIMPLE", "TERM", "TERMS", "QUERY_STRING", "MATCH_ALL"]
      if type && !allowed_values.include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{allowed_values}."
      end
      @type = type
    end

    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          end_value == o.end_value &&
          values == o.values &&
          start_value == o.start_value &&
          fields == o.fields &&
          value == o.value &&
          operator == o.operator &&
          group == o.group &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [end_value, values, start_value, fields, value, operator, group, type].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Object.const_get("PureCloud").const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
