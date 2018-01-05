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
  class BillingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a report of the billable usages (e.g. licenses and devices utilized) for a given period.
    # 
    # @param start_date The period start date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    # @param end_date The period end date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    # @param [Hash] opts the optional parameters
    # @return [BillingUsageReport]
    def get_billing_reports_billableusage(start_date, end_date, opts = {})
      data, _status_code, _headers = get_billing_reports_billableusage_with_http_info(start_date, end_date, opts)
      return data
    end

    # Get a report of the billable usages (e.g. licenses and devices utilized) for a given period.
    # 
    # @param start_date The period start date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    # @param end_date The period end date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingUsageReport, Fixnum, Hash)>] BillingUsageReport data, response status code and response headers
    def get_billing_reports_billableusage_with_http_info(start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingApi.get_billing_reports_billableusage ..."
      end
      
      
      # verify the required parameter 'start_date' is set
      fail ArgumentError, "Missing the required parameter 'start_date' when calling BillingApi.get_billing_reports_billableusage" if start_date.nil?
      
      
      
      
      
      
      # verify the required parameter 'end_date' is set
      fail ArgumentError, "Missing the required parameter 'end_date' when calling BillingApi.get_billing_reports_billableusage" if end_date.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/billing/reports/billableusage".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'startDate'] = start_date
      query_params[:'endDate'] = end_date

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
        :return_type => 'BillingUsageReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_billing_reports_billableusage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
