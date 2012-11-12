require 'pry'

puts "type in a (n)umber"
response = gets.chomp.to_i

begin
	response.explode
rescue

end
   puts "the square of #{response} is #{response ** 2}"
