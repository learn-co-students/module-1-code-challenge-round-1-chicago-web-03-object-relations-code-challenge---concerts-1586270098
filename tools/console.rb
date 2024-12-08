require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Creation of Band Object Instances:
puts "\nCreation of Band Object Instances:"
p imagine_dragons = Band.new("Imagine Dragons", "Las Vegas")
p twenty_one_pilots = Band.new("Twenty One Pilots", "Columbus")

# Creation of Venue Object Instances:
puts "\nCreation of Venue Object Instances:"
p michigan_stadium = Venue.new("Michigan Stadium", "Ann Arbor")
p united_center = Venue.new("United Center", "Chicago")
p manchester_arena = Venue.new("Manchester Arena", "Manchester")
p comerica_park = Venue.new("Comerica Park", "Detroit")

# Creation of Concert Object Instances:
puts "\nCreation of Concert Object Instances:"
p imagine_dragons_concert = Concert.new("04-30-2020", imagine_dragons, michigan_stadium)
p imagine_dragons_concert_two = Concert.new("05-03-2020", imagine_dragons, comerica_park)
p twenty_one_pilots_concert = Concert.new("05-09-2020", twenty_one_pilots, united_center)
p twenty_one_pilots_concert_two = Concert.new("05-19-2020", twenty_one_pilots, manchester_arena)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
