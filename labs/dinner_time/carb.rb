class Carb < Food 
	attr_accessor :grain_type, :calories, :servings, :prep_time

	def initialize(t, c, s, p)
		@grain_type = t
		@calories = c
		@servings = s
		@prep_time = p
	end

end