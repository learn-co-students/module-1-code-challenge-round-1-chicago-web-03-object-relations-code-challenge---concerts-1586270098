class Concert
    attr_accessor :date, :band, :venue  

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

  def hometown_show?
    band.hometown == venue.city
  end

  def introduction
    "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
  end

end