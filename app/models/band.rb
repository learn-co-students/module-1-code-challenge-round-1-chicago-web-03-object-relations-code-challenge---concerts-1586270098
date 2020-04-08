require_relative 'concert'

class Band
    attr_reader :hometown
    attr_accessor :name
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def concerts
        final_concerts = []
        cons = Concert.all.select do |concerts|
            concerts.band == self
        end 

        cons.each do |con|
            final_concerts << con
        end 
        final_concerts
    end 

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end 


end