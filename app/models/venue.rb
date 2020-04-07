class Venue

    attr_accessor :title
    attr_reader :city, :concert, :band

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
    end

    def bands
        concerts = Concert.all.select {|concert| concert.venue == self}
        concerts.map do |concert|
            concert.band
        end
    end
end