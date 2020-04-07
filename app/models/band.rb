class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def name(name)
        self.name = name
        return name
    end

    def hometown
        @hometown
    end

    # return concert when called?

    # def band
    #     @concert
    # end
end