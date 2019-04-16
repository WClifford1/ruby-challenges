# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true


def interesting_number(number)


    number = number.to_s.chars.map(&:to_i)
    interesting_number = true
    index = 0


    #If the number length is less than 3 the result will be false
    if number.length < 3
        interesting_number = false


    #If the number length is greater than 3 do this:
    elsif number.length >= 3


        #Ascending
        if number[1] == (number[0] + 1)

            number.each_with_index do |x,y|

                if index < (number.length - 1)

                    if x < 9 and x + 1 == number[y + 1]
                            index +=1

                    elsif x == 9 and number[y + 1] == 0
                            index +=1

                    else
                        interesting_number = false
                        index +=1
                    end
                end
            end
        end


        #Descending
        if number[1] == (number[0] - 1)

            number.each_with_index do |x,y|

                if index < (number.length - 1)

                    if x - 1 == number[y + 1]
                            index +=1

                    else
                        interesting_number = false
                        index +=1
                    end
                end
            end
        end
    end


    return interesting_number

    
end