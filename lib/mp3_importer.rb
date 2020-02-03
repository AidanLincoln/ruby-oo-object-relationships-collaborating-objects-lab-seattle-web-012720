require 'pry'
class MP3Importer
    attr_accessor :path
    def initialize(path)
        @path = path
    end
    def import
        
    end
    #fix this piece of shit
    def files
        files = Dir.glob("#{@path}/*.mp3")
        normalized = files.map do |file|
            file.split("./spec/fixtures/mp3s/")      
        end
        why = normalized.map do |file|
            file.reject {|c| c.empty?}
        end.flatten
    end
    def import

    end
end