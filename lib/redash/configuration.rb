require "faraday"

module Redash
  class Configuration
    attr_accessor :host
    attr_accessor :api_token
  end
end
