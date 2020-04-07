require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

banda = Band.new("Band A", "Chicago")
bandb = Band.new("Band B", "NYC")
bandc = Band.new("Band C", "Dallas")

ven1 = Venue.new("Hall X", "Chicago")
ven2 = Venue.new("Auditorium B", "Tokyo")
ven3 = Venue.new("Hall Big", "NYC")

c1 = banda.play_in_venue(ven1, "2019-04-07")
c2 = banda.play_in_venue(ven2, "2016-05-07")
c3 = bandb.play_in_venue(ven2, "2017-06-05")
c3 = bandb.play_in_venue(ven2, "2018-12-05")

p banda.concerts
p ven2.concerts

p c1.hometown_show?
p c2.hometown_show?

p c1.introduction
p banda.all_introductions
p ven2.concert_on("2016-05-08")
p ven2.most_frequent_band

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
