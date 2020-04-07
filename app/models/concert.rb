class Concert

    attr_reader :date, :band, :venue
    
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(date, band, venue)

        @band = band
        @venue = venue
       @date = date
       @@all << self
    end

    def find_band
        self.band.name
    end

    def find_venue
        self.venue.title
    end




end