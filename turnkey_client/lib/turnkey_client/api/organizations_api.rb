=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

module TurnkeyClient
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Sub-Organization
    # Create a new Sub-Organization
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ActivityResponse]
    def create_sub_organization(body, opts = {})
      data, _status_code, _headers = create_sub_organization_with_http_info(body, opts)
      data
    end

    # Create Sub-Organization
    # Create a new Sub-Organization
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityResponse, Integer, Hash)>] ActivityResponse data, response status code and response headers
    def create_sub_organization_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.create_sub_organization ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationsApi.create_sub_organization"
      end
      # resource path
      local_var_path = '/public/v1/submit/create_sub_organization'

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
        @api_client.config.logger.debug "API called: OrganizationsApi#create_sub_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Suborgs
    # Get all suborg IDs associated given a parent org ID and an optional filter.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [GetSubOrgIdsResponse]
    def get_sub_org_ids(body, opts = {})
      data, _status_code, _headers = get_sub_org_ids_with_http_info(body, opts)
      data
    end

    # Get Suborgs
    # Get all suborg IDs associated given a parent org ID and an optional filter.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubOrgIdsResponse, Integer, Hash)>] GetSubOrgIdsResponse data, response status code and response headers
    def get_sub_org_ids_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.get_sub_org_ids ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationsApi.get_sub_org_ids"
      end
      # resource path
      local_var_path = '/public/v1/query/list_suborgs'

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

      return_type = opts[:return_type] || 'GetSubOrgIdsResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth', 'AuthenticatorAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_sub_org_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Root Quorum
    # Set the threshold and members of the root quorum. This must be approved by the current root quorum.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ActivityResponse]
    def update_root_quorum(body, opts = {})
      data, _status_code, _headers = update_root_quorum_with_http_info(body, opts)
      data
    end

    # Update Root Quorum
    # Set the threshold and members of the root quorum. This must be approved by the current root quorum.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityResponse, Integer, Hash)>] ActivityResponse data, response status code and response headers
    def update_root_quorum_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.update_root_quorum ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationsApi.update_root_quorum"
      end
      # resource path
      local_var_path = '/public/v1/submit/update_root_quorum'

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
        @api_client.config.logger.debug "API called: OrganizationsApi#update_root_quorum\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
