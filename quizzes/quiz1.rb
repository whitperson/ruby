

puts "What is you name?"
name = gets.chomp.to_s

puts "#{name}, what is your first number?"
	a = gets.to_i

puts "#{name}, what is your second number?"
	b = gets.to_i

puts "#{name}, what is your third number?"
	c = gets.to_i

d = (a + b) * c
e = a ** b
f = Math.sqrt(a * b)

puts "#{name}, your results are: #{d}, #{e}, #{f}"