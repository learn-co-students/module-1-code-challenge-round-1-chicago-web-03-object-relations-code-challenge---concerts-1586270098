require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


lawrence_arms = Band.new("The Lawrence Arms", "Chicago")
veil_of_maya = Band.new("Veil of Maya", "Milwaukee")
alkaline_trio = Band.new("Alkaline Trio", "Chicago")
maybeshewill = Band.new("Maybeshewill", "Newcastle")


msg = Venue.new("Madison Square Garden", "New York")
bowery_ballroom = Venue.new("Bowery Ballrom", "New York")
reggies = Venue.new("Reggie's", "Chicago")
bottom_lounge = Venue.new("Bottome Lounge", "Chicago")
cobra_lounge = Venue.new("Cobra Lounge", "Chicago")

may_show = Concert.new("May 8", maybeshewill, reggies)
april_show = Concert.new("April 20", maybeshewill, cobra_lounge)
summer_show = Concert.new("July 5", veil_of_maya, reggies)
hometown_show = Concert.new("August 3", alkaline_trio, bottom_lounge)
may_show_two = Concert.new("May 8", lawrence_arms, reggies)
larry_show = Concert.new("June 6" ,lawrence_arms, reggies)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
