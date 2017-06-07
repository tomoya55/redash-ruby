require "redash/client"
require "redash/configuration"

module Redash
  module ClassMethods
    def client
      @_client ||= Client.new(config)
    end

    def client=(new_client)
      @_client = new_client
    end

    def config
      @_config ||= Configuration.new
    end

    def configure
      yield config
    end
  end

  extend ClassMethods
end
