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
  class UpdateUser
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :chat

    attr_accessor :department

    attr_accessor :email

    # The address(s) used for primary contact. Updates to the corresponding address in the addresses list will be reflected here.
    attr_accessor :primary_contact_info

    # Email address, phone number, and/or extension for this user. One entry is allowed per media type
    attr_accessor :addresses

    attr_accessor :title

    attr_accessor :username

    attr_accessor :manager

    attr_accessor :images

    # This value should be the current version of the user. The current version can be obtained with a GET on the user before doing a PATCH.
    attr_accessor :version

    # Skills possessed by the user
    attr_accessor :profile_skills

    # The user placement at each site location.
    attr_accessor :locations

    # The groups the user is a member of
    attr_accessor :groups

    # The state of the user. This property can be used to restore a deleted user or transition between active and inactive. If specified, it is the only modifiable field.
    attr_accessor :state

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'chat' => :'chat',
        
        :'department' => :'department',
        
        :'email' => :'email',
        
        :'primary_contact_info' => :'primaryContactInfo',
        
        :'addresses' => :'addresses',
        
        :'title' => :'title',
        
        :'username' => :'username',
        
        :'manager' => :'manager',
        
        :'images' => :'images',
        
        :'version' => :'version',
        
        :'profile_skills' => :'profileSkills',
        
        :'locations' => :'locations',
        
        :'groups' => :'groups',
        
        :'state' => :'state',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'chat' => :'Chat',
        
        :'department' => :'String',
        
        :'email' => :'String',
        
        :'primary_contact_info' => :'Array<Contact>',
        
        :'addresses' => :'Array<Contact>',
        
        :'title' => :'String',
        
        :'username' => :'String',
        
        :'manager' => :'String',
        
        :'images' => :'Array<UserImage>',
        
        :'version' => :'Integer',
        
        :'profile_skills' => :'Array<String>',
        
        :'locations' => :'Array<Location>',
        
        :'groups' => :'Array<Group>',
        
        :'state' => :'String',
        
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

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'chat')
        
        
        self.chat = attributes[:'chat']
        
      
      end

      
      if attributes.has_key?(:'department')
        
        
        self.department = attributes[:'department']
        
      
      end

      
      if attributes.has_key?(:'email')
        
        
        self.email = attributes[:'email']
        
      
      end

      
      if attributes.has_key?(:'primaryContactInfo')
        
        if (value = attributes[:'primaryContactInfo']).is_a?(Array)
          self.primary_contact_info = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'addresses')
        
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'title')
        
        
        self.title = attributes[:'title']
        
      
      end

      
      if attributes.has_key?(:'username')
        
        
        self.username = attributes[:'username']
        
      
      end

      
      if attributes.has_key?(:'manager')
        
        
        self.manager = attributes[:'manager']
        
      
      end

      
      if attributes.has_key?(:'images')
        
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'version')
        
        
        self.version = attributes[:'version']
        
      
      end

      
      if attributes.has_key?(:'profileSkills')
        
        if (value = attributes[:'profileSkills']).is_a?(Array)
          self.profile_skills = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'locations')
        
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'groups')
        
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @version.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["active", "inactive", "deleted"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["active", "inactive", "deleted"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          chat == o.chat &&
          department == o.department &&
          email == o.email &&
          primary_contact_info == o.primary_contact_info &&
          addresses == o.addresses &&
          title == o.title &&
          username == o.username &&
          manager == o.manager &&
          images == o.images &&
          version == o.version &&
          profile_skills == o.profile_skills &&
          locations == o.locations &&
          groups == o.groups &&
          state == o.state &&
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
      [id, name, chat, department, email, primary_contact_info, addresses, title, username, manager, images, version, profile_skills, locations, groups, state, self_uri].hash
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