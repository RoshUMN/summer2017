=begin
The following script asks the user to input a text. It thens
go through the text and returns a histogram of the words used in
the text. That is, it gives the count of any word that appears in
the text
=end

puts "Please enter a text"      # Asks user for input text
text = gets.chomp

words = text.split              # Splits the text into an array of words

frequencies = Hash.new(0)       # Creates a hash with value defaulted to 0

words.each do |word|            # Iterates through each word in the array words

  frequencies[word] += 1        # Increments the value associated with key word by 1. Since the hash value is
                                # defaulted to 0, when the key is accessed in the hash, even though it doesn't
                                # exist yet, it returns 0. So we increment this by 1
end

frequencies = frequencies.sort_by do |word,count| # Sorts the list by count. Default sorting order is ascending
  count
end
frequencies.reverse!            # Reverses to give a descending list

frequencies.each do|word,count| # Iterates through the hash
  puts word + " " + count.to_s  # Converts the number to string for concatenating
end
