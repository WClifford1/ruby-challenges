# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels (string)



le = "AaEeIiOoUu"
le = le.chars
vowels = []

string = string.chars

string.each do |x|

if le.include? x
  vowels.push(x)
end
end

return vowels


end
