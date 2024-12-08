class Concert

  attr_accessor :date, :band, :venue
  
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
    
  def band
    @band
  end

  def venue
    @venue
  end

  def hometown_show?
    # return true if concert is in band's hometown
    # band.hometown == venue.city
    # NOT WORKING
    if band.hometown == venue.city
      return true
    else
      return false
    end

  end

  def introduction
    # returns a string with below string
    # "Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"
    # I need hometown_show.introduction to above text
    "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
  end

end