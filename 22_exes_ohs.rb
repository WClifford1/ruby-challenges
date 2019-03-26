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

# Your code goes here

arr = []
arr2 = []

string = input
string = string.downcase.chars.sort

string2 = string.uniq

ex = string2[0]
oh = string2[1]

if string2.length == 2
    
    string.each do |x|
        if x == ex
            arr.push(x)
        end
    end
    
    string.each do |x|
        if x == oh
            arr2.push(x)
        end
    end
    

    arr.length == arr2.length ? true : false

else
    return false
    
end
end





# divide = string.length / 2
# arr = []
# arr2 = []
# p divide
# sum = 0



# string.each_with_index do |x,y|
#     if y < divide
#         arr.push(x)
#     elsif y >= divide
#         arr2.push(x)
#     end
# end

# p arr
# p arr2

# if string.length % 2 == 0 && string.uniq.length == 2

# puts "true"
# p string
# else string.length % 2 == 1

# puts "false"
# p string
# end
# if string.count == 2

# return true


# else return false

# end

# end