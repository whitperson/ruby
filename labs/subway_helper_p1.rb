require 'pry'

n_train = [ 'times square', '34th', '28th', '23rd', 'union square']
l_train = [ '8th', '6th' , 'union square' , '3rd', '1st'] 
six_train = ['grand central', '33rd', '28th', '23rd', 'union square']

puts "Which train do you want to get on...the (n)train, (l)train or (s)ix train?"
	response = gets.chomp

	if response == 'n'
		puts "which stop do you want to get on...'times square', '34th', '28th', '23rd', or 'union square'?"
			stop_on = gets.chomp
			s1 = n_train.index(stop_on)
		puts "which stop do you want to get off...'times square', '34th', '28th', '23rd', or 'union square'?"
			stop_off = gets.chomp
			s2 = n_train.index(stop_off)
		number_of_stops = (s2 - s1)
		puts "your trip will take you #{number_of_stops} stops"

	elsif response == 'l'
		puts "which stop do you want to get on...'8th', '6th' , 'union square' , '3rd', '1st'?"
			stop_on = gets.chomp
			s1 = l_train.index(stop_on)
		puts "which stop do you want to get off...'8th', '6th' , 'union square' , '3rd', '1st'?"
			stop_off = gets.chomp
			s2 = l_train.index(stop_off)
		number_of_stops = (s2 - s1)
		puts "your trip will take you #{number_of_stops} stops"
	
	else response == 's'
		puts "which stop do you want to get on...'grand central', '33rd', '28th', '23rd', 'union square''?"
			stop_on = gets.chomp
			s1 = six_train.index(stop_on)
		puts "which stop do you want to get off...'grand central', '33rd', '28th', '23rd', 'union square'?"
			stop_off = gets.chomp
			s2 = six_train.index(stop_off)
		number_of_stops = (s2 - s1)
		puts "your trip will take you #{number_of_stops} stops"
	end

