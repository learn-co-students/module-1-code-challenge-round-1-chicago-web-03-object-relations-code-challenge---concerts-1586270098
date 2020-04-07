require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

the_rookies = Band.new("The Rookies", "Crown Point")

super_strong = Venue.new("Super Strong Music Strom", "Chicago")

greatest_rookies = Concert.new("Saturday", the_rookies, super_strong)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
