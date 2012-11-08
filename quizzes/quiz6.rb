require 'pry'

numbers = (250..750).to_a

numbers.select{|n| n.odd?}.inject(&:+)

puts "#{numbers.select{|n| n.odd?}.inject(&:+)}"

# take numbers between 250 and 750 

# show only the odd numbers

# sum these numbers

