=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

module SwaggerClient
  class SigningApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Sign Raw Payload
    # Sign a raw payload
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def public_api_service_sign_raw_payload(body, opts = {})
      data, _status_code, _headers = public_api_service_sign_raw_payload_with_http_info(body, opts)
      data
    end

    # Sign Raw Payload
    # Sign a raw payload
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def public_api_service_sign_raw_payload_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningApi.public_api_service_sign_raw_payload ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SigningApi.public_api_service_sign_raw_payload"
      end
      # resource path
      local_var_path = '/public/v1/submit/sign_raw_payload'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'V1ActivityResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningApi#public_api_service_sign_raw_payload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sign Transaction
    # Sign a transaction
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def public_api_service_sign_transaction(body, opts = {})
      data, _status_code, _headers = public_api_service_sign_transaction_with_http_info(body, opts)
      data
    end

    # Sign Transaction
    # Sign a transaction
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def public_api_service_sign_transaction_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningApi.public_api_service_sign_transaction ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SigningApi.public_api_service_sign_transaction"
      end
      # resource path
      local_var_path = '/public/v1/submit/sign_transaction'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'V1ActivityResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningApi#public_api_service_sign_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end