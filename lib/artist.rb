class Artist
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #return all of the songs that belong to that artist
        #sort through Song.all 
        #create an array of all the of the songs that have self as their artist
        #we want a new array of all of the selected songs so use select

        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        #we want this method to create a new song associated with self
        #we want to give it a name and a genre
        #order of arguments matters!!!!
        # binding.pry
        Song.new(name, self, genre)
    end

    def genres
        #show the genres each artist has
        songs.map do |song|
            song.genre
            
        end
    end
end