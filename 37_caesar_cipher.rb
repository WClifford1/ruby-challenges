# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
# 
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example: 
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher

  def initialize(shift)
    @shift = shift
    # your code here
  end


  def encode(string)


    sum = 0
    string = string.upcase.chars
    newarr = []
    newhash = {}
    newhash2 = {}


    #Create a hash of the alphabet with each letter as a key numbered from 0 to 25
    ('A'..'Z').each do |x|
      newhash[x] = sum
      sum +=1
    end


    #Create a hash of the alphabet with each letter as a key numbered from 0 to 25 + shift
    sum = @shift
    ('A'..'Z').each do |x|
      newhash2[x] = sum
      sum +=1
      if sum > 25
        sum = 0
      end
    end


    #Put the keys of the first hash to have the values of the second
    newhash.each do |x,y|
      newhash2.each do |a,b|
        if y == b
          newhash2[a] = x
        end
      end
    end


    #Iterate through the input string. If each letter corresponds to the key of
    #The hash, change it to the value of the hash
    string.each do |x|
      newhash2.each do |a,b|
        if x == a
          newarr << b
        end
      end
    end

    #Join the result and return it
    return newarr.join

  end


  
  def decode(string)


    sum = 25
    string = string.upcase.chars
    newhash = {}
    newhash2 = {}
    newarr = []

    #Create a hash of the alphabet with each letter as a key numbered from 0 to 25 + shift
    ('A'..'Z').each do |x|
      newhash[x] = sum
      sum -=1
    end


    #Create a hash of the alphabet with each letter as a key numbered from 0 to 25 + shift
    sum = @shift - 1
    ('A'..'Z').each do |x|
      newhash2[x] = sum
      sum -=1
      if sum < 0
        sum = 25
      end
    end


    #Put the keys of the first hash to have the values of the second
    newhash.each do |x,y|
      newhash2.each do |a,b|
        if y == b
          newhash2[a] = x
        end
      end
    end


    #Iterate through the input string. If each letter corresponds to the key of
    #The hash, change it to the value of the hash
    string.each do |x|
      newhash2.each do |a,b|
        if x == a
          newarr << b
        end
      end
    end


    #Join the result and return it
    return newarr.join

  end
end

