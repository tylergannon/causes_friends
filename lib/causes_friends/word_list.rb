require 'net/http'

class WordList 
  def self.build
    File.open('word.list', 'r'){|f| f.readlines.map(&:strip) }
  end
end


