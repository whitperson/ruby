require 'pry'

puts "type in a (n)umber"
response = gets.chomp.to_i
response.explode

     begin
          response == 10
          puts "the square of __10__ is 100"
     rescue
end