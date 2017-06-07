require "json"

module Redash
  class Response
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def method_missing(method, *args)
      if response.respond_to?(method)
        response.public_send(method, *args)
      else
        super
      end
    end

    def json
      @_json ||= JSON.parse(response.body)
    end
  end
end
