class Venue
    attr_accessor :title
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

    def bands_venue
        @list_of_bands = []
        Band.all.select do |band|
            band.venue == self
            @list_of_bands << self
        end
        p bands
    end

    def concerts_venue
        @list_of_concerts = []
        Concert.all.select do |concert|
            concert.venue == self
            @list_of_concerts << self
        end
        p concerts
    end

    def concert_on(date)
        @first_concert = []
        Concert.date.first
        @first_concert << self
    end

    def most_frequent_band
        Band.concerts.max do |band_one, band_two|
            band_one.length <=> band_two.length
        end
        p most_frequent_band
    end
end