# Group by owners
# Implement a group_by_owners function that:
# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.

# Example: 
# group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}
# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

# Have a look at the tests and take note of the different expect assertions used.
# Using these assertions allows testing without expecting a particular order of the files
# in the lists for each owner.

def group_by_owners(input)

    newhash = {}

    #Iterate through input.values.uniq - which is an array
    #Put these elements into a hash as keys with empty arrays as their values
    input.values.uniq.each do |x|
        newhash[x] = []
    end

    #If the value of the original hash matches the key of the new hash
    #Push the key of the original hash into the empty array value of the new hash
    input.each do |x,y|
        newhash.each do |a,b|
            if y == a
                b << x
            end
        end
    end

    return newhash

end