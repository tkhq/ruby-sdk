=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
=end

require 'date'

module TurnkeyClient
  class Result
    attr_accessor :create_organization_result

    attr_accessor :create_authenticators_result

    attr_accessor :create_users_result

    attr_accessor :create_private_keys_result

    attr_accessor :create_invitations_result

    attr_accessor :accept_invitation_result

    attr_accessor :sign_raw_payload_result

    attr_accessor :create_policy_result

    attr_accessor :disable_private_key_result

    attr_accessor :delete_users_result

    attr_accessor :delete_authenticators_result

    attr_accessor :delete_invitation_result

    attr_accessor :delete_organization_result

    attr_accessor :delete_policy_result

    attr_accessor :create_user_tag_result

    attr_accessor :delete_user_tags_result

    attr_accessor :sign_transaction_result

    attr_accessor :delete_api_keys_result

    attr_accessor :create_api_keys_result

    attr_accessor :create_private_key_tag_result

    attr_accessor :delete_private_key_tags_result

    attr_accessor :set_payment_method_result

    attr_accessor :activate_billing_tier_result

    attr_accessor :delete_payment_method_result

    attr_accessor :create_api_only_users_result

    attr_accessor :update_root_quorum_result

    attr_accessor :update_user_tag_result

    attr_accessor :update_private_key_tag_result

    attr_accessor :create_sub_organization_result

    attr_accessor :update_allowed_origins_result

    attr_accessor :create_private_keys_result_v2

    attr_accessor :update_user_result

    attr_accessor :update_policy_result

    attr_accessor :create_sub_organization_result_v3

    attr_accessor :create_wallet_result

    attr_accessor :create_wallet_accounts_result

    attr_accessor :init_user_email_recovery_result

    attr_accessor :recover_user_result

    attr_accessor :set_organization_feature_result

    attr_accessor :remove_organization_feature_result

    attr_accessor :export_private_key_result

    attr_accessor :export_wallet_result

    attr_accessor :create_sub_organization_result_v4

    attr_accessor :email_auth_result

    attr_accessor :export_wallet_account_result

    attr_accessor :init_import_wallet_result

    attr_accessor :import_wallet_result

    attr_accessor :init_import_private_key_result

    attr_accessor :import_private_key_result

    attr_accessor :create_policies_result

    attr_accessor :sign_raw_payloads_result

    attr_accessor :create_read_only_session_result

    attr_accessor :create_oauth_providers_result

    attr_accessor :delete_oauth_providers_result

    attr_accessor :create_sub_organization_result_v5

    attr_accessor :oauth_result

    attr_accessor :create_read_write_session_result

    attr_accessor :create_sub_organization_result_v6

    attr_accessor :delete_private_keys_result

    attr_accessor :delete_wallets_result

    attr_accessor :create_read_write_session_result_v2

    attr_accessor :delete_sub_organization_result

    attr_accessor :init_otp_auth_result

    attr_accessor :otp_auth_result

    attr_accessor :create_sub_organization_result_v7

    attr_accessor :update_wallet_result

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'create_organization_result' => :'createOrganizationResult',
        :'create_authenticators_result' => :'createAuthenticatorsResult',
        :'create_users_result' => :'createUsersResult',
        :'create_private_keys_result' => :'createPrivateKeysResult',
        :'create_invitations_result' => :'createInvitationsResult',
        :'accept_invitation_result' => :'acceptInvitationResult',
        :'sign_raw_payload_result' => :'signRawPayloadResult',
        :'create_policy_result' => :'createPolicyResult',
        :'disable_private_key_result' => :'disablePrivateKeyResult',
        :'delete_users_result' => :'deleteUsersResult',
        :'delete_authenticators_result' => :'deleteAuthenticatorsResult',
        :'delete_invitation_result' => :'deleteInvitationResult',
        :'delete_organization_result' => :'deleteOrganizationResult',
        :'delete_policy_result' => :'deletePolicyResult',
        :'create_user_tag_result' => :'createUserTagResult',
        :'delete_user_tags_result' => :'deleteUserTagsResult',
        :'sign_transaction_result' => :'signTransactionResult',
        :'delete_api_keys_result' => :'deleteApiKeysResult',
        :'create_api_keys_result' => :'createApiKeysResult',
        :'create_private_key_tag_result' => :'createPrivateKeyTagResult',
        :'delete_private_key_tags_result' => :'deletePrivateKeyTagsResult',
        :'set_payment_method_result' => :'setPaymentMethodResult',
        :'activate_billing_tier_result' => :'activateBillingTierResult',
        :'delete_payment_method_result' => :'deletePaymentMethodResult',
        :'create_api_only_users_result' => :'createApiOnlyUsersResult',
        :'update_root_quorum_result' => :'updateRootQuorumResult',
        :'update_user_tag_result' => :'updateUserTagResult',
        :'update_private_key_tag_result' => :'updatePrivateKeyTagResult',
        :'create_sub_organization_result' => :'createSubOrganizationResult',
        :'update_allowed_origins_result' => :'updateAllowedOriginsResult',
        :'create_private_keys_result_v2' => :'createPrivateKeysResultV2',
        :'update_user_result' => :'updateUserResult',
        :'update_policy_result' => :'updatePolicyResult',
        :'create_sub_organization_result_v3' => :'createSubOrganizationResultV3',
        :'create_wallet_result' => :'createWalletResult',
        :'create_wallet_accounts_result' => :'createWalletAccountsResult',
        :'init_user_email_recovery_result' => :'initUserEmailRecoveryResult',
        :'recover_user_result' => :'recoverUserResult',
        :'set_organization_feature_result' => :'setOrganizationFeatureResult',
        :'remove_organization_feature_result' => :'removeOrganizationFeatureResult',
        :'export_private_key_result' => :'exportPrivateKeyResult',
        :'export_wallet_result' => :'exportWalletResult',
        :'create_sub_organization_result_v4' => :'createSubOrganizationResultV4',
        :'email_auth_result' => :'emailAuthResult',
        :'export_wallet_account_result' => :'exportWalletAccountResult',
        :'init_import_wallet_result' => :'initImportWalletResult',
        :'import_wallet_result' => :'importWalletResult',
        :'init_import_private_key_result' => :'initImportPrivateKeyResult',
        :'import_private_key_result' => :'importPrivateKeyResult',
        :'create_policies_result' => :'createPoliciesResult',
        :'sign_raw_payloads_result' => :'signRawPayloadsResult',
        :'create_read_only_session_result' => :'createReadOnlySessionResult',
        :'create_oauth_providers_result' => :'createOauthProvidersResult',
        :'delete_oauth_providers_result' => :'deleteOauthProvidersResult',
        :'create_sub_organization_result_v5' => :'createSubOrganizationResultV5',
        :'oauth_result' => :'oauthResult',
        :'create_read_write_session_result' => :'createReadWriteSessionResult',
        :'create_sub_organization_result_v6' => :'createSubOrganizationResultV6',
        :'delete_private_keys_result' => :'deletePrivateKeysResult',
        :'delete_wallets_result' => :'deleteWalletsResult',
        :'create_read_write_session_result_v2' => :'createReadWriteSessionResultV2',
        :'delete_sub_organization_result' => :'deleteSubOrganizationResult',
        :'init_otp_auth_result' => :'initOtpAuthResult',
        :'otp_auth_result' => :'otpAuthResult',
        :'create_sub_organization_result_v7' => :'createSubOrganizationResultV7',
        :'update_wallet_result' => :'updateWalletResult'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'create_organization_result' => :'Object',
        :'create_authenticators_result' => :'Object',
        :'create_users_result' => :'Object',
        :'create_private_keys_result' => :'Object',
        :'create_invitations_result' => :'Object',
        :'accept_invitation_result' => :'Object',
        :'sign_raw_payload_result' => :'Object',
        :'create_policy_result' => :'Object',
        :'disable_private_key_result' => :'Object',
        :'delete_users_result' => :'Object',
        :'delete_authenticators_result' => :'Object',
        :'delete_invitation_result' => :'Object',
        :'delete_organization_result' => :'Object',
        :'delete_policy_result' => :'Object',
        :'create_user_tag_result' => :'Object',
        :'delete_user_tags_result' => :'Object',
        :'sign_transaction_result' => :'Object',
        :'delete_api_keys_result' => :'Object',
        :'create_api_keys_result' => :'Object',
        :'create_private_key_tag_result' => :'Object',
        :'delete_private_key_tags_result' => :'Object',
        :'set_payment_method_result' => :'Object',
        :'activate_billing_tier_result' => :'Object',
        :'delete_payment_method_result' => :'Object',
        :'create_api_only_users_result' => :'Object',
        :'update_root_quorum_result' => :'Object',
        :'update_user_tag_result' => :'Object',
        :'update_private_key_tag_result' => :'Object',
        :'create_sub_organization_result' => :'Object',
        :'update_allowed_origins_result' => :'Object',
        :'create_private_keys_result_v2' => :'Object',
        :'update_user_result' => :'Object',
        :'update_policy_result' => :'Object',
        :'create_sub_organization_result_v3' => :'Object',
        :'create_wallet_result' => :'Object',
        :'create_wallet_accounts_result' => :'Object',
        :'init_user_email_recovery_result' => :'Object',
        :'recover_user_result' => :'Object',
        :'set_organization_feature_result' => :'Object',
        :'remove_organization_feature_result' => :'Object',
        :'export_private_key_result' => :'Object',
        :'export_wallet_result' => :'Object',
        :'create_sub_organization_result_v4' => :'Object',
        :'email_auth_result' => :'Object',
        :'export_wallet_account_result' => :'Object',
        :'init_import_wallet_result' => :'Object',
        :'import_wallet_result' => :'Object',
        :'init_import_private_key_result' => :'Object',
        :'import_private_key_result' => :'Object',
        :'create_policies_result' => :'Object',
        :'sign_raw_payloads_result' => :'Object',
        :'create_read_only_session_result' => :'Object',
        :'create_oauth_providers_result' => :'Object',
        :'delete_oauth_providers_result' => :'Object',
        :'create_sub_organization_result_v5' => :'Object',
        :'oauth_result' => :'Object',
        :'create_read_write_session_result' => :'Object',
        :'create_sub_organization_result_v6' => :'Object',
        :'delete_private_keys_result' => :'Object',
        :'delete_wallets_result' => :'Object',
        :'create_read_write_session_result_v2' => :'Object',
        :'delete_sub_organization_result' => :'Object',
        :'init_otp_auth_result' => :'Object',
        :'otp_auth_result' => :'Object',
        :'create_sub_organization_result_v7' => :'Object',
        :'update_wallet_result' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TurnkeyClient::Result` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TurnkeyClient::Result`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'create_organization_result')
        self.create_organization_result = attributes[:'create_organization_result']
      end

      if attributes.key?(:'create_authenticators_result')
        self.create_authenticators_result = attributes[:'create_authenticators_result']
      end

      if attributes.key?(:'create_users_result')
        self.create_users_result = attributes[:'create_users_result']
      end

      if attributes.key?(:'create_private_keys_result')
        self.create_private_keys_result = attributes[:'create_private_keys_result']
      end

      if attributes.key?(:'create_invitations_result')
        self.create_invitations_result = attributes[:'create_invitations_result']
      end

      if attributes.key?(:'accept_invitation_result')
        self.accept_invitation_result = attributes[:'accept_invitation_result']
      end

      if attributes.key?(:'sign_raw_payload_result')
        self.sign_raw_payload_result = attributes[:'sign_raw_payload_result']
      end

      if attributes.key?(:'create_policy_result')
        self.create_policy_result = attributes[:'create_policy_result']
      end

      if attributes.key?(:'disable_private_key_result')
        self.disable_private_key_result = attributes[:'disable_private_key_result']
      end

      if attributes.key?(:'delete_users_result')
        self.delete_users_result = attributes[:'delete_users_result']
      end

      if attributes.key?(:'delete_authenticators_result')
        self.delete_authenticators_result = attributes[:'delete_authenticators_result']
      end

      if attributes.key?(:'delete_invitation_result')
        self.delete_invitation_result = attributes[:'delete_invitation_result']
      end

      if attributes.key?(:'delete_organization_result')
        self.delete_organization_result = attributes[:'delete_organization_result']
      end

      if attributes.key?(:'delete_policy_result')
        self.delete_policy_result = attributes[:'delete_policy_result']
      end

      if attributes.key?(:'create_user_tag_result')
        self.create_user_tag_result = attributes[:'create_user_tag_result']
      end

      if attributes.key?(:'delete_user_tags_result')
        self.delete_user_tags_result = attributes[:'delete_user_tags_result']
      end

      if attributes.key?(:'sign_transaction_result')
        self.sign_transaction_result = attributes[:'sign_transaction_result']
      end

      if attributes.key?(:'delete_api_keys_result')
        self.delete_api_keys_result = attributes[:'delete_api_keys_result']
      end

      if attributes.key?(:'create_api_keys_result')
        self.create_api_keys_result = attributes[:'create_api_keys_result']
      end

      if attributes.key?(:'create_private_key_tag_result')
        self.create_private_key_tag_result = attributes[:'create_private_key_tag_result']
      end

      if attributes.key?(:'delete_private_key_tags_result')
        self.delete_private_key_tags_result = attributes[:'delete_private_key_tags_result']
      end

      if attributes.key?(:'set_payment_method_result')
        self.set_payment_method_result = attributes[:'set_payment_method_result']
      end

      if attributes.key?(:'activate_billing_tier_result')
        self.activate_billing_tier_result = attributes[:'activate_billing_tier_result']
      end

      if attributes.key?(:'delete_payment_method_result')
        self.delete_payment_method_result = attributes[:'delete_payment_method_result']
      end

      if attributes.key?(:'create_api_only_users_result')
        self.create_api_only_users_result = attributes[:'create_api_only_users_result']
      end

      if attributes.key?(:'update_root_quorum_result')
        self.update_root_quorum_result = attributes[:'update_root_quorum_result']
      end

      if attributes.key?(:'update_user_tag_result')
        self.update_user_tag_result = attributes[:'update_user_tag_result']
      end

      if attributes.key?(:'update_private_key_tag_result')
        self.update_private_key_tag_result = attributes[:'update_private_key_tag_result']
      end

      if attributes.key?(:'create_sub_organization_result')
        self.create_sub_organization_result = attributes[:'create_sub_organization_result']
      end

      if attributes.key?(:'update_allowed_origins_result')
        self.update_allowed_origins_result = attributes[:'update_allowed_origins_result']
      end

      if attributes.key?(:'create_private_keys_result_v2')
        self.create_private_keys_result_v2 = attributes[:'create_private_keys_result_v2']
      end

      if attributes.key?(:'update_user_result')
        self.update_user_result = attributes[:'update_user_result']
      end

      if attributes.key?(:'update_policy_result')
        self.update_policy_result = attributes[:'update_policy_result']
      end

      if attributes.key?(:'create_sub_organization_result_v3')
        self.create_sub_organization_result_v3 = attributes[:'create_sub_organization_result_v3']
      end

      if attributes.key?(:'create_wallet_result')
        self.create_wallet_result = attributes[:'create_wallet_result']
      end

      if attributes.key?(:'create_wallet_accounts_result')
        self.create_wallet_accounts_result = attributes[:'create_wallet_accounts_result']
      end

      if attributes.key?(:'init_user_email_recovery_result')
        self.init_user_email_recovery_result = attributes[:'init_user_email_recovery_result']
      end

      if attributes.key?(:'recover_user_result')
        self.recover_user_result = attributes[:'recover_user_result']
      end

      if attributes.key?(:'set_organization_feature_result')
        self.set_organization_feature_result = attributes[:'set_organization_feature_result']
      end

      if attributes.key?(:'remove_organization_feature_result')
        self.remove_organization_feature_result = attributes[:'remove_organization_feature_result']
      end

      if attributes.key?(:'export_private_key_result')
        self.export_private_key_result = attributes[:'export_private_key_result']
      end

      if attributes.key?(:'export_wallet_result')
        self.export_wallet_result = attributes[:'export_wallet_result']
      end

      if attributes.key?(:'create_sub_organization_result_v4')
        self.create_sub_organization_result_v4 = attributes[:'create_sub_organization_result_v4']
      end

      if attributes.key?(:'email_auth_result')
        self.email_auth_result = attributes[:'email_auth_result']
      end

      if attributes.key?(:'export_wallet_account_result')
        self.export_wallet_account_result = attributes[:'export_wallet_account_result']
      end

      if attributes.key?(:'init_import_wallet_result')
        self.init_import_wallet_result = attributes[:'init_import_wallet_result']
      end

      if attributes.key?(:'import_wallet_result')
        self.import_wallet_result = attributes[:'import_wallet_result']
      end

      if attributes.key?(:'init_import_private_key_result')
        self.init_import_private_key_result = attributes[:'init_import_private_key_result']
      end

      if attributes.key?(:'import_private_key_result')
        self.import_private_key_result = attributes[:'import_private_key_result']
      end

      if attributes.key?(:'create_policies_result')
        self.create_policies_result = attributes[:'create_policies_result']
      end

      if attributes.key?(:'sign_raw_payloads_result')
        self.sign_raw_payloads_result = attributes[:'sign_raw_payloads_result']
      end

      if attributes.key?(:'create_read_only_session_result')
        self.create_read_only_session_result = attributes[:'create_read_only_session_result']
      end

      if attributes.key?(:'create_oauth_providers_result')
        self.create_oauth_providers_result = attributes[:'create_oauth_providers_result']
      end

      if attributes.key?(:'delete_oauth_providers_result')
        self.delete_oauth_providers_result = attributes[:'delete_oauth_providers_result']
      end

      if attributes.key?(:'create_sub_organization_result_v5')
        self.create_sub_organization_result_v5 = attributes[:'create_sub_organization_result_v5']
      end

      if attributes.key?(:'oauth_result')
        self.oauth_result = attributes[:'oauth_result']
      end

      if attributes.key?(:'create_read_write_session_result')
        self.create_read_write_session_result = attributes[:'create_read_write_session_result']
      end

      if attributes.key?(:'create_sub_organization_result_v6')
        self.create_sub_organization_result_v6 = attributes[:'create_sub_organization_result_v6']
      end

      if attributes.key?(:'delete_private_keys_result')
        self.delete_private_keys_result = attributes[:'delete_private_keys_result']
      end

      if attributes.key?(:'delete_wallets_result')
        self.delete_wallets_result = attributes[:'delete_wallets_result']
      end

      if attributes.key?(:'create_read_write_session_result_v2')
        self.create_read_write_session_result_v2 = attributes[:'create_read_write_session_result_v2']
      end

      if attributes.key?(:'delete_sub_organization_result')
        self.delete_sub_organization_result = attributes[:'delete_sub_organization_result']
      end

      if attributes.key?(:'init_otp_auth_result')
        self.init_otp_auth_result = attributes[:'init_otp_auth_result']
      end

      if attributes.key?(:'otp_auth_result')
        self.otp_auth_result = attributes[:'otp_auth_result']
      end

      if attributes.key?(:'create_sub_organization_result_v7')
        self.create_sub_organization_result_v7 = attributes[:'create_sub_organization_result_v7']
      end

      if attributes.key?(:'update_wallet_result')
        self.update_wallet_result = attributes[:'update_wallet_result']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          create_organization_result == o.create_organization_result &&
          create_authenticators_result == o.create_authenticators_result &&
          create_users_result == o.create_users_result &&
          create_private_keys_result == o.create_private_keys_result &&
          create_invitations_result == o.create_invitations_result &&
          accept_invitation_result == o.accept_invitation_result &&
          sign_raw_payload_result == o.sign_raw_payload_result &&
          create_policy_result == o.create_policy_result &&
          disable_private_key_result == o.disable_private_key_result &&
          delete_users_result == o.delete_users_result &&
          delete_authenticators_result == o.delete_authenticators_result &&
          delete_invitation_result == o.delete_invitation_result &&
          delete_organization_result == o.delete_organization_result &&
          delete_policy_result == o.delete_policy_result &&
          create_user_tag_result == o.create_user_tag_result &&
          delete_user_tags_result == o.delete_user_tags_result &&
          sign_transaction_result == o.sign_transaction_result &&
          delete_api_keys_result == o.delete_api_keys_result &&
          create_api_keys_result == o.create_api_keys_result &&
          create_private_key_tag_result == o.create_private_key_tag_result &&
          delete_private_key_tags_result == o.delete_private_key_tags_result &&
          set_payment_method_result == o.set_payment_method_result &&
          activate_billing_tier_result == o.activate_billing_tier_result &&
          delete_payment_method_result == o.delete_payment_method_result &&
          create_api_only_users_result == o.create_api_only_users_result &&
          update_root_quorum_result == o.update_root_quorum_result &&
          update_user_tag_result == o.update_user_tag_result &&
          update_private_key_tag_result == o.update_private_key_tag_result &&
          create_sub_organization_result == o.create_sub_organization_result &&
          update_allowed_origins_result == o.update_allowed_origins_result &&
          create_private_keys_result_v2 == o.create_private_keys_result_v2 &&
          update_user_result == o.update_user_result &&
          update_policy_result == o.update_policy_result &&
          create_sub_organization_result_v3 == o.create_sub_organization_result_v3 &&
          create_wallet_result == o.create_wallet_result &&
          create_wallet_accounts_result == o.create_wallet_accounts_result &&
          init_user_email_recovery_result == o.init_user_email_recovery_result &&
          recover_user_result == o.recover_user_result &&
          set_organization_feature_result == o.set_organization_feature_result &&
          remove_organization_feature_result == o.remove_organization_feature_result &&
          export_private_key_result == o.export_private_key_result &&
          export_wallet_result == o.export_wallet_result &&
          create_sub_organization_result_v4 == o.create_sub_organization_result_v4 &&
          email_auth_result == o.email_auth_result &&
          export_wallet_account_result == o.export_wallet_account_result &&
          init_import_wallet_result == o.init_import_wallet_result &&
          import_wallet_result == o.import_wallet_result &&
          init_import_private_key_result == o.init_import_private_key_result &&
          import_private_key_result == o.import_private_key_result &&
          create_policies_result == o.create_policies_result &&
          sign_raw_payloads_result == o.sign_raw_payloads_result &&
          create_read_only_session_result == o.create_read_only_session_result &&
          create_oauth_providers_result == o.create_oauth_providers_result &&
          delete_oauth_providers_result == o.delete_oauth_providers_result &&
          create_sub_organization_result_v5 == o.create_sub_organization_result_v5 &&
          oauth_result == o.oauth_result &&
          create_read_write_session_result == o.create_read_write_session_result &&
          create_sub_organization_result_v6 == o.create_sub_organization_result_v6 &&
          delete_private_keys_result == o.delete_private_keys_result &&
          delete_wallets_result == o.delete_wallets_result &&
          create_read_write_session_result_v2 == o.create_read_write_session_result_v2 &&
          delete_sub_organization_result == o.delete_sub_organization_result &&
          init_otp_auth_result == o.init_otp_auth_result &&
          otp_auth_result == o.otp_auth_result &&
          create_sub_organization_result_v7 == o.create_sub_organization_result_v7 &&
          update_wallet_result == o.update_wallet_result
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [create_organization_result, create_authenticators_result, create_users_result, create_private_keys_result, create_invitations_result, accept_invitation_result, sign_raw_payload_result, create_policy_result, disable_private_key_result, delete_users_result, delete_authenticators_result, delete_invitation_result, delete_organization_result, delete_policy_result, create_user_tag_result, delete_user_tags_result, sign_transaction_result, delete_api_keys_result, create_api_keys_result, create_private_key_tag_result, delete_private_key_tags_result, set_payment_method_result, activate_billing_tier_result, delete_payment_method_result, create_api_only_users_result, update_root_quorum_result, update_user_tag_result, update_private_key_tag_result, create_sub_organization_result, update_allowed_origins_result, create_private_keys_result_v2, update_user_result, update_policy_result, create_sub_organization_result_v3, create_wallet_result, create_wallet_accounts_result, init_user_email_recovery_result, recover_user_result, set_organization_feature_result, remove_organization_feature_result, export_private_key_result, export_wallet_result, create_sub_organization_result_v4, email_auth_result, export_wallet_account_result, init_import_wallet_result, import_wallet_result, init_import_private_key_result, import_private_key_result, create_policies_result, sign_raw_payloads_result, create_read_only_session_result, create_oauth_providers_result, delete_oauth_providers_result, create_sub_organization_result_v5, oauth_result, create_read_write_session_result, create_sub_organization_result_v6, delete_private_keys_result, delete_wallets_result, create_read_write_session_result_v2, delete_sub_organization_result, init_otp_auth_result, otp_auth_result, create_sub_organization_result_v7, update_wallet_result].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        TurnkeyClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
