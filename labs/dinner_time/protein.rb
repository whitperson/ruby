class Protein < Food 
	attr_accessor :animal_type, :calories, :servings, :prep_time

	def initialize(t, c, s, p)
		@animal_type = t
		@calories = c
		@servings = s
		@prep_time = p
	end
end