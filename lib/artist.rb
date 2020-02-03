class Artist
    attr_accessor :name, :song, :songs
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.filter{|song| song.artist == self}
    end
    def add_song(song)
        song.artist = self 
    end
    def self.find_or_create_by_name(name)
        result = Artist.all.find do |obj|
            obj.name == name
        end
        if result
            result
        else 
            Artist.new(name)
        end             
    end
    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
end