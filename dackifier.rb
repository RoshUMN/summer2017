# This script replaces all instances of the letter s
# in a string with the characters "th"
# to show how it may sound differently

print "Enter a string"
user_input = gets.chomp           # Solicits a string from the user
user_input.downcase!              # converts all letters to lowercase to make it easier to replace s

if user_input.include?"s"         # Checks if the string contains "s"
  user_input.gsub!(/s/,"th")      # Uses global substition to replace all "s" with a "th"
end

puts "#{user_input}"              # Prints the result to the console
