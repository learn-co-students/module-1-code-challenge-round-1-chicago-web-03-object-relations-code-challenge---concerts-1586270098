require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

p "This is the Band Class "

p "---------"

p "Initialization "

p the_beatles = Band.new("The Beatles", "London")
p the_killers = Band.new("The Killers", "Chicago")
p chicago = Band.new("Chicago", "Kentucky")

p "Name"

p the_beatles.name 
p the_killers.name
p chicago.name

p "Hometown"

p the_beatles.hometown
p the_killers.hometown
p chicago.hometown

p "Self.all"

p Band.all

p "----------------------"

p "This is Venue Class"

p "Initialization"

p house_of_blues = Venue.new("House of Blues", "Chicago")
p the_palace = Venue.new("The Palace", "Las Vegas")
p madison_square_garden = Venue.new("Madison Square Garden", "New York")

p "Title"

p house_of_blues.title
p the_palace.title
p madison_square_garden.title

p "City"

p house_of_blues.city
p the_palace.city
p madison_square_garden.city

p "Self.all"

p Venue.all

p "-------------------"

p "Concerts"

p june_15_2020 = Concert.new("June 15, 2020", "The Beatles", "Madison Square Garden")
p july_10_2020 = Concert.new("July 10, 2020", "The Killers", "House of Blues")
p august_09_2020 = Concert.new("August 09, 2020", "Chicago", "The Palace")

p "self.all"

p Concert.all

p "band method"

p the_killers.concerts.band
p the_beatles.band
p chicago.band

p "----------------------"

#binding.pry
0 #leave this here to ensure binding.pry isn't the last line
