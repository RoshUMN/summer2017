=begin
The following script allows the user to add, update, display or delete
objects from a hash. The example used here are Movies and its associated
ratings. This program highlights CRUD.
=end

movies = {
  Moana:5,
  Inception:5,
  Baywatch:3
}

puts 'Enter "add" or "delete" or "display" or "update"'
choice = gets.chomp

case choice

when "add"
  puts "Please enter the movie title: "
  title = gets.chomp
  if movies[title.intern] == nil
    puts "Please enter the rating of that movie: "
    rating = gets.chomp
    movies[title.intern] = rating.to_i
    puts "The movie #{title} has been added!"
  else
    puts "That movie is already in the list!"
  end

when "update"
  puts "Please enter the movie title: "
  title = gets.chomp
  if movies[title.to_sym] == nil
    puts "That movie is not in the list!"
  else
    puts "Please enter the updated rating: "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "The rating for #{title} has been updated!"
  end

when "display"
  movies.each do |title,rating|
    puts "#{title}: #{rating}"
  end

when "delete"
  puts "Please enter the movie title: "
  title = gets.chomp
  if movies[title.intern] == nil
    puts "That movie is not in the list!"
  else
    movies.delete(title.intern)
    puts "The movie #{title} has been deleted!"
  end

else
  puts "Error!"
end
