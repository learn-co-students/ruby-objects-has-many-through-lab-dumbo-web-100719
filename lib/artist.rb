class Artist

    attr_accessor :name, :artist

    @@all = []
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song| 
        song.artist == self
        end
    end

    def new_song(name, genre)
        newsong = Song.new(name, artist = self, genre)
    end

    def genres
        self.songs.map do |song|
            song.genre
        end
    end



end
