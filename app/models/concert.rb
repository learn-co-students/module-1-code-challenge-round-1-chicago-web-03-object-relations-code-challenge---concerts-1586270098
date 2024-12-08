class Concert
    
    attr_accessor :band, :venue, :date

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
        Band.all.select{|name|name.concert == self}
    end

end