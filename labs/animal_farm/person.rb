#create a person class w/ name age gender
class Person
	attr_accessor :name, :age, :gender

	def initialize(n, a, g)
		@name = n
		@age = a
		@gender = g
	end

	def to_s
		"#{name} is #{age}-year-old #{gender}"
	end
end