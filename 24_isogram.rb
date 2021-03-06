# Isogram
# Difficulty: medium

## An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

def isogram?(input)
    
    answer = true
    input = input.downcase.chars
    
    input.each do |x|
        
        if input.count(x) > 1
            answer = false
        end
    end
    
    return answer

    # input.each { |x| if input.count(x) > 1 ? answer = true : answer = false }
    # return answer
    
end
puts isogram?("helol") #should return false
puts isogram?("scary") #should return true