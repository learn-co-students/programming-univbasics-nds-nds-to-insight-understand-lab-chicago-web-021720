$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
directors_database 
require 'pp'

def pretty_print_nds(nds)
  pp nds
end

def print_first_directors_movie_titles
  spielberg = directors_database[0][:movies]
  array_index = 0
  while array_index < spielberg.count do
    puts "#{spielberg[array_index][:title]}\n"
    array_index += 1
  end
  
end

