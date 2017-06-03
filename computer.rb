=begin
This code creates a class "Comptuer" that generates
virtual computer instances. It keeps track of how many
users have been created and at what time"
=end

class computer
  @@users = {}

  def initialize(username,password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password        # Updates the "users" hash for every
  end                                   # user created, using the username as
                                        # the key and the password as the value

  def create(filename)
    time = Time.now
    @files[filename] = time             # Updates the "files" hash with the timestamp for when the file was created
    puts "The file #{filename} was created at #{time}"
  end

  def Computer.get_users                # This method returns a list of all the users
    return @@users
  end
end
