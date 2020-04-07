require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

zac = Band.new("Zac Brown Band", "Atlanta")
beyonce = Band.new("Beyonce", "New York")

barclays = Venue.new("Barclays Center", "New York")
att = Venue.new("ATT", "Chicago")

concert_one = Concert.new("2020-12-15", zac, barclays)
concert_two = Concert.new("2021-03-03", beyonce, barclays)
concert_three = Concert.new("2020-09-08", beyonce, att)
concert_four = Concert.new("2020-09-08", zac, att)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
