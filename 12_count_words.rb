# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2

def solution

    newArray = []
    myHash = Hash.new(0)

    string = gets.chomp
    string.downcase!
    
    newArray = string.split

    newArray.each do |word|
        myHash[word] += 1
    end

    system ('clear')

    myHash.each do |x,y|
        puts "#{x} #{y}"
    end

end

solution



