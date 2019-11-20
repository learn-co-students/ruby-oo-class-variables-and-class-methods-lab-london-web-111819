require "pry"

class Song

    attr_accessor :name,:artist,:genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count={}
    @@artist_count= {}

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists.push(artist)
        @@genres.push(genre)

        @@genre_count[genre]=0 if @@genre_count[genre] == nil
        @@genre_count[genre]+=1

        @@artist_count[artist]=0 if @@artist_count[artist]==nil
        @@artist_count[artist]+=1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count
        #binding.pry
    end

    def self.artist_count
        @@artist_count
    end

end

#test1 = Song.new("The best song1","JayZ1","rap")
#test2 = Song.new("The best song2","JayZ2","rap")
#test3 = Song.new("The best song3","JayZ3","rap")
#test4 = Song.new("The best song4","JayZ1","rap")
#test5 = Song.new("The best song5","JayZ2","pop")
#test6 = Song.new("The best song6","JayZ3","rap")
#test7 = Song.new("The best song7","JayZ1","rap")
#test8 = Song.new("The best song8","JayZ1","rap")
#p Song.genre_count
#p Song.artist_count
