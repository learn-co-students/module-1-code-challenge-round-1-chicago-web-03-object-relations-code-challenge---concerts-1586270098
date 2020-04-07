require 'pry'
require 'faker'
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
      self.Concert.all
    end

    def bands
       # .bands
    end

end



3.times do 
    Venue.new(Faker::Address.community, Faker::Address.city)
end
