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
        songs_with_current_artists = Song.all.select do |song|
            song.artist.name == self.name
        end
        songs_with_current_artists
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        @@all << new_song
        new_song
    end

    def genres
       Song.all.map {|song| song.genre}
    end
end