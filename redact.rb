=begin
The following code takes a string from the user and a word from the user.
The script replaces all instances of that word in the string with the word
"REDACTED". This could be used for example when removing a name from a report
to keep his/her identity safe
=end

puts "Enter the string to search through: "    # Gets the string to search through from the user
text = gets.chomp                              # Sets that string to variable "text"
text.downcase!                                 # Converts all words to lowercase for easier comparison

puts "Enter the word to be redacted: "         # Gets the word to redact from the user
redact = gets.chomp                            # Assigns the word to the variable "redact"
redact.downcase!                               # Converts the word to lowercase for easier comparison

words = text.split(" ")                        # Splits "text" into an array using space as the delimeter with each word being an element in the array

words.each do |word|                           # Sets up the loop. Does the following action for each element in words
  if word == redact                            # If the element is the same as the word to be redacted, print "REDACTED" in its place
    print "REDACTED "
  else
    print "#{word}"                            # Prints the element as is
  end                                          # Ends the if statement
end                                            # Ends the each iterator
