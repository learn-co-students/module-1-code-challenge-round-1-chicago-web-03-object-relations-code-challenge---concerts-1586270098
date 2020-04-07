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

    def concert
        # Spent too long on this one, and I simplely could not keep up with the time.
        #I could do this as a whole, but I am no where near the speed in which I should be
         #this is kinda the same idea as the concert one, but I need to make it so the two are "joined"
    end
end