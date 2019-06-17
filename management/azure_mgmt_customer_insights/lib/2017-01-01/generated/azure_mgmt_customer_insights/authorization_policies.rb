# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  #
  # The Azure Customer Insights management API provides a RESTful set of web
  # services that interact with Azure Customer Insights service to manage your
  # resources. The API has entities that capture the relationship between an
  # end user and the Azure Customer Insights service.
  #
  class AuthorizationPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AuthorizationPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CustomerInsightsManagementClient] reference to the CustomerInsightsManagementClient
    attr_reader :client

    #
    # Creates an authorization policy or updates an existing authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param parameters [AuthorizationPolicyResourceFormat] Parameters supplied to
    # the CreateOrUpdate authorization policy operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicyResourceFormat] operation results.
    #
    def create_or_update(resource_group_name, hub_name, authorization_policy_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, hub_name, authorization_policy_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates an authorization policy or updates an existing authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param parameters [AuthorizationPolicyResourceFormat] Parameters supplied to
    # the CreateOrUpdate authorization policy operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, hub_name, authorization_policy_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, hub_name, authorization_policy_name, parameters, custom_headers).value!
    end

    #
    # Creates an authorization policy or updates an existing authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param parameters [AuthorizationPolicyResourceFormat] Parameters supplied to
    # the CreateOrUpdate authorization policy operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, hub_name, authorization_policy_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'authorization_policy_name is nil' if authorization_policy_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyResourceFormat.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/authorizationPolicies/{authorizationPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'authorizationPolicyName' => authorization_policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyResourceFormat.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyResourceFormat.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets an authorization policy in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicyResourceFormat] operation results.
    #
    def get(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      response = get_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an authorization policy in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      get_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
    end

    #
    # Gets an authorization policy in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'authorization_policy_name is nil' if authorization_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/authorizationPolicies/{authorizationPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'authorizationPolicyName' => authorization_policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyResourceFormat.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<AuthorizationPolicyResourceFormat>] operation results.
    #
    def list_by_hub(resource_group_name, hub_name, custom_headers = nil)
      first_page = list_by_hub_as_lazy(resource_group_name, hub_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_hub_with_http_info(resource_group_name, hub_name, custom_headers = nil)
      list_by_hub_async(resource_group_name, hub_name, custom_headers).value!
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_hub_async(resource_group_name, hub_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/authorizationPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Regenerates the primary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicy] operation results.
    #
    def regenerate_primary_key(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      response = regenerate_primary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Regenerates the primary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def regenerate_primary_key_with_http_info(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      regenerate_primary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
    end

    #
    # Regenerates the primary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def regenerate_primary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'authorization_policy_name is nil' if authorization_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/authorizationPolicies/{authorizationPolicyName}/regeneratePrimaryKey'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'authorizationPolicyName' => authorization_policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Regenerates the secondary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicy] operation results.
    #
    def regenerate_secondary_key(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      response = regenerate_secondary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Regenerates the secondary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def regenerate_secondary_key_with_http_info(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      regenerate_secondary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers).value!
    end

    #
    # Regenerates the secondary policy key of the specified authorization policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param authorization_policy_name [String] The name of the policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def regenerate_secondary_key_async(resource_group_name, hub_name, authorization_policy_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'authorization_policy_name is nil' if authorization_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/authorizationPolicies/{authorizationPolicyName}/regenerateSecondaryKey'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'authorizationPolicyName' => authorization_policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicyListResult] operation results.
    #
    def list_by_hub_next(next_page_link, custom_headers = nil)
      response = list_by_hub_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_hub_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_hub_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_hub_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::AuthorizationPolicyListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the authorization policies in a specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AuthorizationPolicyListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_hub_as_lazy(resource_group_name, hub_name, custom_headers = nil)
      response = list_by_hub_async(resource_group_name, hub_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_hub_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
