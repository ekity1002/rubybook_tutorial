require "minitest/autorun"
require_relative "../lib/convert_length"

class TestConvertLength < Minitest::Test
  def test_convert_length
    puts UNITS
    assert_equal 39.37, convert_length(1, unit_from: :m, unit_to: :in)
    assert_equal 0.38, convert_length(15, unit_from: :in, unit_to: :m)
  end
end
