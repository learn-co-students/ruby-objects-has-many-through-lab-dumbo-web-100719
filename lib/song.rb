require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    #make sure the attr_accessor matches the  initialize

    def initialize(name, artist, genre)
        @name = name 
        @genre = genre
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
end