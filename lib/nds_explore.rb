$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
# Call the method directors_database to retrieve the NDS
#def directors_database

#end

def pretty_print_nds(nds)
  pp nds
end

def print_first_directors_movie_titles
  directors = directors_database
  index = 0
  i = 0
  while index < directors.count
    director = directors[index]
    if director[:name] == "Stephen Spielberg"
      movies = director[:movies]
      while i < movies.count
        movie = movies[i]
        puts movie[:title]
        i += 1
      end
    end
    index += 1
  end
end


print_first_directors_movie_titles
