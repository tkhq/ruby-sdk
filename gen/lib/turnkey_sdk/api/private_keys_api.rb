=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.53
=end

module TurnkeyClient
  class PrivateKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Private Keys
    # Create new Private Keys
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def create_private_keys(body, opts = {})
      data, _status_code, _headers = create_private_keys_with_http_info(body, opts)
      data
    end

    # Create Private Keys
    # Create new Private Keys
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def create_private_keys_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateKeysApi.create_private_keys ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrivateKeysApi.create_private_keys"
      end
      # resource path
      local_var_path = '/public/v1/submit/create_private_keys'

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
        @api_client.config.logger.debug "API called: PrivateKeysApi#create_private_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Export Private Key
    # Exports a Private Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1ActivityResponse]
    def export_private_key(body, opts = {})
      data, _status_code, _headers = export_private_key_with_http_info(body, opts)
      data
    end

    # Export Private Key
    # Exports a Private Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1ActivityResponse, Integer, Hash)>] V1ActivityResponse data, response status code and response headers
    def export_private_key_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateKeysApi.export_private_key ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrivateKeysApi.export_private_key"
      end
      # resource path
      local_var_path = '/public/v1/submit/export_private_key'

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
        @api_client.config.logger.debug "API called: PrivateKeysApi#export_private_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Private Key
    # Get details about a Private Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1GetPrivateKeyResponse]
    def get_private_key(body, opts = {})
      data, _status_code, _headers = get_private_key_with_http_info(body, opts)
      data
    end

    # Get Private Key
    # Get details about a Private Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1GetPrivateKeyResponse, Integer, Hash)>] V1GetPrivateKeyResponse data, response status code and response headers
    def get_private_key_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateKeysApi.get_private_key ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrivateKeysApi.get_private_key"
      end
      # resource path
      local_var_path = '/public/v1/query/get_private_key'

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

      return_type = opts[:return_type] || 'V1GetPrivateKeyResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateKeysApi#get_private_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Private Keys
    # List all Private Keys within an Organization
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [V1GetPrivateKeysResponse]
    def get_private_keys(body, opts = {})
      data, _status_code, _headers = get_private_keys_with_http_info(body, opts)
      data
    end

    # List Private Keys
    # List all Private Keys within an Organization
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1GetPrivateKeysResponse, Integer, Hash)>] V1GetPrivateKeysResponse data, response status code and response headers
    def get_private_keys_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateKeysApi.get_private_keys ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrivateKeysApi.get_private_keys"
      end
      # resource path
      local_var_path = '/public/v1/query/list_private_keys'

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

      return_type = opts[:return_type] || 'V1GetPrivateKeysResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateKeysApi#get_private_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
