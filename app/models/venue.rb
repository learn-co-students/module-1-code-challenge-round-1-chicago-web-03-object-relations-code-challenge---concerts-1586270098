require_relative "concert.rb"
require_relative "band.rb"

class Venue
    attr_reader :city
    attr_accessor :title

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    #############################
    #   Venue.methods go here   #
    #############################

    def self.all
        @@all
    end

    #############################
    #   Venue#methods go here   #
    #############################

    def concerts
        concerts_in_venues = []

        Concert.all.each do |concert|
            if concert.venue == self
                concerts_in_venues << concert
            end
        end

        p concerts_in_venues
    end

    def bands
        bands_in_venues = []

        Concert.all.each do |concert|
            if concert.venue == self
                bands_in_venues << concert.band
            end
        end

        p bands_in_venues
    end

    def concert_on(date)
        Concert.all.find do |concert|
            concert.date == date && concert.venue == self
        end
    end

    # unfinished method
    def most_frequent_band
        
    end
end