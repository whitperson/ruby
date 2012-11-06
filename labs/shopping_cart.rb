require 'pry'

items = {'shoes' => 80.33, 'shirts' => 25.67, 'socks' => 7.99}
tax = 0.0931
total_shoes = 0 
total_shirts = 0
total_socks = 0

puts "What would you like to buy, (sh)oes, (t)shirts, or (s)ocks?"
response = gets.chomp

while response != 'q'

	if response == "sh"
		puts "How many pairs of shoes would you like to buy"
		shoes = gets.to_i
		total_shoes = shoes *  80.33

	elsif response == "t"
		puts "How many t-shirts would you like to buy"
		shirts = gets.to_i
		total_shirts = shirts * 25.67

	else response == "s"
		puts "How many pairs of socks would you like to buy"
		socks = gets.to_i
		total_socks = socks * 7.99
	end

puts "Would you like keep shopping for (sh)oes, (t)shirts, or (s)ocks? If not, press (q) to finish shippng get your total?"
response = gets.chomp

end

	if response == 'q'
	subtotal = total_shoes + total_shirts + total_socks
	tax = subtotal * 0.0931
	total = subtotal + tax
	puts "Your shopping reciept is as follows:
	#{shoes} pairs of shoes = $#{total_shoes.round(2)}
	#{shirts} t-shirts = $#{total_shirts.round(2)}
	#{socks} pairs of socks = $#{total_socks.round(2)}
	
	SUBTOTAL = $#{subtotal.round(2)}
	
	TAX (of 9.31%) = $#{tax.round(2)} 
	
	TOTAL = $#{total.round(2)}"
end
