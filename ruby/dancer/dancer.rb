class Dancer

	attr_reader :name
	attr_accessor :age, :card

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
		@already_danced = []
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(dancer_name_to_add)
		@card << dancer_name_to_add
	end

	def begin_next_dance
		first_in_line = @card.shift

		if @already_danced.include?(first_in_line)
			"You already danced, skip to #{@card[0]}."
		else
			@already_danced << first_in_line
			"Now dancing with #{first_in_line}."
		end
	end

	# ANDREW LIVE CODE SESH METHOD
	# def readable_card
	# 	formatted_string = "Current Card Queue\n************\n"
	# 	formatted_names = @card.join("\n")
	# 	formatted_string += formatted_names
	# 	# @card = ['Mikhail', 'Anna', 'Nati']
	# 	formatted_string
	# end
end

dancer = Dancer.new("Misty Copeland", 33)


# p dancer
# p dancer.name
# p dancer.age
# p dancer.age = 34
# p dancer.pirouette
# p dancer.bow
# p dancer.queue_dance_with("Mikhail Baryshnikov")
#  dancer.card
# p dancer.queue_dance_with("Anna Pavlova")
# dancer.card

# p dancer.queue_dance_with("Mikhail Baryshnikov")
# p dancer.queue_dance_with("Anna Pavlova")
# dancer.begin_next_dance
# dancer.card


# dancer.queue_dance_with("Mikhail Baryshnikov")
# dancer.queue_dance_with("Anna Pavlova")
# expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
# expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
# expect(dancer.card)["Anna Pavlova"]
# dancer.queue_dance_with("Mikhail Baryshnikov")
# dancer.queue_dance_with("Nati Juelle")
# expect(dancer.card)["Anna Pavlova", "Mikhail Baryshnikov", "Nati Juelle"]
# expect(dancer.begin_next_dance).to eq "Now dancing with Anna Pavlova."
# expect(dancer.begin_next_dance).to eq "You already danced, skip to Nati Juelle"

 # p dancer.queue_dance_with("Mikhail Baryshnikov")
 # p dancer.queue_dance_with("Anna Pavlova")
 # p dancer.card
 # p dancer.begin_next_dance
 # p dancer.card
 # p dancer.queue_dance_with("Mikhail Baryshnikov")
 # p dancer.queue_dance_with("Nati Juelle")
 # p dancer.card
 # p dancer.begin_next_dance
 # p dancer.begin_next_dance

# ANDREW LIVE CODE
# dancer.queue_dance_with("Mikhail Baryshnikov")
# dancer.queue_dance_with("Anna Pavlova")
# dancer.queue_dance_with("Nati Juelle")
# puts dancer.readable_card

 # In the feature I chose to add to my program, I am able to look and find out if a person has already been on the dance card and skip them to the next person if they have already danced. I accomplish this by storing the name of the person who dances in a new array that will be checked against the card array at the beginning of every dance.
 