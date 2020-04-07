require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
t = Band.all.select {|band|band.venue == self }
b = Band.new( t, "Chicago")
#t = Band.all.select {|band|band.venue == self }
a = Venue.new(t, "Gary") 
c = Concert.new("04152020" , b , a )
x = Concert.all.select {|concert|concert.venue == self }





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
