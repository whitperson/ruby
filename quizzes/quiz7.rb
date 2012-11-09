
class Play
	def walk # instance method
		puts "i am walking"	
	end

	def self.run # class method 
		puts "I am running"
	end
end	

p1 = Play.new

p1.walk #calls method on instance of class
Play.run #calls method on class name