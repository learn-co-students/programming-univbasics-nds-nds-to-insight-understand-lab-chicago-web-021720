require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds 
  # Change the code below to pretty print the nds with pp
  nil
end

def print_first_directors_movie_titles
  ss = directors_database.find do |director|
    director[:name] == "Stephen Spielberg"
  end 
  
   titles = ss[:movies].map do |movie|
     movie[:title]
   end 
  puts titles

end
