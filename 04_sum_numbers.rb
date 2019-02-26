# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

#defines the method
def sum_numbers (numbers)

#starts sum_numbers at 0
sum_numbers = 0

#goes through each element in the array, gets the number and adds it to sum_numbers
numbers.each do |element|
  
  sum_numbers = element + sum_numbers
  
end

#returns the data for testing
return sum_numbers

end

# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
