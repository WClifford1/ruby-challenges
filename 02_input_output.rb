# Write a program that accepts someone's name and age, and responds
# as shown here:

##Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"
system('clear')
puts "Name?"
name = gets.chomp
system('clear')
puts "Hi #{name}! How old are you?"
age = gets.to_i

if
age > 100
system('clear')
puts "Congratulations #{name}! You are over 100 years old!"
puts 
   
elsif
    age == 100
system('clear')
puts "Congratulations #{name}! You are 100 years old!" 
puts

else    
centarian = 100 - age
system('clear')

puts "Wow! You are #{age} years old. Congratulations!"
puts
puts "#{name}, in #{centarian} years you will be 100 years old!"
puts
end
