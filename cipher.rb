def caser_cipher(string, number)
    factored = Array.new()
    string.each_char do |char| 
        if (char.ord > 64 and char.ord < 91)
            factored.push( (char.ord + number).chr)

        elsif (char.ord > 96 and char.ord < 122)
            factored.push ( (char.ord + number).chr)

        else
            factored.push( (char.ord).chr)
        end
    end
    factored.join
end

puts caser_cipher("Hey!", -1)