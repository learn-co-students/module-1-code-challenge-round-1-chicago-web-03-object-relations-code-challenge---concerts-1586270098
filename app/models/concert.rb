class Concert
  attr_reader :date, :band, :venue
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    self.class.all << self
  end

  def hometown_show?
    self.band.hometown == self.venue.city
  end

  def introduction
    "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
  end



end