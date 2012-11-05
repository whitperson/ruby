require 'pry'

puts "Do you want to calculate your mortgage, (y)es or (n)o?"
response = gets.chomp

while response != 'n'

	puts "what is your principle amount (total mortgage)?"
	p = gets.to_f

	puts "what is the term of your mortgage (how many years)?"
	a = gets.to_f

	puts "what is your monthly interest rate?"
	r = gets.to_f

	r = (r / 12) / 100 
	n = (a * 30)
	payment = (r * p) / (1 - (1 + r) ** -n)


puts "your monthly mortgage patment is $#{payment.round(2)}."

puts "Do you want to calculate your mortgage, (y)es or (n)o?"
response = gets.chomp

end



