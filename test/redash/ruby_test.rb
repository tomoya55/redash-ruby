require "test_helper"

class Redash::RubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Redash::VERSION
  end
end
