require "pry"

require_relative "../app/models/band"
require_relative "../app/models/concert"
require_relative "../app/models/venue"

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# -----------------------------------------------------------

# BAND

# - should initialize with a name (string) and hometown (string)
band = Band.new("band name", "Nevada")

# - should return the `Band`'s name
# - should be able to change its name after creation
# band.name("new name CAPPSSS")

# - should return the `Band`'s hometown
# - should not be able to change its hometown after creation
# band.hometown


# - returns an array of all the instances of `Band`
# Band.all

# -----------------------------------------------------------

# VENUE

# - should initialize with a title (string) and city (string)
venue = Venue.new("venue name", "Alabama")

# - should return the title of the venue
# - should be able to change its title after creation
# venue.title("NEW NAME")

# - should return the city of the venue
# - should not be able to change its city after creation
# venue.city

# - returns all the instances of `Venue`
# venue.all

# -----------------------------------------------------------

# - should initialize with a date (string), band, and venue
concert = Concert.new("02-02-2020", "band name", "venue name") 

# - should return all instances of `Concert`
# Concert.all

# -----------------------------------------------------------

# confused.
# need to look into obj relationships more
# Concert.band

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
