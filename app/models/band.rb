require_relative "concert.rb"
require_relative "venue.rb"

class Band
    attr_reader :hometown
    attr_accessor :name

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    #############################
    #   Band.methods go here   #
    #############################
    
    def self.all
        @@all
    end

    #############################
    #   Band#methods go here   #
    #############################
    def concerts
        band_in_concerts = []

        Concert.all.each do |concert|
            if concert.band == self
                band_in_concerts << concert
            end
        end
        p band_in_concerts
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def all_introductions
        all_introductions_for_band = []

        Concert.all.each do |concert|
            if concert.band == self
                all_introductions_for_band << concert.introduction
            end
        end

        p all_introductions_for_band
    end
end