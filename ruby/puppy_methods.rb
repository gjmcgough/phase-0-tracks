class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(times_barking)
		times_barking.times { |num| puts 'woof' }
	end

	def roll
		puts '*rolls over*'
	end

	def dog_years(human_years)
		dog_age = human_years * 7
		p dog_age
	end

	def pees(dogs_age)
		if dogs_age < 10
			puts '*peed in the house*'
		else
			puts '*potty trained and peed outside*'
		end
	end

	def initialize
		puts 'initialize new puppy instance'
	end
	
end

spot = Puppy.new

spot.fetch('ball')
spot.speak(4)
spot.roll
dogs_age = spot.dog_years(1)
spot.pees(dogs_age)

class President
	def hair_flip
		p '*flips*'
	end

	def speech(blah)
		blah.times {|num| puts 'blah' }
	end

	def initialize
	end
end

trump = President.new
hillary = President.new

loop = 0
new_ary = []
while loop < 10
	new_ary << President.new
	loop += 1
end

new_ary.each do |inst| 
	inst.hair_flip
end

new_ary.each do |inst|
	inst.speech(1)
end

#trump.hair_flip
#hillary.speech(10)
p new_ary