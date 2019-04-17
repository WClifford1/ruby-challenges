# Digital root

# The digital root (also repeated digital sum) of a 
# non-negative integer is the (single digit) value 
# obtained by an iterative process of summing digits, 
# on each iteration using the result from the previous 
# iteration to compute a digit sum. 
# The process continues until a single-digit number is reached.

# For example, the digital root of 65,536 is 7, 
# because 6 + 5 + 5 + 3 + 6 = 25 and 2 + 5 = 7.

# Your code should return the digital root of any positive
# number passed in. 
# You can assume the argument given is an integer.
# Return -1 if any negative argument is provided.

# def digital_root(number)
#     # Your code goes here
# end


def digital_root(number)

    #Set sum to 0, this will be the counter later
    #Take number and turn it to an array where each digit is an element
    sum = 0
    number = number.to_s.chars.map(&:to_i)

    #The process of mapping number to an array will make the first element equal to 0
    #if it is a negative number. In that case the method will return -1 and stop.
    if number[0] == 0
        return -1
   

    #If number is a positive integer do this:
    else
        #Sum will be the digital root. So do this loop until sum is greater than 0
        #And has a digit count of 1
        until sum > 0 and sum.digits.count == 1

            
            number.each do |x|
                sum += x
            end

            #Reset number to the value of sum and change it back to an array
            number = sum
            number = number.to_s.chars.map(&:to_i)
            #Reset sum to 0
            sum = 0

            #Iterate through each element in number and add it to sum
            number.each do |x|
                sum += x
            end
        end

        #Sum should now be greater than 0 and have a digit count of 1, return sum.
        return sum

    end
end