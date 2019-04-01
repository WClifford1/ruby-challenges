require 'test/unit'
require_relative '../26_max_min'

class NewTest < Test::Unit::TestCase
  def testone
    assert_equal(max_min("5 2 9 8 23 1"), "23 1")
    assert_equal(max_min("15 4 4 38 -9"), "38 -9")
    assert_equal(max_min("-100 0 0 0 3"), "3 -100")
    assert_equal(max_min("2.3 4.5"), "4.5 2.3")
    assert_equal(max_min("2.3"), "2.3")
    assert_equal(max_min(""), "")
    end
end