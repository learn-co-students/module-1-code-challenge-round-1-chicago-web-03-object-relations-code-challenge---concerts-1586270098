class Concert
    attr_accessor :band
    attr_reader :date, :venue

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

    def hometown_show?
        if Concert.city == Band.hometown
            true
        else
            false
        end
    end

    def introduction(city, band, hometown)
        p "Hello #{city.self}!!!!!, we are #{band.self} and we're from #{hometown.self}"
    end
end