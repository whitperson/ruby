require 'pry'

puts "compute sum of the range of 250 to 180,000"

sum = 0

(250..180000).each do |x|
	sum = sum + x
end
	
	puts "The sum is #{sum}"



