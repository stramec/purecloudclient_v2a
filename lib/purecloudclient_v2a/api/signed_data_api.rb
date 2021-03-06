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
  class SignedDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Sign identifying information
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [SignedData]
    def post_signeddata(opts = {})
      data, _status_code, _headers = post_signeddata_with_http_info(opts)
      return data
    end

    # Sign identifying information
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [Array<(SignedData, Fixnum, Hash)>] SignedData data, response status code and response headers
    def post_signeddata_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignedDataApi.post_signeddata ..."
      end
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/signeddata".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignedData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignedDataApi#post_signeddata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
