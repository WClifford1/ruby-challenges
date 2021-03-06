
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

    #Push each interger in number as an element in an array. Reassign as number.
    number = number.to_s.chars.map(&:to_i)
    
    #The sum variables will be used as counters later on
    sum = sum2 = 0
   
    #iterate each element and it's respective index
    number.each_with_index do |x, y|

        #If it is an odd number and the first half OR if it is an even number and the first half:
        if number.length % 2 == 1 && y > (number.length - 1) / 2 || number.length % 2 == 0 && y > number.length / 2
            sum += x #Add the value of the elements to the fist counter
        
            #If it is an odd number and the second half OR if it is an even number and the first half:
        elsif number.length % 2 == 1 && y < (number.length - 1) / 2 || number.length % 2 == 0 && y < number.length / 2 -1
            sum2 += x #Add the value of the elements to the seconds
        end
    end

    #A simple ternery for the return
    sum == sum2 ? "Balanced" : "Not Balanced"

end