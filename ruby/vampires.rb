puts "how many people to survey?"
amount = gets.to_i

while amount > 0
	amount -= 1

	puts "what is ur name?"
	name = gets.chomp
	
	puts "how old are you?" 
	age = gets.to_i
	
	puts "what year were you born?"
	actual_age = 2016 - gets.to_i
	
	puts "Quieres garlic bread? (y/n)"
	garlic = gets.chomp
	if garlic == "y"
		garlic = true
	elsif garlic == "n"
		garlic = false
	else
		puts "i dont understand"
	end
	
	
	puts "do u want health insurance? (y/n)"
	health = gets.chomp
	if health == "y"
		health = true
	elsif health == "n"
		health = false
	else
		puts "i dont understand"
	end
	
	vamp = false

	until vamp

		puts "list ur allergies one by one, type 'done' when done"
		allergy = gets.chomp
		
		if allergy == "sunshine"
			vamp = true
		elsif allergy == "done"
			vamp = true
		end
	end
	
	if name == "Drake Cula"
		puts "Definitely a Vampire"
	elsif name == "Tu Fang"
		puts "def a vamp"
	elsif allergy == "sunshine"
		puts "prob a vamp"
	elsif (age == actual_age) && (garlic || health)
		puts "probably not a vampire"
	elsif (age != actual_age) && (garlic || health) 
		puts "probably a vampire"
	elsif (age != actual_age) && (!garlic && !health)
		puts "almost certainly a vampire"
	else
		puts "results inconclusive"
	end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."