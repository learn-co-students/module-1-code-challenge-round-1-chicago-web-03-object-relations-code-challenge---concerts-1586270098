require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dixie_chicks = Band.new("Dixie Chicks", "Dallas")
jonas_bros = Band.new("Jonas Brothers", "Jersey")
beatles = Band.new("The Beatles", "Liverpool")
coldplay = Band.new("Coldplay", "London")


bridgestone = Venue.new("Bridgestone Arena", "Nashville")
bijou = Venue.new("Bijou Theater", "Knoxville")
square_room = Venue.new("The Square Room", "Dallas")
blues = Venue.new("House of Blues", "Chicago")


concert_one = Concert.new("11/29/17", jonas_bros, bridgestone)
concert_two = Concert.new("9/15/76", beatles, bijou)
concert_three = Concert.new("2/14/20", dixie_chicks, square_room)
concert_four = Concert.new("4/20/20", dixie_chicks, bridgestone)
concert_five = Concert.new("2/9/18", coldplay, blues)
concert_six = Concert.new("5/23/17", jonas_bros, blues)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
