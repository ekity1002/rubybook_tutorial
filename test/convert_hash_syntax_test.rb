require "minitest/autorun"
require_relative "../lib/convert_hash_syntax"

class TestCovertHashSyntax < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~EOS
    {
        :name => "hoge",
        :age =>20,
        :gender =>  "male"
    }
    EOS
    expected = <<~EOS
    {
        name: "hoge",
        age: 20,
        gender: "male"
    }
    EOS
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
