require 'pry'

class Mathy
	def factorial(n)
		n = (1..n).inject(:*) 
	end
end	

m1 = Mathy.new

puts "on which number do you want to run the factorial function?"
m1 = gets.chomp.to_f

result = Mathy.factorial(m1)

