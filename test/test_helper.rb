# typed: strict
# frozen_string_literal: true

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"
require "mocha"
require "mocha/minitest"

require "shopify_api"
require "pry-byebug"

require_relative("./test_helpers/constants.rb")

Dir[File.dirname(__FILE__) + "/test_helpers/*.rb"].each { |file| require file }

module Test
  module Unit
    class TestCase < Minitest::Test
      extend T::Sig

      sig { void }
      def setup
        @shopify_api_config = T.let(create_config, T.nilable(ShopifyAPI::Config))
      end

      sig { returns(ShopifyAPI::Config) }
      def create_config
        ShopifyAPI::Config.new(
          api_key: "API_KEY",
          api_secret_key: "API_SECRET_KEY",
          api_version: "unstable",
          host: "https://app-address.com",
          scope: ["scope1", "scope2"],
          is_private: false,
          is_embedded: false,
          logger: ::Logger.new(T.let(StringIO.new, StringIO)), # comment line to see logging on stdout
          user_agent_prefix: nil,
          old_api_secret_key: nil,
          log_level: :off,
        )
      end
    end
  end
end
