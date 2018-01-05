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
  class CallbackMediaParticipant
    # The unique participant ID.
    attr_accessor :id

    # The display friendly name of the participant.
    attr_accessor :name

    # The participant address.
    attr_accessor :address

    # The time when this participant first joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_time

    # The time when this participant went connected for this media (eg: video connected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :connected_time

    # The time when this participant went disconnected for this media (eg: video disconnected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :end_time

    # The time when this participant's hold started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_hold_time

    # The participant's purpose.  Values can be: 'agent', 'user', 'customer', 'external', 'acd', 'ivr
    attr_accessor :purpose

    # The participant's state.  Values can be: 'alerting', 'connected', 'disconnected', 'dialing', 'contacting
    attr_accessor :state

    # The participant's direction.  Values can be: 'inbound' or 'outbound'
    attr_accessor :direction

    # The reason the participant was disconnected from the conversation.
    attr_accessor :disconnect_type

    # Value is true when the participant is on hold.
    attr_accessor :held

    # Value is true when the participant requires wrap-up.
    attr_accessor :wrapup_required

    # The wrap-up prompt indicating the type of wrap-up to be performed.
    attr_accessor :wrapup_prompt

    # The PureCloud user for this participant.
    attr_accessor :user

    # The PureCloud queue for this participant.
    attr_accessor :queue

    # A list of ad-hoc attributes for the participant.
    attr_accessor :attributes

    # If the conversation ends in error, contains additional error details.
    attr_accessor :error_info

    # The Engage script that should be used by this participant.
    attr_accessor :script

    # The amount of time the participant has to complete wrap-up.
    attr_accessor :wrapup_timeout_ms

    # Value is true when the participant has skipped wrap-up.
    attr_accessor :wrapup_skipped

    # The source provider for the communication.
    attr_accessor :provider

    # If this participant represents an external contact, then this will be the reference for the external contact.
    attr_accessor :external_contact

    # If this participant represents an external org, then this will be the reference for the external org.
    attr_accessor :external_organization

    # Wrapup for this participant, if it has been applied.
    attr_accessor :wrapup

    # The peer communication corresponding to a matching leg for this communication.
    attr_accessor :peer

    # The outbound preview associated with this callback.
    attr_accessor :outbound_preview

    # The voicemail associated with this callback.
    attr_accessor :voicemail

    # The list of phone number to use for this callback.
    attr_accessor :callback_numbers

    # The name of the callback target.
    attr_accessor :callback_user_name

    # If true, the callback can be skipped
    attr_accessor :skip_enabled

    # Duration in seconds before the callback will be auto-dialed.
    attr_accessor :timeout_seconds

    # The id of the config for automatically placing the callback (and handling the disposition). If absent, the callback will not be placed automatically but routed to an agent as per normal.
    attr_accessor :automated_callback_config_id

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :callback_scheduled_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'address' => :'address',
        
        :'start_time' => :'startTime',
        
        :'connected_time' => :'connectedTime',
        
        :'end_time' => :'endTime',
        
        :'start_hold_time' => :'startHoldTime',
        
        :'purpose' => :'purpose',
        
        :'state' => :'state',
        
        :'direction' => :'direction',
        
        :'disconnect_type' => :'disconnectType',
        
        :'held' => :'held',
        
        :'wrapup_required' => :'wrapupRequired',
        
        :'wrapup_prompt' => :'wrapupPrompt',
        
        :'user' => :'user',
        
        :'queue' => :'queue',
        
        :'attributes' => :'attributes',
        
        :'error_info' => :'errorInfo',
        
        :'script' => :'script',
        
        :'wrapup_timeout_ms' => :'wrapupTimeoutMs',
        
        :'wrapup_skipped' => :'wrapupSkipped',
        
        :'provider' => :'provider',
        
        :'external_contact' => :'externalContact',
        
        :'external_organization' => :'externalOrganization',
        
        :'wrapup' => :'wrapup',
        
        :'peer' => :'peer',
        
        :'outbound_preview' => :'outboundPreview',
        
        :'voicemail' => :'voicemail',
        
        :'callback_numbers' => :'callbackNumbers',
        
        :'callback_user_name' => :'callbackUserName',
        
        :'skip_enabled' => :'skipEnabled',
        
        :'timeout_seconds' => :'timeoutSeconds',
        
        :'automated_callback_config_id' => :'automatedCallbackConfigId',
        
        :'callback_scheduled_time' => :'callbackScheduledTime'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'address' => :'String',
        
        :'start_time' => :'DateTime',
        
        :'connected_time' => :'DateTime',
        
        :'end_time' => :'DateTime',
        
        :'start_hold_time' => :'DateTime',
        
        :'purpose' => :'String',
        
        :'state' => :'String',
        
        :'direction' => :'String',
        
        :'disconnect_type' => :'String',
        
        :'held' => :'BOOLEAN',
        
        :'wrapup_required' => :'BOOLEAN',
        
        :'wrapup_prompt' => :'String',
        
        :'user' => :'UriReference',
        
        :'queue' => :'UriReference',
        
        :'attributes' => :'Hash<String, String>',
        
        :'error_info' => :'ErrorBody',
        
        :'script' => :'UriReference',
        
        :'wrapup_timeout_ms' => :'Integer',
        
        :'wrapup_skipped' => :'BOOLEAN',
        
        :'provider' => :'String',
        
        :'external_contact' => :'UriReference',
        
        :'external_organization' => :'UriReference',
        
        :'wrapup' => :'Wrapup',
        
        :'peer' => :'String',
        
        :'outbound_preview' => :'DialerPreview',
        
        :'voicemail' => :'Voicemail',
        
        :'callback_numbers' => :'Array<String>',
        
        :'callback_user_name' => :'String',
        
        :'skip_enabled' => :'BOOLEAN',
        
        :'timeout_seconds' => :'Integer',
        
        :'automated_callback_config_id' => :'String',
        
        :'callback_scheduled_time' => :'DateTime'
        
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

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'address')
        
        
        self.address = attributes[:'address']
        
      
      end

      
      if attributes.has_key?(:'startTime')
        
        
        self.start_time = attributes[:'startTime']
        
      
      end

      
      if attributes.has_key?(:'connectedTime')
        
        
        self.connected_time = attributes[:'connectedTime']
        
      
      end

      
      if attributes.has_key?(:'endTime')
        
        
        self.end_time = attributes[:'endTime']
        
      
      end

      
      if attributes.has_key?(:'startHoldTime')
        
        
        self.start_hold_time = attributes[:'startHoldTime']
        
      
      end

      
      if attributes.has_key?(:'purpose')
        
        
        self.purpose = attributes[:'purpose']
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'direction')
        
        
        self.direction = attributes[:'direction']
        
      
      end

      
      if attributes.has_key?(:'disconnectType')
        
        
        self.disconnect_type = attributes[:'disconnectType']
        
      
      end

      
      if attributes.has_key?(:'held')
        
        
        self.held = attributes[:'held']
        
      
      end

      
      if attributes.has_key?(:'wrapupRequired')
        
        
        self.wrapup_required = attributes[:'wrapupRequired']
        
      
      end

      
      if attributes.has_key?(:'wrapupPrompt')
        
        
        self.wrapup_prompt = attributes[:'wrapupPrompt']
        
      
      end

      
      if attributes.has_key?(:'user')
        
        
        self.user = attributes[:'user']
        
      
      end

      
      if attributes.has_key?(:'queue')
        
        
        self.queue = attributes[:'queue']
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'errorInfo')
        
        
        self.error_info = attributes[:'errorInfo']
        
      
      end

      
      if attributes.has_key?(:'script')
        
        
        self.script = attributes[:'script']
        
      
      end

      
      if attributes.has_key?(:'wrapupTimeoutMs')
        
        
        self.wrapup_timeout_ms = attributes[:'wrapupTimeoutMs']
        
      
      end

      
      if attributes.has_key?(:'wrapupSkipped')
        
        
        self.wrapup_skipped = attributes[:'wrapupSkipped']
        
      
      end

      
      if attributes.has_key?(:'provider')
        
        
        self.provider = attributes[:'provider']
        
      
      end

      
      if attributes.has_key?(:'externalContact')
        
        
        self.external_contact = attributes[:'externalContact']
        
      
      end

      
      if attributes.has_key?(:'externalOrganization')
        
        
        self.external_organization = attributes[:'externalOrganization']
        
      
      end

      
      if attributes.has_key?(:'wrapup')
        
        
        self.wrapup = attributes[:'wrapup']
        
      
      end

      
      if attributes.has_key?(:'peer')
        
        
        self.peer = attributes[:'peer']
        
      
      end

      
      if attributes.has_key?(:'outboundPreview')
        
        
        self.outbound_preview = attributes[:'outboundPreview']
        
      
      end

      
      if attributes.has_key?(:'voicemail')
        
        
        self.voicemail = attributes[:'voicemail']
        
      
      end

      
      if attributes.has_key?(:'callbackNumbers')
        
        if (value = attributes[:'callbackNumbers']).is_a?(Array)
          self.callback_numbers = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'callbackUserName')
        
        
        self.callback_user_name = attributes[:'callbackUserName']
        
      
      end

      
      if attributes.has_key?(:'skipEnabled')
        
        
        self.skip_enabled = attributes[:'skipEnabled']
        
      
      end

      
      if attributes.has_key?(:'timeoutSeconds')
        
        
        self.timeout_seconds = attributes[:'timeoutSeconds']
        
      
      end

      
      if attributes.has_key?(:'automatedCallbackConfigId')
        
        
        self.automated_callback_config_id = attributes[:'automatedCallbackConfigId']
        
      
      end

      
      if attributes.has_key?(:'callbackScheduledTime')
        
        
        self.callback_scheduled_time = attributes[:'callbackScheduledTime']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["alerting", "dialing", "contacting", "offering", "connected", "disconnected", "terminated", "converting", "uploading", "transmitting", "none"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      allowed_values = ["inbound", "outbound"]
      if @direction && !allowed_values.include?(@direction)
        return false
      end
      
      
      
      
      
      allowed_values = ["endpoint", "client", "system", "transfer", "transfer.conference", "transfer.consult", "transfer.forward", "transfer.noanswer", "transfer.notavailable", "transport.failure", "error", "peer", "other", "spam"]
      if @disconnect_type && !allowed_values.include?(@disconnect_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["alerting", "dialing", "contacting", "offering", "connected", "disconnected", "terminated", "converting", "uploading", "transmitting", "none"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      allowed_values = ["inbound", "outbound"]
      if direction && !allowed_values.include?(direction)
        fail ArgumentError, "invalid value for 'direction', must be one of #{allowed_values}."
      end
      @direction = direction
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disconnect_type Object to be assigned
    def disconnect_type=(disconnect_type)
      allowed_values = ["endpoint", "client", "system", "transfer", "transfer.conference", "transfer.consult", "transfer.forward", "transfer.noanswer", "transfer.notavailable", "transport.failure", "error", "peer", "other", "spam"]
      if disconnect_type && !allowed_values.include?(disconnect_type)
        fail ArgumentError, "invalid value for 'disconnect_type', must be one of #{allowed_values}."
      end
      @disconnect_type = disconnect_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          address == o.address &&
          start_time == o.start_time &&
          connected_time == o.connected_time &&
          end_time == o.end_time &&
          start_hold_time == o.start_hold_time &&
          purpose == o.purpose &&
          state == o.state &&
          direction == o.direction &&
          disconnect_type == o.disconnect_type &&
          held == o.held &&
          wrapup_required == o.wrapup_required &&
          wrapup_prompt == o.wrapup_prompt &&
          user == o.user &&
          queue == o.queue &&
          attributes == o.attributes &&
          error_info == o.error_info &&
          script == o.script &&
          wrapup_timeout_ms == o.wrapup_timeout_ms &&
          wrapup_skipped == o.wrapup_skipped &&
          provider == o.provider &&
          external_contact == o.external_contact &&
          external_organization == o.external_organization &&
          wrapup == o.wrapup &&
          peer == o.peer &&
          outbound_preview == o.outbound_preview &&
          voicemail == o.voicemail &&
          callback_numbers == o.callback_numbers &&
          callback_user_name == o.callback_user_name &&
          skip_enabled == o.skip_enabled &&
          timeout_seconds == o.timeout_seconds &&
          automated_callback_config_id == o.automated_callback_config_id &&
          callback_scheduled_time == o.callback_scheduled_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, address, start_time, connected_time, end_time, start_hold_time, purpose, state, direction, disconnect_type, held, wrapup_required, wrapup_prompt, user, queue, attributes, error_info, script, wrapup_timeout_ms, wrapup_skipped, provider, external_contact, external_organization, wrapup, peer, outbound_preview, voicemail, callback_numbers, callback_user_name, skip_enabled, timeout_seconds, automated_callback_config_id, callback_scheduled_time].hash
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
