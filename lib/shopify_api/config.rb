# typed: strict
# frozen_string_literal: true

module ShopifyAPI
  class Config
    extend T::Sig

    sig { returns(String) }
    attr_accessor :api_key, :api_secret_key, :api_version

    sig { returns(T::Boolean) }
    attr_accessor :is_embedded, :is_private

    sig { returns(Auth::AuthScopes) }
    attr_accessor :scope

    sig { returns(::Logger) }
    attr_accessor :logger

    sig { returns(Symbol) }
    attr_accessor :log_level

    sig { returns(T.nilable(String)) }
    attr_accessor :private_shop, :user_agent_prefix, :old_api_secret_key, :host

    sig do
      params(
        api_key: String,
        api_secret_key: String,
        scope: T.any(T::Array[String], String),
        is_private: T::Boolean,
        is_embedded: T::Boolean,
        api_version: String,
        log_level: T.any(String, Symbol),
        logger: ::Logger,
        host_name: T.nilable(String),
        host: T.nilable(String),
        private_shop: T.nilable(String),
        user_agent_prefix: T.nilable(String),
        old_api_secret_key: T.nilable(String),
      ).void
    end
    def initialize(
      api_key:,
      api_secret_key:,
      scope:,
      is_private:,
      is_embedded:,
      api_version: LATEST_SUPPORTED_ADMIN_VERSION,
      log_level: :info,
      logger: ::Logger.new($stdout),
      host_name: nil,
      host: ENV["HOST"] || "https://#{host_name}",
      private_shop: nil,
      user_agent_prefix: nil,
      old_api_secret_key: nil
    )
      unless ShopifyAPI::AdminVersions::SUPPORTED_ADMIN_VERSIONS.include?(api_version)
        raise Errors::UnsupportedVersionError,
          "Invalid version #{api_version}, supported versions: #{ShopifyAPI::AdminVersions::SUPPORTED_ADMIN_VERSIONS}"
      end
      @api_key = api_key
      @api_secret_key = api_secret_key
      @api_version = api_version
      @host = T.let(host, T.nilable(String))
      @is_private = is_private
      @scope = T.let(Auth::AuthScopes.new(scope), Auth::AuthScopes)
      @is_embedded = is_embedded
      @logger = logger
      @private_shop = private_shop
      @user_agent_prefix = user_agent_prefix
      @old_api_secret_key = old_api_secret_key
      @log_level = T.let(
        if valid_log_level?(log_level)
          log_level.to_sym
        else
          :info
        end,
        Symbol,
      )
      @active_session = T.let(Concurrent::ThreadLocalVar.new { nil }, T.nilable(Concurrent::ThreadLocalVar))
      @notified_missing_resources_folder = T.let({}, T::Hash[String, T::Boolean])

      load_rest_resources
    end

    sig do
      params(
        api_key: T.nilable(String),
        api_secret_key: T.nilable(String),
        api_version: T.nilable(String),
        host: T.nilable(String),
        scope: T.nilable(T.any(T::Array[String], String)),
        is_private: T.nilable(T::Boolean),
        is_embedded: T.nilable(T::Boolean),
        logger: T.nilable(::Logger),
        private_shop: T.nilable(String),
        user_agent_prefix: T.nilable(String),
        old_api_secret_key: T.nilable(String),
      ).void
    end
    def modify(
      api_key: nil,
      api_secret_key: nil,
      api_version: nil,
      host: nil,
      scope: nil,
      is_private: nil,
      is_embedded: nil,
      logger: nil,
      private_shop: "do-not-set",
      user_agent_prefix: nil,
      old_api_secret_key: nil
    )
      @api_key = api_key if api_key
      @api_secret_key = api_secret_key if api_secret_key
      @api_version = api_version if api_version
      @host = host if host
      @scope = Auth::AuthScopes.new(scope) if scope
      @is_private = !is_private.nil? if is_private
      @is_embedded = !is_embedded.nil? if is_embedded
      @logger = logger if logger
      @private_shop = private_shop if private_shop != "do-not-set"
      @user_agent_prefix = user_agent_prefix if user_agent_prefix
      @old_api_secret_key = old_api_secret_key if old_api_secret_key
      @log_level = :off
      load_rest_resources
    end

    sig { void }
    def load_rest_resources
      # Unload any previous instances - mostly useful for tests where we need to reset the version
      @rest_resource_loader&.setup
      @rest_resource_loader&.unload

      # No resources for the unstable version
      return if api_version == "unstable"

      version_folder_name = api_version.gsub("-", "_")
      path = "#{__dir__}/rest/resources/#{version_folder_name}"

      unless Dir.exist?(path)
        unless @notified_missing_resources_folder.key?(api_version)
          @logger.warn("Cannot autoload REST resources for API version '#{version_folder_name}', folder is missing")
          @notified_missing_resources_folder[api_version] = true
        end

        return
      end

      @rest_resource_loader = T.let(Zeitwerk::Loader.new, T.nilable(Zeitwerk::Loader))
      T.must(@rest_resource_loader).enable_reloading
      T.must(@rest_resource_loader).ignore("#{__dir__}/rest/resources")
      T.must(@rest_resource_loader).setup
      T.must(@rest_resource_loader).push_dir(path, namespace: ShopifyAPI)
      T.must(@rest_resource_loader).reload
    end

    sig { returns(T::Boolean) }
    def private?
      @is_private
    end

    sig { returns(T::Boolean) }
    def embedded?
      @is_embedded
    end

    sig { returns(T::Boolean) }
    def setup?
      [api_key, api_secret_key, T.must(host)].none?(&:empty?)
    end

    sig { returns(T.nilable(Auth::Session)) }
    def active_session
      @active_session&.value
    end

    sig { params(session: T.nilable(Auth::Session)).void }
    def activate_session(session)
      T.must(@active_session).value = session
    end

    sig { void }
    def deactivate_session
      T.must(@active_session).value = nil
    end

    sig { returns(String) }
    def host_scheme
      T.must(URI.parse(T.must(host)).scheme)
    end

    sig { returns(String) }
    def host_name
      T.must(URI(T.must(host)).host)
    end

    private

    sig { params(log_level: T.any(Symbol, String)).returns(T::Boolean) }
    def valid_log_level?(log_level)
      return true if ::ShopifyAPI::Logger.levels.include?(log_level.to_sym)

      ShopifyAPI::Logger.warn("#{log_level} is not a valid log_level. "\
        "Valid options are #{::ShopifyAPI::Logger.levels.join(", ")}", self)

      false
    end
  end
end
