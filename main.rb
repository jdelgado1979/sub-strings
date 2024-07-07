dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(substr, dictionary)
  keys = []
  values = []

  dictionary.each do |string|
    
    substr_downcased = substr.downcase 
    
    
    if substr_downcased.include?(string)
    count = substr_downcased.scan(/#{Regexp.escape(string)}/)
      
    keys.push(string)
    values.push(count.length)
    end
  end

  hash = {}
  keys.each_with_index do |key, index|
    hash[key] = values[index]
  end

  hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

