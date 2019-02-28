system('clear')

class Part1
    attr_accessor :commuteTime
    def initialize
        @commuteTime = commuteTime
    end

    def output
        @commuteTime = 15
        return "I rode my motorbike into work and parked on one of the sidestreets nearby, it took me no more than #{commuteTime} minutes to get to class."
    end
end

commute = Part1.new
puts commute.output
puts
puts "I have commented out the second and third parts of the question in the class below. Please uncomment them to read, thank you"
puts



=begin
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
        puts "Which drink do you want?"
        puts
        drink = gets.chomp
        drink.downcase!
            
            #Add if / else conditions for what the user types in.
            #Asks the user what drink they want, how many, adds this to the total
            if
                drink.include? "cocktail"
                puts "How many cocktails do you want?"
                puts
                @cocktailNumber += gets.to_i
            
            elsif
                drink.include? "water"
                puts "How many waters do you want?"
                puts
                @waterNumber += gets.to_i
            
            elsif
                drink.include? "beer"
                puts "How many beers do you want?"
                puts
                @beerNumber += gets.to_i
            
            else 
                drink != "water" or "beer" or "cocktail"
                puts "We don't sell that, we only sell cocktails, beers, or waters"
                puts
            end
    
    puts
    return "You have #{@cocktailNumber} cocktails, #{@waterNumber} waters and #{@beerNumber} beers to make"
    
    end

#Create a method which calculates the profit on the number of drinks sold
#From the question we know cocktails make $8 profit, waters $5.85 and beers $9
#The number of waters has to be changed to a float and made to have 2 decimal places
    def profit
        #The number of waters has to be changed to a float and made to have 2 decimal places
        @waterNumber = @waterNumber.to_f
        puts
        return "You have made $#{@cocktailNumber * 8} profit on cocktails, $#{'%.2f' % (@waterNumber * 5.85)} profit on waters, and $#{@beerNumber * 9} profit on beers"
    end

end

#Create an instance of the class and run the methods
part2 = Part2.new
puts part2.customerOrder
puts part2.profit
=end