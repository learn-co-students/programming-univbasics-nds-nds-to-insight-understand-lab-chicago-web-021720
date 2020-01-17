$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  # pp pretty_print_nds(directors_database)  

  directors_database[0][:movies].length.times do |index|
    puts directors_database[0][:movies][index][:title]
  end
end


print_first_directors_movie_titles