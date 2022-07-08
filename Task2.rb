puts "Enter a sentence:"
givensentence = gets.chomp
words = givensentence.split
newsentence = ""
for word in words
    reverseword = word.downcase.reverse
    newsentence.concat(reverseword.capitalize() + " ")
end
puts newsentence