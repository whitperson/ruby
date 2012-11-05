require 'pry'
# this is a commment
# used anytime you need to explain

puts "what is your name?"
#puts is "put a string" -- prints to screen or puts out to user (similar to console.log)
first = gets
#gets will wait for you to input something (means get a string); this gets an input

#version1
puts "You typed in " + first

#version 2 --> string interpolation = a way to better integrate a string, so...
puts "You typed in #{first}"
#the # sign says thing inside {} is special; a variable

#version 3
puts 'You typed in #{first}'
#string interpolation does not work with single quotes

#MATH
puts "enter an integer?"
a = gets
a = a.to_i 
# a.to_i means a converts to an integer

puts "enter a floating point number?"
b = gets
b = b.to_f
# b.to_f means a converts to a floating point number

c = a + b
puts "the result of #{a} summed with #{b} is #{c}"

#THIS IS HOW TO DEBUG USING PRY
binding.pry


puts "What is your age?"
age = gets.to_i
#puts it all into one line,; gets something and immediate;y converts it to an interger

if age < 5
	puts "you are a baby"
elsif (age >= 5) && (age < 18)
	puts "you are a minor"
else
	puts "you are an adult"
end	
#very similar to javascript minus {} () and and elsif would be else_if

puts "Enter a letter"
letter = gets.chomp

#chomp gets rid of the new line if you accidentally add "enter" key to a string as /n (a new line)

#CASE STATMENT -- matches item with what you add
case letter
when "a"
	puts "you typed in a"
when "b"
	puts "you typed in b"
when "c"
	puts "you typed in c"
when "d"
	puts "you typed in d"
end

#LOOPING
puts "Enter a starting number"
start = gets.to_i
puts "Enter an ending number"
stop = gets.to_i

while start <= stop
	puts "Counting #{start}"
	start = start + 1
end
# could also use start += 1 (which would work the same way; can also use other functions like -, *. /)

#METHODS (same as JS - takes an input and puts an output)

def square(a)   # similar to JS functions
	a * a
end
# a is input and the output is the last thing that happens...and it returns automatically

def volume(l, w, h)
	l * w * h
end

puts "Length?"
Length = gets_to.if 
puts "Width?"
Width = gets_to.if 
puts "height?"
Height = gets_to.if 
vol = volume(length, width, height)
puts "the volume of #{length} and #{width} and #{height} is #{volume}"


puts "enter a nuber to square"
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"










