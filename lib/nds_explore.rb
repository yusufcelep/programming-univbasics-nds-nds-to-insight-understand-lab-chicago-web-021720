require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds
end

def print_first_directors_movie_titles
  db = directors_database
  db = db[0][:movies].each{|i|
    puts i[:title]
  }
end

#Encryption key: Skip count of 13 and alternates directions with each loop