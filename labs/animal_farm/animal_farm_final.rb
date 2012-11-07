require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

puts "(f)arm, (p)erson, (a)animal, or (q)uit?"
response = gets.chomp
farms = {} #Changed to HASH to make it easier to find arrays under each hash
#create a key for name of farm, value will be actual farm object

while response != 'q'
	case response # case is good to use when there are a few options to select
	
	when 'f'
		puts 'Name?'
		name = gets.chomp
		farm = Farms.new(name)
		farms[name] = farm #adds the new farm object into the 'farms' hash with key of name; value is object it represents

	when 'p'
		puts 'Name?'
		name = gets.chomp
		puts 'Age?'
		age = gets.chomp
		puts 'gender?'
		gender = gets.chomp
		person = Person.new(name, age, gender) # creates person & passes in name, age, gender  variables
		puts "which farm would you like: #{farms.keys.join(', ')}?"
		farm_name = gets.chomp
		
		# NEW SCHOOL method using Hashes ( farms array changes to a hash at top)
		farms[farm_name].people << person
		

		#OLD SCHOOL using ARRAY
		#farm_found = nil
		# farms.each do |farm_localv| #loops through names of farms to match what they typed with list of possible farms
		# 	if (farm.name == farm_name)
		# 		farm_found - farm_localv
		# 	end	
		# end

		#farm_found.people << person

	when 'a'
		puts 'Name?'
		name = gets.chomp
		puts 'gender?'
		gender = gets.chomp
		puts 'Species?'
		species = gets.chomp
		animal = Animal.new(name, gender, species) # creates animal & passes in name, gender, species variables

		puts "which farm would you like: #{farms.keys.join(', ')}?"
		farm_name = gets.chomp
		
		# NEW SCHOOL method using Hashes ( farms array changes to a hash at top)
		farms[farm_name].animals << animal

		# puts "which farm would you like: #{farms.map {|f| f.name}.join(', ')}?"
		# farm_name = gets.chomp
		# farm_found = nil
		
		# farms.each do |farm_localv| #loops through names of farms to match what they typed with list of possible farms
		# 	if (farm.name == farm_name)
		# 		farm_found - farm_localv
		# 	end	
		# end

		# farm_found.animals << animal
	end

puts "(f)arm, (p)erson, (a)animal, or (q)uit?"
response = gets.chomp

end



