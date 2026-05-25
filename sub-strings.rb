# frozen_string_literal: true

#Implement a method #
# that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  hashcheck = Hash.new(0)
  checker = word.downcase

  dictionary.each do |phrase|
    next if phrase.empty?
    count = checker.scan(phrase).length
    hashcheck[phrase] = count if count > 0
  end
  hashcheck
end

result = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result