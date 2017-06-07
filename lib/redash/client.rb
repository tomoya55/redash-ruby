require "faraday"
require "faraday_middleware"
require_relative "./response"

module Redash
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
    end

    def get(uri, params = {})
      response = connection.get(uri, params)
      Response.new(response)
    end

    def post(uri, params = {})
      response = connection.post(uri, params)
      Response.new(response)
    end

    def connection
      @_connection ||= build_connection
    end

    private

    def build_connection
      Faraday.new(url: config.host) do |builder|
        if config.api_token
          builder.authorization("Key", config.api_token)
        end
        builder.request :json
        builder.adapter Faraday.default_adapter
      end
    end
  end
end
