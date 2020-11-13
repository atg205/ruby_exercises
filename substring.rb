dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

class SubstringMatch
    def searchMatch(text, dictionary)
        result = Hash.new(0)
        #Case insensitivity
        text = text.downcase.split(' ')
        text.each do |word|
            dictionary.each do |entry|
                result[entry] += 1 if word.include?(entry) 
            end
        end
        result
    end
end

s = SubstringMatch.new
p s.searchMatch("Howdy partner, sit down! How's it going?", dictionary)
