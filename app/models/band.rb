class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.find_all do |show|
            show.band == self
        end
    end

    def play_in_venue(date, venue)
        # creates new concert with the above information
        Concert.new(date, self, venue)
    end

    def all_introductions
        #returns all introcutions for this band??

        #NOT WORKING

        self.concerts.each do |show|
            "Hello #{venue.city}!!!!!, we are #{self.name} and we're from #{self.hometown}"
        end


    end


end