# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb

system('clear')

# Your code here

def changeLetters

        #Gets user input
        puts "Enter your input"
        ans = gets.chomp

        #Replaces uppper and lowercase s with th
        puts ans.gsub("s","th")
        puts ans.gsub("S", "TH")

end

changeLetters