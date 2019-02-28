system('clear')
=begin
#----PART 1----

#I created a class in order to practice utilizing classes and methods
class Part1
    attr_reader :commuteTime
    def initialize
        @commuteTime = commuteTime
    end

    def output
        @commuteTime = 15
        return "I rode my motorbike into work and parked on one of the sidestreets nearby, it took me about #{commuteTime} minutes to get to class.\n"
    end
end

commute = Part1.new
puts commute.output

=end


#Define the program as a class
class Part2

#Add attr_accessor attribute to the variables so that they can be read and changed
attr_accessor :waterNumber, :beerNumber, :cocktailNumber

#Initialize the variables used in the program as instance varaibles
    def initialize
        @waterNumber = waterNumber
        @beerNumber = beerNumber
        @cocktailNumber = cocktailNumber
    end

#Define a method for getting the customer's order and modifying the drink order backlog
    def customerOrder
        @cocktailNumber = 3
        @waterNumber = 2
        @beerNumber = 6
        puts "What type of drink would you like? We sell cocktails, beers, and water.\n\n"
        drink = gets.chomp
        drink.downcase!
        
        #Asks the user what drink they want, how many, adds this to the total
        #Add if / else conditions for what the user types in.
        

            #If the 
            if
                drink.include? "cocktail"
                system('clear')
                puts "How many cocktails do you want?\n\n"
                @cocktailNumber += gets.to_i
                system('clear')
            
            elsif
                drink.include? "water"
                system('clear')
                puts "How many waters do you want?\n\n"
                @waterNumber += gets.to_i
                system('clear')
            
            elsif
                drink.include? "beer"
                system('clear')
                puts "How many beers do you want?\n\n"
                @beerNumber += gets.to_i
                system('clear')
            
            else 
                drink != "water" or "beer" or "cocktail"
                system('clear')
                puts "We don't sell that, we only sell cocktails, beers, or waters.\n\n"
            end
    
    return "You have #{@cocktailNumber} cocktails, #{@waterNumber} waters and #{@beerNumber} beers to make."
    
    end

#Create a method which calculates the profit on the number of drinks sold
#From the question we know cocktails make $8 profit, waters $5.85 and beers $9
#The number of waters has to be changed to a float and made to have 2 decimal places
    def profit
        #The number of waters has to be changed to a float and made to have 2 decimal places
        @waterNumber = @waterNumber.to_f
        puts
        return "So far you have made $#{@cocktailNumber * 8} profit on cocktails, $#{'%.2f' % (@waterNumber * 5.85)} profit on waters, and $#{@beerNumber * 9} profit on beers.\n\n"
    end

end

#Create an instance of the class and run the methods
part2 = Part2.new
puts part2.customerOrder
puts part2.profit
