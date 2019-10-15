class Song
    attr_reader :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def artists
        Artist.all.select{|artist| artist.song == self}
    end

end
