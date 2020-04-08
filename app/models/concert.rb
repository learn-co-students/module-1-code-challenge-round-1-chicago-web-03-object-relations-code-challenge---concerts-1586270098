require_relative 'band'
require_relative 'venue'


class Concert
  attr_reader :band, :venue
  
  @@all = []

  def self.all 
    @@all
  end 

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self 
  end 

  def get_band
    self.band
  end 

  def get_venue
    self.venue
  end 

  def hometown_show?
    self.band.hometown == self.venue.city
  end 

  def introduction
    "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
  end 

end