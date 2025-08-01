=begin
#API Reference

#Review our [API Introduction](../api-introduction) to get started.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
=end

require 'date'

module TurnkeyClient
  class AddressFormat
    UNCOMPRESSED = 'ADDRESS_FORMAT_UNCOMPRESSED'.freeze
    COMPRESSED = 'ADDRESS_FORMAT_COMPRESSED'.freeze
    ETHEREUM = 'ADDRESS_FORMAT_ETHEREUM'.freeze
    SOLANA = 'ADDRESS_FORMAT_SOLANA'.freeze
    COSMOS = 'ADDRESS_FORMAT_COSMOS'.freeze
    TRON = 'ADDRESS_FORMAT_TRON'.freeze
    SUI = 'ADDRESS_FORMAT_SUI'.freeze
    APTOS = 'ADDRESS_FORMAT_APTOS'.freeze
    BITCOIN_MAINNET_P2_PKH = 'ADDRESS_FORMAT_BITCOIN_MAINNET_P2PKH'.freeze
    BITCOIN_MAINNET_P2_SH = 'ADDRESS_FORMAT_BITCOIN_MAINNET_P2SH'.freeze
    BITCOIN_MAINNET_P2_WPKH = 'ADDRESS_FORMAT_BITCOIN_MAINNET_P2WPKH'.freeze
    BITCOIN_MAINNET_P2_WSH = 'ADDRESS_FORMAT_BITCOIN_MAINNET_P2WSH'.freeze
    BITCOIN_MAINNET_P2_TR = 'ADDRESS_FORMAT_BITCOIN_MAINNET_P2TR'.freeze
    BITCOIN_TESTNET_P2_PKH = 'ADDRESS_FORMAT_BITCOIN_TESTNET_P2PKH'.freeze
    BITCOIN_TESTNET_P2_SH = 'ADDRESS_FORMAT_BITCOIN_TESTNET_P2SH'.freeze
    BITCOIN_TESTNET_P2_WPKH = 'ADDRESS_FORMAT_BITCOIN_TESTNET_P2WPKH'.freeze
    BITCOIN_TESTNET_P2_WSH = 'ADDRESS_FORMAT_BITCOIN_TESTNET_P2WSH'.freeze
    BITCOIN_TESTNET_P2_TR = 'ADDRESS_FORMAT_BITCOIN_TESTNET_P2TR'.freeze
    BITCOIN_SIGNET_P2_PKH = 'ADDRESS_FORMAT_BITCOIN_SIGNET_P2PKH'.freeze
    BITCOIN_SIGNET_P2_SH = 'ADDRESS_FORMAT_BITCOIN_SIGNET_P2SH'.freeze
    BITCOIN_SIGNET_P2_WPKH = 'ADDRESS_FORMAT_BITCOIN_SIGNET_P2WPKH'.freeze
    BITCOIN_SIGNET_P2_WSH = 'ADDRESS_FORMAT_BITCOIN_SIGNET_P2WSH'.freeze
    BITCOIN_SIGNET_P2_TR = 'ADDRESS_FORMAT_BITCOIN_SIGNET_P2TR'.freeze
    BITCOIN_REGTEST_P2_PKH = 'ADDRESS_FORMAT_BITCOIN_REGTEST_P2PKH'.freeze
    BITCOIN_REGTEST_P2_SH = 'ADDRESS_FORMAT_BITCOIN_REGTEST_P2SH'.freeze
    BITCOIN_REGTEST_P2_WPKH = 'ADDRESS_FORMAT_BITCOIN_REGTEST_P2WPKH'.freeze
    BITCOIN_REGTEST_P2_WSH = 'ADDRESS_FORMAT_BITCOIN_REGTEST_P2WSH'.freeze
    BITCOIN_REGTEST_P2_TR = 'ADDRESS_FORMAT_BITCOIN_REGTEST_P2TR'.freeze
    SEI = 'ADDRESS_FORMAT_SEI'.freeze
    XLM = 'ADDRESS_FORMAT_XLM'.freeze
    DOGE_MAINNET = 'ADDRESS_FORMAT_DOGE_MAINNET'.freeze
    DOGE_TESTNET = 'ADDRESS_FORMAT_DOGE_TESTNET'.freeze
    TON_V3_R2 = 'ADDRESS_FORMAT_TON_V3R2'.freeze
    TON_V4_R2 = 'ADDRESS_FORMAT_TON_V4R2'.freeze
    TON_V5_R1 = 'ADDRESS_FORMAT_TON_V5R1'.freeze
    XRP = 'ADDRESS_FORMAT_XRP'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AddressFormat.constants.select { |c| AddressFormat::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AddressFormat" if constantValues.empty?
      value
    end
  end
end
