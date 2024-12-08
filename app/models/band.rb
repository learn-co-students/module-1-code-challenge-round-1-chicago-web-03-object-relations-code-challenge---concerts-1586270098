require 'faker'
require 'pry'
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
    self.Concert.all
    end
end




3.times do 
    Band.new(Faker::Music::RockBand.name, Faker::Address.city)
end