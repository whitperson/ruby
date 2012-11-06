require 'pry'

n = [ 'ts', '34th', '28th-n', '23rd-n', 'us']
l = [ '8th', '6th' , 'us' , '3rd', '1st'] 
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

mta = {} # creates hash to hold the trains

mta[:n] = n #creates symbols as keys for mta hash for each train array
mta[:l] = l
mta[:s] = s

puts "what train do you want to get on: #{mta.keys.join(' , ')} ?"
# returns all the keys for the mta hash and joins them to a string w/ comma and space (and does it in same line)
start_train = gets.chomp.to_sym # converts train response to symbol and puts into "start_train"
puts "Which stop: #{mta[start_train].join(', ')}?" # joins start_train array and converts to string with comma to display 
stop_a = gets.chomp # gets stop 

puts "what train do you want to get off: #{mta.keys.join(' , ')} ?"
# same code as above but with the train they get OFF instead of ON
stop_train = gets.chomp.to_sym 
puts "Which stop: #{mta[stop_train].join(', ')}?"
stop_b = gets.chomp
#now we have all info we need to compute
#now we need to know where to connecting train is in the array; 

intersection = (mta[start_train] & mta[stop_train]).first
# will return 'us' as the connection 
#now we need ride length on the start_train
#but we need the array of intersection as a string

stop_a_index = mta[start_train].index(stop_a) # returns index of stop_a in start_train array
stop_a_intersection_index = mta[start_train].index(intersection) # returns index of the intersetcion of the start_train array
trip_a_length = (stop_a_index - stop_a_intersection_index).abs #gets absolute value of the difference in the two

stop_b_index = mta[stop_train].index(stop_b) 
stop_b_intersection_index = mta[stop_train].index(intersection) # returns index of the intersetcion of the start_train array
trip_b_length = (stop_b_index - stop_b_intersection_index).abs 
#now we just add the totals trip lengths together

total_length_of_trip = trip_a_length + trip_b_length