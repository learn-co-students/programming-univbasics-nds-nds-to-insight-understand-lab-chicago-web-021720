require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end


pp directors_database
puts directors_database

  row_index = 0 
  while row_index <directors_database.length do 
    puts "row #{row_index} has #{vm[row_index]} columns"
    column_index = 0 
    while column_index < directors_database[row_index].length do 
      coord = "#{row_index}, #{column_index}"
      inner_len = directors_database[row_index][column_index].length 
      puts "\t coordinate[#{coord}] points to an #{vm[row_index][column_index].class} of length #{inner_len}"
      inner_index = 0 
      while inner_index <inner_len do 
        puts "\t\t (#{coord},#{inner_index}) is: #{directors_database[row_index][column_index][inner_index]}"
        inner_index += log1 
      end
      column_index += 1 
    end 
    row_index += 1 
  end 