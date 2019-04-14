require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
    def testPalindrome
    assert_true(palindrome("Mom"))
    assert_false(palindrome("hellO"))
    assert_false(palindrome(""))
  end
end


