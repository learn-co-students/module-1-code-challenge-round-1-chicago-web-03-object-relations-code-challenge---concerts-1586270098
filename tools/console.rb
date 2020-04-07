require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Band Instances
lin_sisters = Band.new("Lin Sisters", "STL")
coldplay = Band.new("Coldplay", "London")


# Venue Instances
sf = Venue.new("Bougie", "SF")
chicago = Venue.new("ayeeee", "Chicago")

# Concert Instances
concert_1 = Concert.new("2020-04-05", coldplay, sf)
concert_2 = Concert.new("2020-03-02", coldplay, chicago)
concert_3 = Concert.new("2020-02-05", coldplay, sf)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
