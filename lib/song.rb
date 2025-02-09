require 'pry'

class Song
    
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
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
        @@genres.each do |item|
            if @@genre_count.has_key?(item)
                @@genre_count[item] += 1
            else
                @@genre_count[item] = 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |item|
            if @@artist_count.has_key?(item)
                @@artist_count[item] += 1
            else
                @@artist_count[item] = 1
            end
        end
        @@artist_count
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

# binding.pry