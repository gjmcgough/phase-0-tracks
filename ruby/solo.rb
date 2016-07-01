
class Soul_Train_Party
	
	# attribute reader
	attr_accessor :girls_at_party, :guys_at_party

	def initialize(year, artist)
		@guys_at_party= ['Reginald', 'Stevie', 'Blue', 'Stretch']
		@girls_at_party = ['Lisa', 'Cheryl', 'Jeannie', 'Candy']
		@year = year
		@artist = artist
	end

	def dance_line
		guy = @guys_at_party.sample
		girl = @girls_at_party.sample
		return "#{guy} and #{girl} are grOoOoOvinnn"
	end
	
	def afro_sheen
		return "*sprays afro-sheen in a fro in need*"
	end

	def emergency_method(emergency)
		if emergency == "roof is on fire"
			return "The roof is on fire! Call the fire department!"
		elsif emergency == "sprained ankle"
			return "Call the ambulance! #{@girls_at_party.sample} rolled her platforms and sprained her ankle!"
		else
			return "It's all good ya jive ass turkey! Keep dancin'!"
		end
	end	
	
end

fourth_of_july = Soul_Train_Party.new(1976, 'The Brothers Johnson')

# Access guys and girls outside of class to add people to the party as they show up
# Your user should be allowed to create as many instances of your class as they like [AKA THROW AS MANY PARTIES AS THEY LIKE].

parties = []
artist = ["Michael Jackson", "The O'Jays", "Whitney Houston", "EWF", "Leon Haywood"]
year_themes = [*1970.. 1980]

parties << Soul_Train_Party.new(year_themes.sample, artist.sample)





p fourth_of_july.dance_line
p fourth_of_july.afro_sheen
p fourth_of_july.emergency_method("sprained ankle")

# Modify your program so that it has a user interface (a user can interact with your program via the command line).



# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.
# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.