
Dir["#{File.dirname(__FILE__)}/causes_friends/*.rb"].each {|file| 
  puts file
require file }

