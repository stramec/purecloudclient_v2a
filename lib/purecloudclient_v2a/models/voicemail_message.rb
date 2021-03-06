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
  class VoicemailMessage
    # The globally unique identifier for the object.
    attr_accessor :id

    # The conversation that the voicemail message is associated with
    attr_accessor :conversation

    # Whether the voicemail message is marked as read
    attr_accessor :read

    # The voicemail message's audio recording duration in seconds
    attr_accessor :audio_recording_duration_seconds

    # The voicemail message's audio recording size in bytes
    attr_accessor :audio_recording_size_bytes

    # The date the voicemail message was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :created_date

    # The date the voicemail message was last modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :modified_date

    # The date the voicemail message deleted property was set to true. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :deleted_date

    # The caller address
    attr_accessor :caller_address

    # Optionally the name of the caller that left the voicemail message if the caller was a known user
    attr_accessor :caller_name

    # Optionally the user that left the voicemail message if the caller was a known user
    attr_accessor :caller_user

    # Whether the voicemail message has been marked as deleted
    attr_accessor :deleted

    # An optional note
    attr_accessor :note

    # The user that the voicemail message belongs to or null which means the voicemail message belongs to a group or queue
    attr_accessor :user

    # The group that the voicemail message belongs to or null which means the voicemail message belongs to a user or queue
    attr_accessor :group

    # The queue that the voicemail message belongs to or null which means the voicemail message belongs to a user or group
    attr_accessor :queue

    # Represents where this voicemail message was copied from
    attr_accessor :copied_from

    # Represents where this voicemail has been copied to
    attr_accessor :copied_to

    # The retention policy for this voicemail when deleted is set to true
    attr_accessor :delete_retention_policy

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'conversation' => :'conversation',
        
        :'read' => :'read',
        
        :'audio_recording_duration_seconds' => :'audioRecordingDurationSeconds',
        
        :'audio_recording_size_bytes' => :'audioRecordingSizeBytes',
        
        :'created_date' => :'createdDate',
        
        :'modified_date' => :'modifiedDate',
        
        :'deleted_date' => :'deletedDate',
        
        :'caller_address' => :'callerAddress',
        
        :'caller_name' => :'callerName',
        
        :'caller_user' => :'callerUser',
        
        :'deleted' => :'deleted',
        
        :'note' => :'note',
        
        :'user' => :'user',
        
        :'group' => :'group',
        
        :'queue' => :'queue',
        
        :'copied_from' => :'copiedFrom',
        
        :'copied_to' => :'copiedTo',
        
        :'delete_retention_policy' => :'deleteRetentionPolicy',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'conversation' => :'Conversation',
        
        :'read' => :'BOOLEAN',
        
        :'audio_recording_duration_seconds' => :'Integer',
        
        :'audio_recording_size_bytes' => :'Integer',
        
        :'created_date' => :'DateTime',
        
        :'modified_date' => :'DateTime',
        
        :'deleted_date' => :'DateTime',
        
        :'caller_address' => :'String',
        
        :'caller_name' => :'String',
        
        :'caller_user' => :'User',
        
        :'deleted' => :'BOOLEAN',
        
        :'note' => :'String',
        
        :'user' => :'User',
        
        :'group' => :'Group',
        
        :'queue' => :'Queue',
        
        :'copied_from' => :'VoicemailCopyRecord',
        
        :'copied_to' => :'Array<VoicemailCopyRecord>',
        
        :'delete_retention_policy' => :'VoicemailRetentionPolicy',
        
        :'self_uri' => :'String'
        
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

      
      if attributes.has_key?(:'conversation')
        
        
        self.conversation = attributes[:'conversation']
        
      
      end

      
      if attributes.has_key?(:'read')
        
        
        self.read = attributes[:'read']
        
      
      end

      
      if attributes.has_key?(:'audioRecordingDurationSeconds')
        
        
        self.audio_recording_duration_seconds = attributes[:'audioRecordingDurationSeconds']
        
      
      end

      
      if attributes.has_key?(:'audioRecordingSizeBytes')
        
        
        self.audio_recording_size_bytes = attributes[:'audioRecordingSizeBytes']
        
      
      end

      
      if attributes.has_key?(:'createdDate')
        
        
        self.created_date = attributes[:'createdDate']
        
      
      end

      
      if attributes.has_key?(:'modifiedDate')
        
        
        self.modified_date = attributes[:'modifiedDate']
        
      
      end

      
      if attributes.has_key?(:'deletedDate')
        
        
        self.deleted_date = attributes[:'deletedDate']
        
      
      end

      
      if attributes.has_key?(:'callerAddress')
        
        
        self.caller_address = attributes[:'callerAddress']
        
      
      end

      
      if attributes.has_key?(:'callerName')
        
        
        self.caller_name = attributes[:'callerName']
        
      
      end

      
      if attributes.has_key?(:'callerUser')
        
        
        self.caller_user = attributes[:'callerUser']
        
      
      end

      
      if attributes.has_key?(:'deleted')
        
        
        self.deleted = attributes[:'deleted']
        
      
      end

      
      if attributes.has_key?(:'note')
        
        
        self.note = attributes[:'note']
        
      
      end

      
      if attributes.has_key?(:'user')
        
        
        self.user = attributes[:'user']
        
      
      end

      
      if attributes.has_key?(:'group')
        
        
        self.group = attributes[:'group']
        
      
      end

      
      if attributes.has_key?(:'queue')
        
        
        self.queue = attributes[:'queue']
        
      
      end

      
      if attributes.has_key?(:'copiedFrom')
        
        
        self.copied_from = attributes[:'copiedFrom']
        
      
      end

      
      if attributes.has_key?(:'copiedTo')
        
        if (value = attributes[:'copiedTo']).is_a?(Array)
          self.copied_to = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'deleteRetentionPolicy')
        
        
        self.delete_retention_policy = attributes[:'deleteRetentionPolicy']
        
      
      end

      
      if attributes.has_key?(:'selfUri')
        
        
        self.self_uri = attributes[:'selfUri']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          conversation == o.conversation &&
          read == o.read &&
          audio_recording_duration_seconds == o.audio_recording_duration_seconds &&
          audio_recording_size_bytes == o.audio_recording_size_bytes &&
          created_date == o.created_date &&
          modified_date == o.modified_date &&
          deleted_date == o.deleted_date &&
          caller_address == o.caller_address &&
          caller_name == o.caller_name &&
          caller_user == o.caller_user &&
          deleted == o.deleted &&
          note == o.note &&
          user == o.user &&
          group == o.group &&
          queue == o.queue &&
          copied_from == o.copied_from &&
          copied_to == o.copied_to &&
          delete_retention_policy == o.delete_retention_policy &&
          self_uri == o.self_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, conversation, read, audio_recording_duration_seconds, audio_recording_size_bytes, created_date, modified_date, deleted_date, caller_address, caller_name, caller_user, deleted, note, user, group, queue, copied_from, copied_to, delete_retention_policy, self_uri].hash
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
