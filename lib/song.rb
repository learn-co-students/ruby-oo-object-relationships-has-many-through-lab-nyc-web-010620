class Song
    attr_reader :name, :artist, :genre

    @@all = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        artist.songs << self
        artist.genres << genre
        genre.songs << self
        genre.artists << artist
    end

    def self.all
        @@all
    end

end

# A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.