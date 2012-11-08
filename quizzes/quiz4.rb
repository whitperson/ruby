require 'pry'

numbers = []

class Numbers

	def to_s
		puts "#{numbers}"
	end
end

puts "enter a (n)umber or (q)uit?"
response = gets.chomp

	while response != 'q'
		
		puts "Enter a number: "
		response = gets.chomp.to_i
		numbers << response

		puts "enter a (n)umber or (q)uit?"
		response = gets.chomp
end

	puts "#{numbers}"
	puts "#{numbers.map{|x| x**2}}"