class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    # get all concerts for the venue
    def concerts
        Concert.all.select{|con| con.venue == self}
    end

    # find the concert for a particular date
    def concert_on(date)
        concerts.find{|con| con.date == date}
    end


    def most_frequent_band
        self.all.max do |c_a, c_b|
            c_a.concerts.length <=> c_b.concerts.length
        end
    end

    def self.all
        @@all
    end
end