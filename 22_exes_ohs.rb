# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
    #Assign two empty arrays which will be used later
    arr = []
    arr2 = []
    #Turn input into a sorted array
    input = input.downcase.chars.sort
    #Get the number of unique charactres in the array
    input2 = input.uniq
    #Assign variables to the first two elements in the array
    ex = input2[0]
    oh = input2[1]
    #If the number of unique characters in the array is 2 do this:
    if input2.length == 2
        #Iterate through the array, take elements with the values of ex and oh and push them to seperate arrays
        input.each do |x|
            if x == ex
                arr.push(x)
            elsif x == oh
                arr2.push(x)
            end
        end
        #The only way true can be returned is if the lengths of the new arrays are equal
        arr.length == arr2.length ? true : false
        
    else
        return false
    end
end