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

class AbandonedCheckout202307Test < Test::Unit::TestCase
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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?created_at_max=2013-10-12T07%3A05%3A27-02%3A00")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
      created_at_max: "2013-10-12T07:05:27-02:00",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?created_at_max=2013-10-12T07%3A05%3A27-02%3A00")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?status=closed")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
      status: "closed",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?status=closed")

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
  def test_4()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?limit=1")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
      limit: "1",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?limit=1")

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
  def test_5()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json")

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
  def test_6()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?created_at_max=2013-10-12T07%3A05%3A27-02%3A00")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
      created_at_max: "2013-10-12T07:05:27-02:00",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?created_at_max=2013-10-12T07%3A05%3A27-02%3A00")

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
  def test_7()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?status=closed")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"checkouts" => [{"id" => 450789469, "token" => "2a1ace52255252df566af0faaedfbfa7", "cart_token" => "68778783ad298f1c80c3bafcddeea02f", "email" => "bob.norman@mail.example.com", "gateway" => nil, "buyer_accepts_marketing" => false, "created_at" => "2012-10-12T07:05:27-04:00", "updated_at" => "2012-10-12T07:05:27-04:00", "landing_site" => nil, "note" => nil, "note_attributes" => [{"name" => "custom engraving", "value" => "Happy Birthday"}, {"name" => "colour", "value" => "green"}], "referring_site" => nil, "shipping_lines" => [{"code" => "Free Shipping", "price" => "0.00", "original_shop_price" => nil, "original_rate_price" => nil, "original_shop_markup" => nil, "source" => "shopify", "title" => "Free Shipping", "presentment_title" => nil, "phone" => nil, "tax_lines" => nil, "custom_tax_lines" => nil, "validation_context" => nil, "markup" => nil, "delivery_category" => nil, "carrier_identifier" => nil, "carrier_service_id" => nil, "api_client_id" => nil, "requested_fulfillment_service_id" => nil, "applied_discounts" => [], "delivery_option_group_type" => nil, "delivery_expectation_range" => nil, "delivery_expectation_type" => nil, "estimated_delivery_time_range" => nil, "id" => "5da41c1738454765"}], "taxes_included" => false, "total_weight" => 400, "currency" => "USD", "completed_at" => nil, "closed_at" => nil, "user_id" => nil, "location_id" => nil, "source_identifier" => nil, "source_url" => nil, "device_id" => nil, "phone" => nil, "customer_locale" => "en", "line_items" => [{"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "749537366ff60c91", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Red", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008RED", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 49148385, "variant_title" => "Red", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}, {"applied_discounts" => [], "discount_allocations" => [{"id" => nil, "amount" => "19.90", "description" => "TENOFF", "created_at" => nil, "application_type" => "discount_code", "discount_class" => "ORDER"}], "key" => "c635872499bd4673", "destination_location_id" => nil, "fulfillment_service" => "manual", "gift_card" => false, "grams" => 200, "origin_location_id" => nil, "presentment_title" => "IPod Nano - 8GB", "presentment_variant_title" => "Pink", "product_id" => 632910392, "properties" => nil, "quantity" => 1, "requires_shipping" => true, "sku" => "IPOD2008PINK", "tax_lines" => [], "taxable" => true, "title" => "IPod Nano - 8GB", "variant_id" => 808950810, "variant_title" => "Pink", "variant_price" => nil, "vendor" => "Apple", "user_id" => nil, "unit_price_measurement" => nil, "rank" => nil, "compare_at_price" => nil, "line_price" => "199.00", "price" => "199.00"}], "name" => "#450789469", "source" => nil, "abandoned_checkout_url" => "https://checkout.local/548380009/checkouts/2a1ace52255252df566af0faaedfbfa7/recover", "discount_codes" => [{"code" => "TENOFF", "amount" => "39.80", "type" => "percentage"}], "tax_lines" => [{"price" => "21.49", "rate" => 0.06, "title" => "State Tax", "channel_liable" => nil}], "source_name" => "web", "presentment_currency" => "USD", "buyer_accepts_sms_marketing" => false, "sms_marketing_phone" => nil, "total_discounts" => "39.80", "total_line_items_price" => "398.00", "total_price" => "379.69", "total_tax" => "21.49", "subtotal_price" => "358.20", "total_duties" => nil, "billing_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "shipping_address" => {"first_name" => "Bob", "address1" => "Chestnut Street 92", "phone" => "+1(502)-459-2181", "city" => "Louisville", "zip" => "40202", "province" => "Kentucky", "country" => "United States", "last_name" => "Norman", "address2" => "", "company" => nil, "latitude" => 45.41634, "longitude" => -75.6868, "name" => "Bob Norman", "country_code" => "US", "province_code" => "KY"}, "customer" => {"id" => 207119551, "email" => "bob.norman@mail.example.com", "accepts_marketing" => false, "created_at" => "2023-07-11T17:47:36-04:00", "updated_at" => "2023-07-11T17:47:36-04:00", "first_name" => "Bob", "last_name" => "Norman", "orders_count" => 1, "state" => "disabled", "total_spent" => "199.65", "last_order_id" => 450789469, "note" => nil, "verified_email" => true, "multipass_identifier" => nil, "tax_exempt" => false, "tags" => "L\u00E9on, No\u00EBl", "last_order_name" => "#1001", "currency" => "USD", "phone" => "+16136120707", "accepts_marketing_updated_at" => "2005-06-12T11:57:11-04:00", "marketing_opt_in_level" => nil, "tax_exemptions" => [], "email_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => nil, "consent_updated_at" => "2004-06-13T11:57:11-04:00"}, "sms_marketing_consent" => {"state" => "not_subscribed", "opt_in_level" => "single_opt_in", "consent_updated_at" => "2023-07-11T17:47:36-04:00", "consent_collected_from" => "OTHER"}, "admin_graphql_api_id" => "gid://shopify/Customer/207119551", "default_address" => {"id" => 207119551, "customer_id" => 207119551, "first_name" => nil, "last_name" => nil, "company" => nil, "address1" => "Chestnut Street 92", "address2" => "", "city" => "Louisville", "province" => "Kentucky", "country" => "United States", "zip" => "40202", "phone" => "555-625-1199", "name" => "", "province_code" => "KY", "country_code" => "US", "country_name" => "United States", "default" => true}}}]}), headers: {})

    response = ShopifyAPI::AbandonedCheckout.checkouts(
      session: @shopify_api_config.active_session,
      status: "closed",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-07/checkouts.json?status=closed")

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
