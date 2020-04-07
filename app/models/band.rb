require_relative 'concert.rb'

class Band
    attr_accessor :name, :concert
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
        Concert.all.select do |concert|
            concert.band == self
        end
    end

    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end

    def all_introductions
        all_intros = []
        concerts.each do |concert|
            all_intros << concert.introduction 
        end
        all_intros
    end

end