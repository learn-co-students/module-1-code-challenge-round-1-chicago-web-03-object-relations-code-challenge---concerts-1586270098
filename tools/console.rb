require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Band Instances

strokes = Band.new("The Strokes", "NYC")
miles_davis = Band.new("Miles Davis", "St Louis")
bill_evans = Band.new("Bill Evans", "Chicago")

#Venue Instances

congress = Venue.new("The Congress Theatre", "Chicago")
empty_bottle = Venue.new("The Empty Bottle", "Chicago")
united_center = Venue.new("United Center", "Chicago")

#Concert Instances

strokes_congress = Concert.new("02/22/2021", strokes, congress)
davis_empty_bottle = Concert.new("02/23/2021", miles_davis, empty_bottle)
strokes_empty_bottle = Concert.new("02/22/2022", strokes, empty_bottle)
evans_united_center = Concert.new("02/28/2021", bill_evans, united_center)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
