require 'pry'

class Mathematics
	def self.factorial(n)
		n = (1..n).inject(:*) 
	end
end	

m1 = Mathematics.new

puts "on which number do you want to run the factorial function?"
m1 = gets.chomp.to_f

result = Mathematics.factorial(m1)
puts "#{result}"
