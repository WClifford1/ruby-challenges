# Definition
# #
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
#
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb
system('clear')
class Definition

    attr_accessor :word, :definition, :dictionary, :dictionary2

def initialize
    @dictionary = dictionary
    @dictionary2 = dictionary2
    @word = word
    @definition = @definition
end

def add_word(word, definition)

    dictionary = Hash.new
    dictionary2 = Hash.new
    dictionary["#{word}"] = "#{definition}"
    dictionary2.merge(dictionary)
    return puts dictionary2

end    


end

definition = Definition.new
puts definition.add_word("Ruby", "a red, precious stone")