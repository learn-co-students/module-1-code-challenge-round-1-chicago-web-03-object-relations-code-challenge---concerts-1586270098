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

    def self.venue_title(title)
        @@all.find{|venue| venue.title == title}
    end

    def self.venue_city(city)
        self.all.find do |city|
            if venue.city == venue_city
                p city
            end
        end
    end






end