require "faraday"

module Redash
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
    end

    def get(uri, params = {})
      connection.get(uri, params)
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
        builder.adapter Faraday.default_adapter
      end
    end
  end
end
