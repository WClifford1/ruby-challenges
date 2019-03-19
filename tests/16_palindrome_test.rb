require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
    def testPalindrome
    assert_equal(true, palindrome("Mom"))
    assert_equal(false, palindrome("hellO"))
  end
end


