class Concert
    @@all = []
    attr_reader :band, :venue
    attr_accessor :date
    
    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end

    def introduction

    Band.all.select{ |band| band.venue == self }
    
 # - returns a string with the band's introduction for this concert
    #- an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`
    
    end

    def hometown_show?
        #returns `true` if the concert is in the band's hometown, `false` if it is not
        #include?
    end

    
end