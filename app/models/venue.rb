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
        #return array of all concerts for this venue
        Concert.all.find_all do |show|
            show.venue == self
        end
    end

    def bands
        #return array of all bands for venue
        self.concerts.map do |show|
            show.band
        end
    end

    def concert_on(date)
        self.concerts.find do |show|
            show.date == date
        end
    end

    def most_frequent_band(band)
        # returns most frequently band
        # i need to go in and return the most frequently played band. 
        self.concerts.max_by { |show| self.concerts.count(show)}


    end


end