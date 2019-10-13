require "pry"
class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

end