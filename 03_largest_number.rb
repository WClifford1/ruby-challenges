# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?
=begin
def largest_number (number_1, number_2)
  # Your code here
end

largest_number(100,50)
=end
system('clear')
puts "Enter your first number"
puts

num1 = gets.to_i
if !num1.is_a(Numeric)
  puts "Please enter a number"
end
puts
puts "Enter your second number"
puts
num2 = gets.to_i
puts


if num1 > num2
  puts
  puts "#{num1} is larger"
  
elsif 
  num1 == num2
  puts
  puts "They are the same"
  
else num1 < num2
  puts
  puts "#{num2} is larger"


end



