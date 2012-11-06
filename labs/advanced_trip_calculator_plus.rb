require 'pry'

puts "Would you like to use Trip Calculator? (y) or (n)"
response = gets.chomp

def trip_calculator(dist, speed, gas_price, mpg, money)

	#balance cash based on trip and cost
	bal = money - ((dist / mpg) * gas_price)

	#trip time
	time = dist / speed

	#output results
	results = [bal, time] 

end

while response != "n" 

	puts "How far are you going?"
	dist = gets.to_f
	
	puts "What is your speed?"
	speed = gets.to_f
	
	puts "What is the lowest cost of gas per gallon that you'd like to have for your calculation"
	cost_start = gets.to_f
	
	puts "What is the highest cost of gas per gallon that you'd like to have for your calculation"
	cost_end = gets.to_f
	
	puts "What is the mpg of your car"
	mpg = gets.to_f
	puts "how much money do you have?"
	money = gets.to_f

#total = trip_calculator(dist, speed, gas_price, mpg, money)

#iterate gas prices in ten cent increments 

	(cost_start .. cost_end).step(0.10).each do |gas_price|
		total = trip_calculator(dist, speed, gas_price, mpg, money)

		if total[0] >= 0
			puts "You will arrive in #{total[1].round(2)} hours with $#{total[0].round(2)} left"

		else	
			puts "You dont have enough money for your trip" # needs to be nil
		end
	end

	puts "Would you like to use Trip Calculator? (y) or (n)"
	response = gets.chomp
	
end
