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

    def concerts_band
        @list_of_concerts_band = []
        Concert.all.select do |band|
            band.concert == self
            @list_of_concerts_band << self
        end
        p concerts_band
    end

    def all_introductions
        @all_intros = []
        Concert.introduction.all
        @all_intros << self
    end
end