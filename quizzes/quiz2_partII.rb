require 'pry'

colors = []

puts "Would you like to (e)nter a color or (q)uit?"
response = gets.chomp

	while response != 'q'
		puts "Enter a new color: "
		color = gets.chomp
		colors << color

		puts "Would you like to enter a color or (q)uit?"
		response = gets.chomp
	end

puts "You entered the following colors: #{colors}"

