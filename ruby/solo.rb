class Soul_Train_Party
	
	attr_accessor :girls_at_party, :guys_at_party

	def initialize(year, artist, girls_at_party, guys_at_party)
		@year = year
		@artist = artist
		@girls_at_party = girls_at_party
		@guys_at_party = guys_at_party
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

fourth_of_july = Soul_Train_Party.new(1976, 'The Brothers Johnson', ['Jane', 'Anna', 'Becca'], ['Brian', 'John', 'Steve'])

parties = []
artist = ["Michael Jackson", "The O'Jays", "Whitney Houston", "EWF", "Leon Haywood"]
year_themes = [*1970.. 1980]
girls_at_party = []
guys_at_party = []


parties << Soul_Train_Party.new(year_themes.sample, artist.sample, girls_at_party, guys_at_party)


def party_planner
	new_parties = []
	loop do
		puts "What year do you want to theme your party around?"
		year = gets.chomp
		puts "What artist music do you want at your party?"
		artist = gets.chomp
		puts "What girls are you inviting to the party?"
		girls = gets.split(' ')
		puts "What guys are you invinting to the party?"
		guys = gets.split(' ')
		new_parties << Soul_Train_Party.new(year, artist, girls, guys)
		puts "If you are done planning parties type 'done' otherwise press enter to continue."
		response = gets.chomp
		if response == 'done'
			return new_parties
		end
	end
end

puts "Do you want to plan a party? (y/n)"
answer = gets.chomp
if answer == "y"
	list_of_parties = party_planner
else
	puts "OK fine. You're boring."
end

p fourth_of_july.dance_line
p fourth_of_july.afro_sheen
p fourth_of_july.emergency_method("sprained ankle")

def new_parties_attributes_finder(list_of_parties)
	idx = 0
	while idx < list_of_parties.length
		p "A new party was created with these attributes: #{list_of_parties[idx].inspect}"
		idx += 1
	end
end

new_parties_attributes_finder(list_of_parties)