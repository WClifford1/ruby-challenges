# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
    # your code goes here

    word2 = (word[0]..word[-1]).to_a

    word2 = word2 - word

    return word2.join

end




