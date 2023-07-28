# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class StorefrontAccessToken202307Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")

    @shopify_api_config ||= create_config
    @shopify_api_config.activate_session(test_session)
    @shopify_api_config.modify(api_version: "2023-07")
  end

  def teardown
    super

    @shopify_api_config.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "storefront_access_token" => hash_including({"title" => "Test"}) }
      )
      .to_return(status: 200, body: JSON.generate({"storefront_access_token" => {"access_token" => "f1dcc9381f3de9b774b2229b1f3118a2", "access_scope" => "unauthenticated_read_product_listings", "created_at" => "2023-07-11T18:14:23-04:00", "id" => 1003304090, "admin_graphql_api_id" => "gid://shopify/StorefrontAccessToken/1003304090", "title" => "Test"}}), headers: {})

    response = storefront_access_token = ShopifyAPI::StorefrontAccessToken.new(session: @shopify_api_config.active_session)
    storefront_access_token.title = "Test"
    storefront_access_token.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_2()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"storefront_access_tokens" => [{"access_token" => "378d95641257a4ab3feff967ee234f4d", "access_scope" => "unauthenticated_read_product_listings", "created_at" => "2023-07-11T17:47:36-04:00", "id" => 755357713, "admin_graphql_api_id" => "gid://shopify/StorefrontAccessToken/755357713", "title" => "API Client Extension"}]}), headers: {})

    response = ShopifyAPI::StorefrontAccessToken.all(
      session: @shopify_api_config.active_session,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_3()
    stub_request(:delete, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens/755357713.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({}), headers: {})

    response = ShopifyAPI::StorefrontAccessToken.delete(
      session: @shopify_api_config.active_session,
      id: 755357713,
    )

    assert_requested(:delete, "https://test-shop.myshopify.io/admin/api/2023-07/storefront_access_tokens/755357713.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

end
