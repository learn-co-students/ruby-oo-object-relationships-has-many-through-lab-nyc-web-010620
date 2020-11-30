class Artist
    attr_reader :name
    attr_accessor :songs, :genres
    
    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
        @genres = []
        @@all << self
    end

    def self.all
        @@all
    end
    
    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        #@genres.include?(genre) ? return : @genres << genre
    end


end

# The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
# The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
# The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.