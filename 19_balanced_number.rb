
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def balanced_num(number)
    # Your code goes here

    #Push each number into an array, each number as an element and interger datatype
    number = number.to_s
    number = number.chars
    arr = []
    arr2 = []

    number.each do |x|
        arr.push(x.to_i)
    end


    #If the number has an odd length do this:
    if arr.length % 2 == 1

        

        #y is the index number to use when iterating through the hash
        y = (arr.length - 1) / 2

        #The sum variables will be counters that increment relative to the value of the y element.
        sum = 0
        sum2 = 0

        #This will increment the counter for the first half of the array
        arr.each_with_index do |var1, var2|
            if var2 > y
                sum += var1
            end
        end

        #This will increment the counter for the second half of the array
        arr.each_with_index do |var1, var2|
            if var2 < y
                sum2 += var1
            end
        end


        #If the counters are equal to each other the number will be balanced
        if sum == sum2
            "Balanced"
        else 
            "Not Balanced"
        end

    

    #If the number has an even length do this:
    else arr.length % 2 == 0
        sum = 0
        sum2 = 0
        y = (arr.length / 2)

        arr.each_with_index do |var1, var2|
            if var2 > y
                sum += var1
            end
        end

        #Have to use y-1 here to account for the 0 index
        arr.each_with_index do |var1, var2|
            if var2 < (y-1)
                sum2 += var1
            end
        end

        if sum == sum2
            "Balanced"
        else 
            "Not Balanced"
        end

    end

end


