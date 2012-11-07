require 'pry'


class Student
	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize(name, dob, gender, gpa, major)
		@name = name
		@dob = dob
		@gender = gender
		@gpa = gpa
		@major = major
	end

	def to_s
		puts "#{name} was born #{dob} is a #{gender}, has a GPA of #{gpa} and is majored in #{major}"
	end
end

students = []

puts "Do you want to create a new (s)tudent or (q)uit?"
response = gets.chomp

	while response != 'q'
		puts 'Name of student?'
		name = gets.chomp
		puts 'Date of Birth?'
		dob = gets.chomp
		puts 'Gender?'
		gender = gets.chomp 
		puts 'GPA?'
		gpa = gets.chomp 
		puts 'Major?'
		major = gets.chomp 
		s1 = Student.new(name, dob, gender, gpa, major)
		students << s1
	
	puts "Do you want to create a new (s)tudent or (q)uit?"
	response = gets.chomp
end

puts "#{students.to_s}"



