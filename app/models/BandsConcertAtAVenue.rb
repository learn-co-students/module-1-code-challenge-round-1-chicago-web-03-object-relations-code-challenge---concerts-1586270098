require 'pry'
require 'faker'
class BandsConcertAtAVenue
    attr_accessor :band, :venue , :concert
    @@all = []

    def initialize(band, venue, concert)
        @band = attr_one
        @venue = attr_two
        @concert = []
        @@all << self
    end

    def self.all
        @@all
    end
end

