require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
band1 = Band.new("Krazy Kats", "DC")
band2 = Band.new("Hello hello", "LA")
band3 = Band.new("LAAAAAAAAAA", "Orange County")
band4 = Band.new("FAVORITE %%%%%%%%%", "Austin")

venue1 = Venue.new("American Airlines Arena", "Miami")
venue2 = Venue.new("Staples Center", "LA")
venue3 = Venue.new("Dodgers Stadium", "LA")
venue4 = Venue.new("Mighty Ducks Stadium", "Anaheim")

concert1 = Concert.new(2020-05-03, band1, venue1)
concert2 = Concert.new(2020-05-04, band3, venue1)
concert3 = Concert.new(2020-05-03, band3, venue2)
concert4 = Concert.new(2020-05-06, band2, venue2)
concert5 = Concert.new(2020-05-01, band1, venue1)
concert6 = Concert.new(2020-05-01, band3, venue1)

# p band1.hometown
# p venue2.title
# p venue2.concerts
# p "############################################"
# p venue2.bands
# p band1.concerts 
# p concert1.hometown_show?
# p concert1.introduction
# p band3.play_in_venue(venue2 , "03-04-2020")
# p band2.all_introductions
# p venue2.concert_on(2020-05-06)
# p venue2.bands
# p venue1.most_frequent_band 

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
