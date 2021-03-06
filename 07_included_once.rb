# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#


def included_once (haystack, needle)

list = Hash.new(0)
haystack.each do |item|
list[item] += 1
end

list.each do |k, v|
  if list[k] > 1
    list.delete(k)
  end
end

haystack = list.keys

return haystack.include? needle

end

