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
  class AuditMessage
    # AuditMessage ID.
    attr_accessor :id

    attr_accessor :user

    # Correlation ID.
    attr_accessor :correlation_id

    # Transaction ID.
    attr_accessor :transaction_id

    # Whether or not this audit can be considered the initiator of the transaction it is a part of.
    attr_accessor :transaction_initiator

    # The application through which the action of this AuditMessage was initiated.
    attr_accessor :application

    # The name of the service which sent this AuditMessage.
    attr_accessor :service_name

    # The level of this audit. USER or SYSTEM.
    attr_accessor :level

    # The time at which the action of this AuditMessage was initiated.
    attr_accessor :timestamp

    # The time at which this AuditMessage was received.
    attr_accessor :received_timestamp

    # The status of the action of this AuditMessage
    attr_accessor :status

    # The context of a system-level action
    attr_accessor :action_context

    # A string representing the action that took place
    attr_accessor :action

    # Details about any changes that occurred in this audit
    attr_accessor :changes

    attr_accessor :entity

    # The service-specific context associated with this AuditMessage.
    attr_accessor :service_context

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'user' => :'user',
        
        :'correlation_id' => :'correlationId',
        
        :'transaction_id' => :'transactionId',
        
        :'transaction_initiator' => :'transactionInitiator',
        
        :'application' => :'application',
        
        :'service_name' => :'serviceName',
        
        :'level' => :'level',
        
        :'timestamp' => :'timestamp',
        
        :'received_timestamp' => :'receivedTimestamp',
        
        :'status' => :'status',
        
        :'action_context' => :'actionContext',
        
        :'action' => :'action',
        
        :'changes' => :'changes',
        
        :'entity' => :'entity',
        
        :'service_context' => :'serviceContext'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'user' => :'AuditUser',
        
        :'correlation_id' => :'String',
        
        :'transaction_id' => :'String',
        
        :'transaction_initiator' => :'BOOLEAN',
        
        :'application' => :'String',
        
        :'service_name' => :'String',
        
        :'level' => :'String',
        
        :'timestamp' => :'String',
        
        :'received_timestamp' => :'String',
        
        :'status' => :'String',
        
        :'action_context' => :'String',
        
        :'action' => :'String',
        
        :'changes' => :'Array<Change>',
        
        :'entity' => :'AuditEntity',
        
        :'service_context' => :'ServiceContext'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'user')
        
        
        self.user = attributes[:'user']
        
      
      end

      
      if attributes.has_key?(:'correlationId')
        
        
        self.correlation_id = attributes[:'correlationId']
        
      
      end

      
      if attributes.has_key?(:'transactionId')
        
        
        self.transaction_id = attributes[:'transactionId']
        
      
      end

      
      if attributes.has_key?(:'transactionInitiator')
        
        
        self.transaction_initiator = attributes[:'transactionInitiator']
        
      
      end

      
      if attributes.has_key?(:'application')
        
        
        self.application = attributes[:'application']
        
      
      end

      
      if attributes.has_key?(:'serviceName')
        
        
        self.service_name = attributes[:'serviceName']
        
      
      end

      
      if attributes.has_key?(:'level')
        
        
        self.level = attributes[:'level']
        
      
      end

      
      if attributes.has_key?(:'timestamp')
        
        
        self.timestamp = attributes[:'timestamp']
        
      
      end

      
      if attributes.has_key?(:'receivedTimestamp')
        
        
        self.received_timestamp = attributes[:'receivedTimestamp']
        
      
      end

      
      if attributes.has_key?(:'status')
        
        
        self.status = attributes[:'status']
        
      
      end

      
      if attributes.has_key?(:'actionContext')
        
        
        self.action_context = attributes[:'actionContext']
        
      
      end

      
      if attributes.has_key?(:'action')
        
        
        self.action = attributes[:'action']
        
      
      end

      
      if attributes.has_key?(:'changes')
        
        if (value = attributes[:'changes']).is_a?(Array)
          self.changes = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'entity')
        
        
        self.entity = attributes[:'entity']
        
      
      end

      
      if attributes.has_key?(:'serviceContext')
        
        
        self.service_context = attributes[:'serviceContext']
        
      
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
      
      
      if @id.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @service_name.nil?
        return false
      end

      
      
      
      
      
      if @level.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      if @received_timestamp.nil?
        return false
      end

      
      
      
      
      
      if @status.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user == o.user &&
          correlation_id == o.correlation_id &&
          transaction_id == o.transaction_id &&
          transaction_initiator == o.transaction_initiator &&
          application == o.application &&
          service_name == o.service_name &&
          level == o.level &&
          timestamp == o.timestamp &&
          received_timestamp == o.received_timestamp &&
          status == o.status &&
          action_context == o.action_context &&
          action == o.action &&
          changes == o.changes &&
          entity == o.entity &&
          service_context == o.service_context
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user, correlation_id, transaction_id, transaction_initiator, application, service_name, level, timestamp, received_timestamp, status, action_context, action, changes, entity, service_context].hash
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
