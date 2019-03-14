# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Your code here

def hackerman

    system('clear')

    #Asks for the first input and converts it to downcase
    puts "Enter your first input"
    firstString = gets.chomp
    firstString.downcase!


    #Asks for the second input and converts it to downcase
    puts "Enter your second input"
    secondString = gets.chomp
    secondString.downcase!


    #Converts the first input to an array of words
    arr1 = firstString.split


    #Loops through the first array, searching for words from the second string.
    #Replaces those elements with "HIDDEN"
    arr1.each do |x|
        if secondString.include? x 
            i = arr1.index(x)
            arr1[i] = "HIDDEN"
        end
    end


    #Prints the result
    puts "#{arr1}"

end

hackerman



# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.