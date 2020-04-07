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
        Concert.all.select {|c| c.venue == self}
    end

    def bands
        band_array = []
        Concert.all.each do |c|
            if c.venue == self
                band_array << c.band
            end
        end
        band_array
    end

    #going to use find and have the block see if date passed in argument == 
    def concert_on(date)
        Concert.all.find { |c| c.date == date}
    end

    # Use some method to go through Concert.all. Probably use count. 
    def most_frequent_band
    
    end


end