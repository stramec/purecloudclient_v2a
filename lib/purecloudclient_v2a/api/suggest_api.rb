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
  class SuggestApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Search using the q64 value returned from a previous search.
    # 
    # @param q64 q64
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @option opts [BOOLEAN] :profile profile (default to true)
    # @return [JsonNodeSearchResponse]
    def get_search(q64, opts = {})
      data, _status_code, _headers = get_search_with_http_info(q64, opts)
      return data
    end

    # Search using the q64 value returned from a previous search.
    # 
    # @param q64 q64
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @option opts [BOOLEAN] :profile profile
    # @return [Array<(JsonNodeSearchResponse, Fixnum, Hash)>] JsonNodeSearchResponse data, response status code and response headers
    def get_search_with_http_info(q64, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SuggestApi.get_search ..."
      end
      
      
      # verify the required parameter 'q64' is set
      fail ArgumentError, "Missing the required parameter 'q64' when calling SuggestApi.get_search" if q64.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q64'] = q64
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if opts[:'expand']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']

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
        :return_type => 'JsonNodeSearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuggestApi#get_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Suggest resources using the q64 value returned from a previous suggest query.
    # 
    # @param q64 q64
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @option opts [BOOLEAN] :profile profile (default to true)
    # @return [JsonNodeSearchResponse]
    def get_search_suggest(q64, opts = {})
      data, _status_code, _headers = get_search_suggest_with_http_info(q64, opts)
      return data
    end

    # Suggest resources using the q64 value returned from a previous suggest query.
    # 
    # @param q64 q64
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand Which fields, if any, to expand
    # @option opts [BOOLEAN] :profile profile
    # @return [Array<(JsonNodeSearchResponse, Fixnum, Hash)>] JsonNodeSearchResponse data, response status code and response headers
    def get_search_suggest_with_http_info(q64, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SuggestApi.get_search_suggest ..."
      end
      
      
      # verify the required parameter 'q64' is set
      fail ArgumentError, "Missing the required parameter 'q64' when calling SuggestApi.get_search_suggest" if q64.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/search/suggest".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q64'] = q64
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if opts[:'expand']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']

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
        :return_type => 'JsonNodeSearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuggestApi#get_search_suggest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search resources.
    # 
    # @param body Search request options
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :profile profile (default to true)
    # @return [JsonNodeSearchResponse]
    def post_search(body, opts = {})
      data, _status_code, _headers = post_search_with_http_info(body, opts)
      return data
    end

    # Search resources.
    # 
    # @param body Search request options
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :profile profile
    # @return [Array<(JsonNodeSearchResponse, Fixnum, Hash)>] JsonNodeSearchResponse data, response status code and response headers
    def post_search_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SuggestApi.post_search ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SuggestApi.post_search" if body.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']

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
        :return_type => 'JsonNodeSearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuggestApi#post_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Suggest resources.
    # 
    # @param body Search request options
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :profile profile (default to true)
    # @return [JsonNodeSearchResponse]
    def post_search_suggest(body, opts = {})
      data, _status_code, _headers = post_search_suggest_with_http_info(body, opts)
      return data
    end

    # Suggest resources.
    # 
    # @param body Search request options
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :profile profile
    # @return [Array<(JsonNodeSearchResponse, Fixnum, Hash)>] JsonNodeSearchResponse data, response status code and response headers
    def post_search_suggest_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SuggestApi.post_search_suggest ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SuggestApi.post_search_suggest" if body.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/search/suggest".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']

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
        :return_type => 'JsonNodeSearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuggestApi#post_search_suggest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
