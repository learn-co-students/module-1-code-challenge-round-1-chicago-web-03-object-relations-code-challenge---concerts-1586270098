#a Band has many Concerts
require_relative 'concert.rb'
class Band
    #should be able to change its name after creation
    attr_accessor :name
    #should not be able to change its hometown after creation
    attr_reader :hometown

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    #should return the Band's name
    def name
     Band.all.map do |name|
     Band.name == name
     self.name
     end
    end


    def hometown
     Band.all.map do |hometown|
     Band.hometown == hometown
     self.hometown
     end
    end
    
    def Concerts
    
    end

    def self.all
        @@all
    end
end