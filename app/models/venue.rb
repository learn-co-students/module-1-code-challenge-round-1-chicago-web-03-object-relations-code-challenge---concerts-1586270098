require_relative 'venue'
require_relative 'concert'
p " in venue "
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
     Concert.all.select do |concert|  
        concert.venue == self 
     end 
     def bands 
        Band.all.select do |band|  
            band.venue == self 
        end
    
     end 
    end 
end