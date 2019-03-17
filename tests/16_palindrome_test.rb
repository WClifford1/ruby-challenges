require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
    def testPalindrome
    assert_equal(true, palindrome("mom"))
    assert_equal(false, palindrome("hello"))
  end
end


