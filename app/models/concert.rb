require_relative "venue.rb"
require_relative "band.rb"

class Concert
    attr_reader :band, :venue, :date
    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    #############################
    #   Concert.methods go here #
    #############################

    def self.all
        @@all
    end

    #############################
    #  Concert#methods go here  #
    #############################

    def hometown_show?
        if band.hometown == venue.city
            true
        else
            false
        end
    end

    def introduction
        p "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    end
end