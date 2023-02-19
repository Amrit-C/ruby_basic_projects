dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
    string = string.split(/\W+/)

    substring_hash = Hash.new(0)
    counter = 0

    string.each do |word| 
        dictionary.each do |diction|
            if word.downcase.include?(diction)
                substring_hash[diction] += 1 
            end
        end
    end

    return substring_hash
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)