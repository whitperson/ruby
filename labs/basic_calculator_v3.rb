
puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower of, (sq)uare root, or (q)uit?"
response = gets.chomp

while response != 'q' # while we're not quitting, do the loop
	puts "First number?"
	first = gets.to_f
	puts "Second number?"
	second = gets.to_f

	if response == 'a'
		total = first + second
	
	elsif response == 's'
		total = first - second	
	
	elsif response == 'm'
		total = first * second

	elsif response == 'd'
		total = first / second		

	elsif response == 'p'
		total = first ** second #first number to power of second number

	else response == 'sq'
		total = Math.sqrt(first) #runs the square root of the first number
	end

puts "the result of #{first} and #{second} is #{total}"
puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower of, (sq)uare root, or (q)uit?"
response = gets.chomp

end

# add POW ** square root first number sqrt(first) = Math.sqrt