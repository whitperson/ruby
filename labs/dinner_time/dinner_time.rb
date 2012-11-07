require 'pry'
load 'food.rb'
load 'protein.rb'
load 'carb.rb'

dinner = []

puts "Creat a dinner....do you want add (p)rotein, a (c)arbohydrate or (q)uit?"
response = gets.chomp
	while response != 'q'
		
		case response
		when 'p'
			puts "what type of protein do you want to cook?"
			t = gets.chomp
			puts "how many calories does a serving have?"
			c = gets.chomp.to_i
			puts "how many servings do you want?"
			s = gets.chomp.to_i
			puts "how many minutes does this protein take to cook?"
			p = gets.chomp.to_i
			item = Protein.new(t, c, s, p)

		when 'c'
			puts "what type of carbohydrate do you want to cook?"
			t = gets.chomp
			puts "how many calories does a serving have?"
			c = gets.chomp.to_i
			puts "how many servings do you want?"
			s = gets.chomp.to_i
			puts "how many minutes does this carbohydrate take to cook?"
			p = gets.chomp.to_i
			item = Carb.new(t, c, s, p)
		end

		dinner << item

		puts "Creat a dinner....do you want add (p)rotein, a (c)arbohydrate or (q)uit?"
		response = gets.chomp

	end

total_cals = dinner.map{|food| food.calories * food.servings}.inject(&:+)
total_prep = dinner.map{|food| food.prep_time }.inject(&:+)

puts "the total calories of this meal: #{total_cals}"
puts "total prep time for this meal: #{total_prep}"

