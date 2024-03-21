dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  substring_count = {}
  dictionary.each_with_index do |substring, index|
    if words.downcase.include?(substring)
      if substring_count.dig(substring) == nil # Create key is nonexistent
        # Sets substring count to the number of occurences of <substring>
        substring_count[substring] = words.downcase.scan(substring).count
      else 
        substring_count[substring] += 1        # Update key if existent
      end
    end
  end
  return substring_count
end