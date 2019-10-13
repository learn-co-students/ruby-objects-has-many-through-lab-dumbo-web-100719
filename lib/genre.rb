class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def self.all
    @@all
  end

  def artists
    self.songs.map(&:artist)
  end

end
