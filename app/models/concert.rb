#a Concert belongs to a Band and to a Venue.
require_relative 'venue.rb'
require_relative 'band.rb'

#attr_accessor :date, :band, :venue

class Concert

  @@all = []
  def initialize(date,band,venue)
    @date = date
    @city = city
    @venue = venue
    @@all << self
end

#should return the Band instance for this concert
def band
  Band.all.select do |band|
    band.concert == self
   self.band
  end
end

def venue
  Venue.all.select do |venue|
    venue.concert == self
    self.venue
  end
end

  def self.all
  @@all
  end
end