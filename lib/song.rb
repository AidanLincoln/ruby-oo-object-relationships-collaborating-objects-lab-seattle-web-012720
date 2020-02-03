require 'pry'
class Song
    attr_accessor :name, :artist, :artist_name, :file_name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(file_name)
        parsed = file_name.split(' - ')
        new_instance = Song.new(parsed[1])
        Artist.all.each do |artist|       
            binding.pry
            if parsed[0] == artist.name
                new_instance.artist = artist
            end
        end             
    end
    def artist_name=(artist_name)
        Artist.all.each do |artist|
            if artist.name == artist_name             
                self.artist = artist
            else
                new_artist = Artist.new(artist_name)                
                self.artist = new_artist
            end
        end
    end
end