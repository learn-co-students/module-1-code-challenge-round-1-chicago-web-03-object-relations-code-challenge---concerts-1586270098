class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def title(title)
        self.title = title
        return title 
    end

    def city
        @city
    end
end