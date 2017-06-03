#The following code solicits the user's name, city and state and uses
#this information to create an introduction the user might use to
#introduce himself/herself to new people


print "What's your first name"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from"
city = gets.chomp
city.capitalize!

print "Which state are you from"
state = gets.chomp
city.upcase!

puts "Your name is #{first_name} #{last_name} and you are from #{city},#{state}"
