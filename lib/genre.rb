class Genre
    @@all = []
    attr_reader :name, :artists
    attr_accessor :songs

    def initialize(name)
        @songs = []
        @artists = []
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

end

# The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
# The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.