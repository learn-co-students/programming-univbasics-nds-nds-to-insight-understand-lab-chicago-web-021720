$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS
directors_database

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  column_index = 0
  inner_length = directors_database[0][:movies].length
  while column_index < inner_length do 
      puts directors_database[0][:movies][column_index][:title]
      column_index += 1
  end 
end
