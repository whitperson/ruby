require 'pry'

people = []

class Person
	attr_accessor :name, :age, :gender  #  sets up attribute buckets

     def initialize(n, a, g) # initialize gets called when we use .new
          @name = n
          @age = a
          @gender = g
     end

     def to_s
     	"#{name} is a #{age}-year-old #{gender}"
     end
end

puts "Do you want to create a (p)erson or (q)uit?"
	response = gets.chomp

		while response != 'q'

		puts "Name?" #gets name and turns into string name
		name = gets.chomp.to_s

		puts "Age?" #gets age and puts into integer age
		age = gets.chomp.to_i

		puts "Gender?" # gets gender  and puts into gender var
		gender = gets.chomp

		new_person = Person.new(name, age, gender) #creates new Person and passes through attributes from above
		people << new_person

		puts "Do you want to create a (p)erson or (q)uit?" # loops to initial question
		response = gets.chomp
	end

puts people # displays all the people we just created



