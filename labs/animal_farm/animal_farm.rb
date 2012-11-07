require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

farms = []

#ask user for this info
puts "Create a (f)arm, (p)erson, (a)nimal  or (q)uit?"
response = gets.chomp

#start the while loop
while response != 'q'

	if response == 'a'
		puts "What farm do you want to add it to?"
		puts "Here are your choices #{farms}"
		response = gets.chomp

		farms.each do |farm_name|
			if farms_name.to_s == response

				puts "Name?"
				name = gets.chomp

				puts "Species?"
				s = gets.chomp.to_s
				
				a1 = Animals.new(n, s)

				farm_name.animals << a1
			end
		end

	elsif response == 'p'
		puts "What farm do you want to add it to?"
		puts "Here are your choices #{farms}"
		response = gets.chomp

			farms.each do |farm_name|
				if farms_name.to_s == response

					puts "Name?"
					name = gets.chomp

					p1 = Person.new(n)

					farm_name.people << p1
				end
			end
	
	elsif response == 'f'
		puts "Name?"
		n = gets.chomp.to_s

		#create a new farm
		f1 = Farms.new(n)

		#push the new farm into the farm array
		farms << f1
	end
	#ask again to repeat loop
	puts "Create a (f)arm, (p)erson, (a)nimal  or (q)uit?"
	response = gets.chomp	
end

#reports the final list at the end
#puts "Here is the final list of inputs:"

# farms.each do |farm_name|
# puts "Farm name: #{farm_name}"
# puts "People #{farm_name.people}"
# puts "Animals #{farm_name.animals}"
