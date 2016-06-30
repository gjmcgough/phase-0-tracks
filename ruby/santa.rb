class Santa
	attr_reader :age, :ethnicity
	attr_accessor :change_gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		return 'Ho, ho, ho! Haaaaaapy Holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		return "That was a good #{cookie_type} cookie!"
	end
	
	def celebrate_birthday(age)
		@age = age
		@age = @age + 1
		"Santa is now #{@age} years old! Happy Birthday!"
	end
	
	def get_mad_at(reindeer_name)
		reindeer_name = reindeer_name.capitalize
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		last_place = @reindeer_ranking.length - 1
		@reindeer_ranking.include?(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(last_place, reindeer_name)
	end
	
	def change_gender=(new_gender)
		@gender = new_gender
	end
	
	def age
		@age
	end
	
	def ethnicity
		@ethnicity
	end
end



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

loop = 0
while loop < 50
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	loop += 1
end

santas_new_age = 1 + rand(140)
santas_new_age = "Santa is really #{santas_new_age} years old!!!"
p santas_new_age

old_saint_nick = Santa.new('male', 'chinese')
p old_saint_nick.speak
p old_saint_nick.eat_milk_and_cookies("ginger bread")
p old_saint_nick.celebrate_birthday(74)
p old_saint_nick.get_mad_at('dancer')
p old_saint_nick.age
p "Santa is #{old_saint_nick.ethnicity}"
p old_saint_nick.change_gender=('eskimo')
p santas_new_age
p santas