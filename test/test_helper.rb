$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "redash"
require "pry"

require "minitest/autorun"
require "minitest/power_assert"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

require "vcr"
VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/vcr_cassettes"
  config.hook_into :webmock
end

Redash.configure do |config|
  config.host = ENV["REDASH_HOSTNAME"]
  config.api_token = ENV["REDASH_API_TOKEN"]
end
