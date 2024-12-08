require_relative 'venue'
require_relative 'band'
p " in concert "
class Concert
   attr_reader :date, :band, :venue 
    @@all = []

    def initialize (date, band, venue)
        @date = date
        @band = band
        @venue = venue 
        @@all << self 
    end

    def self.all 
    @@all 
    end 
   
    def concert_band 
     Band.select do |band| band.all?()
     end  
    end 
   
    def concert_venue  
    Venue.select do |venue| venue.all?() 
     end
    end 
    
end