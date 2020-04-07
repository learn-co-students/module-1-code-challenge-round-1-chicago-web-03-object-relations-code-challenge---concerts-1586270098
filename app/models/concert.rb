class Concert
    
    attr_accessor :date, :band, :venue, :band

    @@all = []

    def initialize(date, band, venue)

        @date = date
        @band = band
        @venue = venue

        @@all.push(self)

    end

    def self.all
        @@all
    end

end