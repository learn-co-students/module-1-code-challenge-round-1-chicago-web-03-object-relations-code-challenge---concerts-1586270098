require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

 band = Band.new("Band Name", "Plantation")
band_one = Band.new("Band Name 1", "Band Hometown 1")
# band_two = Band.new("Band Name 2", "Band Hometown 2")
# band_three = Band.new("Band Name 3", "Saint John")

 venue = Venue.new("Venue Title", "Plantation")
# venue_one = Venue.new("Venue Title 1", "Venue City 1")
# venue_two = Venue.new("Venue Title 2", "Venue City 2")
# venue_three = Venue.new("Venue Title 3", "Saint John")

 concert = Concert.new("04/25/1990", band, venue)
 concert_one = Concert.new("04/25/2000", band_one, venue)
# concert_two = Concert.new("04/25/1992", band_two, venue)
# concert_three = Concert.new("04/25/1993", band_three, venue_three)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
