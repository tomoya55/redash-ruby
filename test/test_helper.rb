$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "redash"

require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new
