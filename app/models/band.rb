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

        def self.band_name(name)
            @@all.find{|band| band.name == name}
        end

        def self.band_hometown(hometown)
            self.all.find do |hometown|
                if band.hometown == band_hometown
                    p hometown
                end
            end
        end

        def all_bands
            @@all << Band.new(name)
        end
end
