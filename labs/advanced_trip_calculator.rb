require 'pry'

puts "Would you like to use Trip Calculator? (y) or (n)"
response = gets.chomp

def trip_calculator(dist, speed, cost, mpg, money)

	#balance cash based on trip and cost
	bal = money - ((dist / mpg) * cost)

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
	puts "What is the cost of gas per gallon"
	cost = gets.to_f
	puts "What is the mpg of your car"
	mpg = gets.to_f
	puts "how much money do you have?"
	money = gets.to_f

	total = trip_calculator(dist, speed, cost, mpg, money)

		if total[0] >= 0
			puts "You will arrive in #{total[1].round(2)} hours with $#{total[0].round(2)} left"

		else	
			puts "You dont have enough money for your trip" # needs to be nil
		end
		
	puts "Would you like to use Trip Calculator? (y) or (n)"
	response = gets.chomp

end
