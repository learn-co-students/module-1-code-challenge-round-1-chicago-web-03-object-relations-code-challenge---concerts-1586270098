class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end
    # this is to add the concert relationship
    def play_in_venue(venue, date)
        Concert.new(self, venue, date)
    end

    # give all concerts the band played
    def concerts
        Concert.all.select{|con| con.band == self}
    end

    # give all introductions this band gave
    def all_introductions
        concerts.map{|con| con.introduction}
    end

    def self.all
        @@all
    end
end