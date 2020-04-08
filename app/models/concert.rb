class Concert
  attr_reader :band, :venue
  attr_accessor :date, :introduction
  @@all = []

  def initialize(band, venue, date)
    @band = band
    @venue = venue
    @date = date
    @introduction = "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    self.class.all << self
  end

  # find if the band plays in the city that is also hometown
  def hometown_show?
    self.band.hometown == self.venue.city
  end

  def self.all
    @@all
  end
end