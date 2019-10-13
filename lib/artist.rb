require 'pry'

class Artist
  attr_reader :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def songs
    Song.all.select do |meal|
      meal.artist == self
    end
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def genres
    self.songs.map(&:genre)
  end

  def self.all
    @@all
  end

end
