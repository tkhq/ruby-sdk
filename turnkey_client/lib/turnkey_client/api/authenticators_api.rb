=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

module TurnkeyClient
  class AuthenticatorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Authenticators
    # Create Authenticators to authenticate requests to Turnkey
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def create_authenticators(body, opts = {})
      data, _status_code, _headers = create_authenticators_with_http_info(body, opts)
      data
    end

    # Create Authenticators
    # Create Authenticators to authenticate requests to Turnkey
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def create_authenticators_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticatorsApi.create_authenticators ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticatorsApi.create_authenticators"
      end
      # resource path
      local_var_path = '/public/v1/submit/create_authenticators'

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
        @api_client.config.logger.debug "API called: AuthenticatorsApi#create_authenticators\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Authenticators
    # Remove authenticators from a User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def delete_authenticators(body, opts = {})
      data, _status_code, _headers = delete_authenticators_with_http_info(body, opts)
      data
    end

    # Delete Authenticators
    # Remove authenticators from a User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def delete_authenticators_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticatorsApi.delete_authenticators ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticatorsApi.delete_authenticators"
      end
      # resource path
      local_var_path = '/public/v1/submit/delete_authenticators'

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
        @api_client.config.logger.debug "API called: AuthenticatorsApi#delete_authenticators\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Authenticator
    # Get details about an authenticator
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1GetAuthenticatorResponse]
    def get_authenticator(body, opts = {})
      data, _status_code, _headers = get_authenticator_with_http_info(body, opts)
      data
    end

    # Get Authenticator
    # Get details about an authenticator
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1GetAuthenticatorResponse, Integer, Hash)>] V1GetAuthenticatorResponse data, response status code and response headers
    def get_authenticator_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticatorsApi.get_authenticator ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticatorsApi.get_authenticator"
      end
      # resource path
      local_var_path = '/public/v1/query/get_authenticator'

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

      return_type = opts[:return_type] || 'V1GetAuthenticatorResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticatorsApi#get_authenticator\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Authenticators
    # Get details about authenticators for a user
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1GetAuthenticatorsResponse]
    def get_authenticators(body, opts = {})
      data, _status_code, _headers = get_authenticators_with_http_info(body, opts)
      data
    end

    # Get Authenticators
    # Get details about authenticators for a user
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1GetAuthenticatorsResponse, Integer, Hash)>] V1GetAuthenticatorsResponse data, response status code and response headers
    def get_authenticators_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticatorsApi.get_authenticators ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticatorsApi.get_authenticators"
      end
      # resource path
      local_var_path = '/public/v1/query/get_authenticators'

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

      return_type = opts[:return_type] || 'V1GetAuthenticatorsResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticatorsApi#get_authenticators\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end