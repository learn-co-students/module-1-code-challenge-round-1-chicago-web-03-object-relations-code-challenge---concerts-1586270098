require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bikini_bottom_band = Band.new("Bikini Bottom Band", "Bikini Bottom")
metallica = Band.new("Metallica", "Los Angeles")

riot_fest = Venue.new("Riot Fest", "Chicago")
warped_tour = Venue.new("Warped Tour", "Cleveland")

concert_riot = Concert.new("04/19/01", "Metallica", "Warped Tour")
concert_warped = Concert.new("05/16/95", "Bikini Bottom Band", "Lollapalooza")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line