require_relative 'concert.rb'

class Venue
    attr_accessor :title, :concert
    attr_reader :city
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
        concerts.map do |concert|
            concert.band 
        end
    end

    def concert_on(date)
        concerts.find do |concert|
            concert.date == date
        end
    end

    # unfinished/buggy --> undefined method concert
    def most_frequent_band
        most_freq = concerts.sort do |band_a, band_b|
            band_a.concert.length <=> band_b.concert.length
        end
        most_freq[0]
    end

end