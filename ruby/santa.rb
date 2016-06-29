class Santa
	
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		
	end

	def speak
		puts 'Ho, ho, ho! Haaaaaapy Holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	def celebrate_birthday(age)
		@age = age
		@age = @age + 1
		p "Santa is now #{@age} years old! Happy Birthday!"
	end
	

end

santa = Santa.new('male', 'chinese')
p santa
santa.speak
santa.eat_milk_and_cookies("ginger bread")
santa.celebrate_birthday(68)

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

idx = 0
loop do
	santas << Santa.new(example_genders[idx], example_ethnicities[idx])
	if idx == example_genders.length
		break
	end
	idx += 1
end



 p santas

# Add three attribute-changing methods to your Santa class:

# celebrate_birthday should age Santa by one year.
# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.