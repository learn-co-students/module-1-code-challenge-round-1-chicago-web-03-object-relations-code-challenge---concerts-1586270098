class Concert
    
    attr_reader :band, :venue

    @@concerts = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@concerts << self
    end

    def self.all
        @@concerts
    end

    def hometown_show?
        if self.venue.city == self.band.hometown
            true
        else
            false
        end
    end

    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end
end