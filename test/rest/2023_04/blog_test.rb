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

class Blog202304Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")

    @shopify_api_config ||= create_config
    @shopify_api_config.activate_session(test_session)
    @shopify_api_config.modify(api_version: "2023-04")
  end

  def teardown
    super

    @shopify_api_config.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"blogs" => [{"id" => 382285388, "handle" => "banana-blog", "title" => "A Gnu Blog", "updated_at" => "2006-02-02T19:00:00-05:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/382285388"}, {"id" => 241253187, "handle" => "apple-blog", "title" => "Mah Blog", "updated_at" => "2006-02-01T19:00:00-05:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "Announcing, Mystery", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/241253187"}]}), headers: {})

    response = ShopifyAPI::Blog.all(
      session: @shopify_api_config.active_session,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json?since_id=241253187")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"blogs" => [{"id" => 382285388, "handle" => "banana-blog", "title" => "A Gnu Blog", "updated_at" => "2006-02-02T19:00:00-05:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/382285388"}, {"id" => 1008414251, "handle" => "apple-main-blog", "title" => "Apple main blog", "updated_at" => "2023-07-11T18:16:16-04:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T18:16:16-04:00", "template_suffix" => nil, "tags" => "", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/1008414251"}]}), headers: {})

    response = ShopifyAPI::Blog.all(
      session: @shopify_api_config.active_session,
      since_id: "241253187",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json?since_id=241253187")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "blog" => hash_including({"title" => "Apple main blog"}) }
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"id" => 1008414250, "handle" => "apple-main-blog", "title" => "Apple main blog", "updated_at" => "2023-07-11T18:16:15-04:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T18:16:15-04:00", "template_suffix" => nil, "tags" => "", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/1008414250"}}), headers: {})

    response = blog = ShopifyAPI::Blog.new(session: @shopify_api_config.active_session)
    blog.title = "Apple main blog"
    blog.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "blog" => hash_including({"title" => "Apple main blog", "metafields" => [{"key" => "sponsor", "value" => "Shopify", "type" => "single_line_text_field", "namespace" => "global"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"id" => 1008414253, "handle" => "apple-main-blog", "title" => "Apple main blog", "updated_at" => "2023-07-11T18:16:31-04:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T18:16:31-04:00", "template_suffix" => nil, "tags" => "", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/1008414253"}}), headers: {})

    response = blog = ShopifyAPI::Blog.new(session: @shopify_api_config.active_session)
    blog.title = "Apple main blog"
    blog.metafields = [
      {
        "key" => "sponsor",
        "value" => "Shopify",
        "type" => "single_line_text_field",
        "namespace" => "global"
      }
    ]
    blog.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2023-04/blogs.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/count.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 2}), headers: {})

    response = ShopifyAPI::Blog.count(
      session: @shopify_api_config.active_session,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/count.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"id" => 241253187, "handle" => "apple-blog", "title" => "Mah Blog", "updated_at" => "2006-02-01T19:00:00-05:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "Announcing, Mystery", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/241253187"}}), headers: {})

    response = ShopifyAPI::Blog.find(
      session: @shopify_api_config.active_session,
      id: 241253187,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json?fields=id%2Ctitle")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"id" => 241253187, "title" => "Mah Blog"}}), headers: {})

    response = ShopifyAPI::Blog.find(
      session: @shopify_api_config.active_session,
      id: 241253187,
      fields: "id,title",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json?fields=id%2Ctitle")

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
  def test_8()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "blog" => hash_including({"metafields" => [{"key" => "sponsor", "value" => "Shopify", "type" => "single_line_text_field", "namespace" => "global"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"title" => "Mah Blog", "handle" => "apple-blog", "id" => 241253187, "updated_at" => "2023-07-11T18:16:38-04:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "Announcing, Mystery", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/241253187"}}), headers: {})

    response = blog = ShopifyAPI::Blog.new(session: @shopify_api_config.active_session)
    blog.id = 241253187
    blog.metafields = [
      {
        "key" => "sponsor",
        "value" => "Shopify",
        "type" => "single_line_text_field",
        "namespace" => "global"
      }
    ]
    blog.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")

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
  def test_9()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "blog" => hash_including({"title" => "IPod Updates"}) }
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"title" => "IPod Updates", "handle" => "apple-blog", "id" => 241253187, "updated_at" => "2023-07-11T18:16:26-04:00", "commentable" => "no", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "Announcing, Mystery", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/241253187"}}), headers: {})

    response = blog = ShopifyAPI::Blog.new(session: @shopify_api_config.active_session)
    blog.id = 241253187
    blog.title = "IPod Updates"
    blog.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")

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
  def test_10()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "blog" => hash_including({"title" => "IPod Updates", "handle" => "ipod-updates", "commentable" => "moderate"}) }
      )
      .to_return(status: 200, body: JSON.generate({"blog" => {"title" => "IPod Updates", "handle" => "ipod-updates", "commentable" => "moderate", "id" => 241253187, "updated_at" => "2023-07-11T18:16:01-04:00", "feedburner" => nil, "feedburner_location" => nil, "created_at" => "2023-07-11T17:47:36-04:00", "template_suffix" => nil, "tags" => "Announcing, Mystery", "admin_graphql_api_id" => "gid://shopify/OnlineStoreBlog/241253187"}}), headers: {})

    response = blog = ShopifyAPI::Blog.new(session: @shopify_api_config.active_session)
    blog.id = 241253187
    blog.title = "IPod Updates"
    blog.handle = "ipod-updates"
    blog.commentable = "moderate"
    blog.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")

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
  def test_11()
    stub_request(:delete, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({}), headers: {})

    response = ShopifyAPI::Blog.delete(
      session: @shopify_api_config.active_session,
      id: 241253187,
    )

    assert_requested(:delete, "https://test-shop.myshopify.io/admin/api/2023-04/blogs/241253187.json")

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
