=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
=end

module TurnkeyClient
  class APIKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create API Keys
    # Add api keys to an existing User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ActivityResponse]
    def create_api_keys(body, opts = {})
      data, _status_code, _headers = create_api_keys_with_http_info(body, opts)
      data
    end

    # Create API Keys
    # Add api keys to an existing User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityResponse, Integer, Hash)>] ActivityResponse data, response status code and response headers
    def create_api_keys_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.create_api_keys ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APIKeysApi.create_api_keys"
      end
      # resource path
      local_var_path = '/public/v1/submit/create_api_keys'

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

      return_type = opts[:return_type] || 'ActivityResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#create_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete API Keys
    # Remove api keys from a User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ActivityResponse]
    def delete_api_keys(body, opts = {})
      data, _status_code, _headers = delete_api_keys_with_http_info(body, opts)
      data
    end

    # Delete API Keys
    # Remove api keys from a User
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityResponse, Integer, Hash)>] ActivityResponse data, response status code and response headers
    def delete_api_keys_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.delete_api_keys ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APIKeysApi.delete_api_keys"
      end
      # resource path
      local_var_path = '/public/v1/submit/delete_api_keys'

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

      return_type = opts[:return_type] || 'ActivityResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#delete_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get API key
    # Get details about an API key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [GetApiKeyResponse]
    def get_api_key(body, opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(body, opts)
      data
    end

    # Get API key
    # Get details about an API key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetApiKeyResponse, Integer, Hash)>] GetApiKeyResponse data, response status code and response headers
    def get_api_key_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.get_api_key ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APIKeysApi.get_api_key"
      end
      # resource path
      local_var_path = '/public/v1/query/get_api_key'

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

      return_type = opts[:return_type] || 'GetApiKeyResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#get_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get API key
    # Get details about API keys for a user
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [GetApiKeysResponse]
    def get_api_keys(body, opts = {})
      data, _status_code, _headers = get_api_keys_with_http_info(body, opts)
      data
    end

    # Get API key
    # Get details about API keys for a user
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetApiKeysResponse, Integer, Hash)>] GetApiKeysResponse data, response status code and response headers
    def get_api_keys_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.get_api_keys ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APIKeysApi.get_api_keys"
      end
      # resource path
      local_var_path = '/public/v1/query/get_api_keys'

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

      return_type = opts[:return_type] || 'GetApiKeysResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#get_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
