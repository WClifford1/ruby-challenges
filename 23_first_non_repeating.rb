## Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to 
# validate and control user input.

# Write a method that will find the first non-repeated 
# character in a String. 
# Return false if only repeats are found. 

# *Try writing this by hand first*. 
# Confusing methods like this can become a lot more simple after 
# they are written by hand. 


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power, 
# as it would have to go over every character. Can you return on the first 
# non-repeat, without checking every other letter?

def first_non_repeating(input)
    
    # Put the input string in an array of characters
    input = input.chars
    
    # Iterate through the array. If the occurences of the element is greater than one then delete it.
    input.each do |x|
        if input.count(x) > 1
            input.delete(x)
        end
    end 

    # If the array's length is greater than or equal to 1 return the first element
    if input.length >= 1
        return input[0]
        
        # If the array's length is equal to 0 then return false.
    else return false
        
    end
end

# Test your code here
puts first_non_repeating("aaaabbbcccdeeegzh")
puts first_non_repeating("wwwhhhggge")
puts first_non_repeating("wwwhhhggg")