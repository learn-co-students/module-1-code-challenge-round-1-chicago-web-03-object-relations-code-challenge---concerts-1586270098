require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#band instance  name, hometown
b1 = Band.new("Yann", "Shanghai")
b2 = Band.new("ABC", "Chicago")



#V instance  title, city
v1 = Venue.new("Title1", "Aurora")
v2 = Venue.new("Title2", "Naperville")

#p Band.all
#p Venue.all
binding.pry

#C instance





0 #leave this here to ensure binding.pry isn't the last line
