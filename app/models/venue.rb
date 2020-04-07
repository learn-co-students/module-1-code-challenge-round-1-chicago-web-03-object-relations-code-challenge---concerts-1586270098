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
        first_concert = self.concerts.find do |concert|
            concert.date == date 
        end 

        if first_concert 
            return first_concert
        else 
            return nil 
        end 
    end 

    # What if there is a tie for num of concerts? Couldn't figure out to print both bands.
    def most_frequent_band 
        self.bands.max_by do |band|
            self.bands.count(band)
        end 
    end 
end