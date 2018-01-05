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

require "uri"

module PureCloud
  class NotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Remove all subscriptions
    # 
    # @param channel_id Channel ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_notifications_channel_subscriptions(channel_id, opts = {})
      delete_notifications_channel_subscriptions_with_http_info(channel_id, opts)
      return nil
    end

    # Remove all subscriptions
    # 
    # @param channel_id Channel ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_notifications_channel_subscriptions_with_http_info(channel_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.delete_notifications_channel_subscriptions ..."
      end
      
      
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling NotificationsApi.delete_notifications_channel_subscriptions" if channel_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/notifications/channels/{channelId}/subscriptions".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#delete_notifications_channel_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get available notification topics.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @return [AvailableTopicEntityListing]
    def get_notifications_availabletopics(opts = {})
      data, _status_code, _headers = get_notifications_availabletopics_with_http_info(opts)
      return data
    end

    # Get available notification topics.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @return [Array<(AvailableTopicEntityListing, Fixnum, Hash)>] AvailableTopicEntityListing data, response status code and response headers
    def get_notifications_availabletopics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.get_notifications_availabletopics ..."
      end
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/notifications/availabletopics".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if opts[:'expand']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AvailableTopicEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_notifications_availabletopics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # The list of all subscriptions for this channel
    # 
    # @param channel_id Channel ID
    # @param [Hash] opts the optional parameters
    # @return [ChannelTopicEntityListing]
    def get_notifications_channel_subscriptions(channel_id, opts = {})
      data, _status_code, _headers = get_notifications_channel_subscriptions_with_http_info(channel_id, opts)
      return data
    end

    # The list of all subscriptions for this channel
    # 
    # @param channel_id Channel ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelTopicEntityListing, Fixnum, Hash)>] ChannelTopicEntityListing data, response status code and response headers
    def get_notifications_channel_subscriptions_with_http_info(channel_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.get_notifications_channel_subscriptions ..."
      end
      
      
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling NotificationsApi.get_notifications_channel_subscriptions" if channel_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/notifications/channels/{channelId}/subscriptions".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelTopicEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_notifications_channel_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # The list of existing channels
    # 
    # @param [Hash] opts the optional parameters
    # @return [ChannelEntityListing]
    def get_notifications_channels(opts = {})
      data, _status_code, _headers = get_notifications_channels_with_http_info(opts)
      return data
    end

    # The list of existing channels
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelEntityListing, Fixnum, Hash)>] ChannelEntityListing data, response status code and response headers
    def get_notifications_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.get_notifications_channels ..."
      end
      
      # resource path
      local_var_path = "/api/v2/notifications/channels".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_notifications_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a list of subscriptions to the existing list of subscriptions
    # 
    # @param channel_id Channel ID
    # @param body Body
    # @param [Hash] opts the optional parameters
    # @return [ChannelTopicEntityListing]
    def post_notifications_channel_subscriptions(channel_id, body, opts = {})
      data, _status_code, _headers = post_notifications_channel_subscriptions_with_http_info(channel_id, body, opts)
      return data
    end

    # Add a list of subscriptions to the existing list of subscriptions
    # 
    # @param channel_id Channel ID
    # @param body Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelTopicEntityListing, Fixnum, Hash)>] ChannelTopicEntityListing data, response status code and response headers
    def post_notifications_channel_subscriptions_with_http_info(channel_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.post_notifications_channel_subscriptions ..."
      end
      
      
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling NotificationsApi.post_notifications_channel_subscriptions" if channel_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling NotificationsApi.post_notifications_channel_subscriptions" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/notifications/channels/{channelId}/subscriptions".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelTopicEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#post_notifications_channel_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new channel
    # There is a limit of 10 channels. Creating an 11th channel will remove the channel with oldest last used date.
    # @param [Hash] opts the optional parameters
    # @return [Channel]
    def post_notifications_channels(opts = {})
      data, _status_code, _headers = post_notifications_channels_with_http_info(opts)
      return data
    end

    # Create a new channel
    # There is a limit of 10 channels. Creating an 11th channel will remove the channel with oldest last used date.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Channel, Fixnum, Hash)>] Channel data, response status code and response headers
    def post_notifications_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.post_notifications_channels ..."
      end
      
      # resource path
      local_var_path = "/api/v2/notifications/channels".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Channel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#post_notifications_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace the current list of subscriptions with a new list.
    # 
    # @param channel_id Channel ID
    # @param body Body
    # @param [Hash] opts the optional parameters
    # @return [ChannelTopicEntityListing]
    def put_notifications_channel_subscriptions(channel_id, body, opts = {})
      data, _status_code, _headers = put_notifications_channel_subscriptions_with_http_info(channel_id, body, opts)
      return data
    end

    # Replace the current list of subscriptions with a new list.
    # 
    # @param channel_id Channel ID
    # @param body Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelTopicEntityListing, Fixnum, Hash)>] ChannelTopicEntityListing data, response status code and response headers
    def put_notifications_channel_subscriptions_with_http_info(channel_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationsApi.put_notifications_channel_subscriptions ..."
      end
      
      
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling NotificationsApi.put_notifications_channel_subscriptions" if channel_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling NotificationsApi.put_notifications_channel_subscriptions" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/notifications/channels/{channelId}/subscriptions".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelTopicEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#put_notifications_channel_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end