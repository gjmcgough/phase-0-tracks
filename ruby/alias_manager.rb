# create user interface asking user for name so a new alias can be created and loop it until user types 'quit'

quit = false
until quit

puts 'What is the first name you would like an alias for?'
first_name_alias = gets.chomp

puts 'What is the last name you would like an alias for?'
last_name_alias = gets.chomp

 # Swapping the first and last name.

def name_switch(first_name, last_name)
	swap = last_name + " " + first_name

end

swapped_name = name_switch(first_name_alias, last_name_alias)

# Split name into array and advance characters forward once 

def next_letter(full_name)
	idx = 0
	while idx < full_name.length
		name = full_name.split('')
		name.map! { |letter| letter.next unless (letter.next == "!") }
		idx += 1
	end
	name
end

next_letter(swapped_name)

# Join name back together and replace necessary characters with spaces

def join_name(name)
	new_alias = name.join('')
	if new_alias.include?('!')
		new_alias.gsub!('!', ' ')
	end
	new_alias_ary = new_alias.split(' ')
end

name_alias = join_name(next_letter(swapped_name))

# use data structures to print satement saying old name is new name

names = {
	old_first_name: first_name_alias,
	old_last_name: last_name_alias,
	new_first_name: name_alias[0],
	new_last_name: name_alias[1] 
}

print names[:new_first_name].capitalize, ' ', names[:new_last_name].capitalize, ' is really ', names[:old_first_name].capitalize, ' ', names[:old_last_name].capitalize, '!', '--'

puts 'Type "done" if finished with program.'
finished = gets.chomp.downcase

if finished == 'done'
	quit = true
end
end
#p names
#p name_alias
#p name_alias[0]