require_relative 'concert'

class Venue
    attr_reader :city, :band, :date
    attr_accessor :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def concerts
        final_concerts = []
        cons = Concert.all.select do |concerts|
            concerts.venue == self
        end 

        cons.each do |con|
            final_concerts << con
        end 
        final_concerts
    end 

    def bands
        final_bands = []
        cons = Concert.all.select do |concerts|
            concerts.venue == self
        end 

        cons.each do |concert|
            final_bands << concert.band
        end
        final_bands
    end 

    def concert_on(date)
# I was attempting to do something very similar to #bands and #concerts and
# intstead of searching for those, search for the date of the concert if the 
# venue was equal to the venue being searched

        #final_date = nil 
        concert_dates = Concert.all.select do |concerts|
            concerts.venue == self 
        end 
        final_date = concert_dates.find do |concert|
            concert.date
        end 
        # concert_dates.each do |concert|
        #     final_date = concert
        # end 
        final_date
    end 

end 