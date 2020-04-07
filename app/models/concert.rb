require 'pry'
require 'faker'

class Concert
    @@all = []

     def initialize(date, band, venue)
        @date = date
        @band = band 
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end 

    def band
        self.Concert.all
    end

    def venue
        self.Band.all
    end
    
    
end



3.times do
    Concert.new(Faker::Date.in_date_period(month: 2), Faker::Music::RockBand.name, Faker::Address.full_address )
end