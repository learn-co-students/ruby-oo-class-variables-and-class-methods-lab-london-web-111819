# require 'pry'
class Song


    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end


    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
    
        g1 = Hash.new 0
        @@genres.each do |genre|
            g1[genre] += 1
        end
     g1
    end

    def self.artist_count

        a1 = Hash.new 0
        @@artists.each do |artist|
            a1[artist] += 1
        end
        a1
    end

    

end

# song1 = Song.new("Lucifer", "Jay-Z", "rap")
# song2 = Song.new("99 Probelms", "Jay-Z", "rap")
# song3 = Song.new("hit me baby one more time", "Brittany Spears", "pop")

# Song.count

# Song.genres.all
# # binding.pry
# Song.artists.all