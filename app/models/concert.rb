require_relative 'band.rb'
require_relative 'venue.rb'

class Concert
  attr_accessor :date, :band, :venue, :introduction
  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  def introduction
    p "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
  end

  # unfinished method 
  def hometown_show?
  end

end