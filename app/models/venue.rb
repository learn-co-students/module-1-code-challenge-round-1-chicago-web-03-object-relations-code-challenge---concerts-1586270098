#a Venue has many Concerts
require_relative 'concert.rb'
require_relative 'band.rb'

class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def title
     Venue.all.map do |title|
     Venue.title == title
     end
    end

    def city
     Venue.all.map do |city|
     Venue.city == city
     end
    end


    def self.all
        @@all
    end
end