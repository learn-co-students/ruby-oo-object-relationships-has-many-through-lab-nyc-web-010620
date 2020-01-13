require_relative "./song.rb"
require_relative "./artist.rb"
require 'pry'

class Genre
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |muzik|
            muzik.genre == self
        end
    end

    def artists
        genre_by_artist = self.songs.map do |music|
            music.artist 
        end
    end
end